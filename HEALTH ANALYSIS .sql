-- Analyzes hospital markup by comparing total charges to actual payments received.
-- Higher percentages highlight hospitals charging significantly above their reimbursement rates.
WITH
  CTE_GROUP_HOSPITAL AS (
    SELECT
      provider_name,
      ROUND(SUM(average_covered_charges), 2) AS AVG_COVERAGE_CHARGES,
      ROUND(SUM(average_total_payments), 2) AS AVG_TOTAL_PAYMENT
    FROM `bigquery-public-data.medicare.inpatient_charges_2014`
    GROUP BY provider_name
    LIMIT 1000
  )
SELECT
  *,
  CAST(ROUND(((AVG_COVERAGE_CHARGES) / (AVG_TOTAL_PAYMENT)), 2) AS STRING)
    || "%"
    AS MARK_UP_PERCENTAGE
FROM CTE_GROUP_HOSPITAL
ORDER BY MARK_UP_PERCENTAGE DESC;

-- Identifies the top 5 procedures and ranks states by average payment to find cost variances.
-- Useful for finding the most and least expensive geographic regions for standard services.
WITH
  top_procedures AS (
    SELECT drg_definition, COUNT(*) AS procedure_count
    FROM `bigquery-public-data.medicare.inpatient_charges_2014`
    GROUP BY drg_definition
    ORDER BY procedure_count DESC
    LIMIT 5
  ),
  state_stats AS (
    SELECT
      provider_state,
      drg_definition,
      COUNT(*) AS count_procedure,
      AVG(average_total_payments) AS avg_payment
    FROM `bigquery-public-data.medicare.inpatient_charges_2014`
    WHERE drg_definition IN (SELECT drg_definition FROM top_procedures)
    GROUP BY provider_state, drg_definition
  ),
  ranked_states AS (
    SELECT
      provider_state,
      drg_definition,
      count_procedure,
      avg_payment,
      DENSE_RANK()
        OVER (PARTITION BY drg_definition ORDER BY avg_payment DESC)
        AS high_cost_rank,
      DENSE_RANK()
        OVER (PARTITION BY drg_definition ORDER BY avg_payment ASC)
        AS low_cost_rank
    FROM state_stats
  )
SELECT *
FROM ranked_states
WHERE high_cost_rank <= 3 OR low_cost_rank <= 3
ORDER BY drg_definition, avg_payment DESC;

-- Detects hospital billing outliers using a standard statistical threshold (Mean + 2 SD).
-- Isolates providers whose charges are significantly higher than the national average.
WITH
  stats AS (
    SELECT
      provider_name,
      provider_state,
      average_total_payments,
      AVG(average_total_payments) OVER () AS national_avg,
      STDDEV_SAMP(average_total_payments) OVER () AS national_stddev
    FROM `bigquery-public-data.medicare.inpatient_charges_2014`
  ),
  filtered AS (
    SELECT *
    FROM stats
    WHERE average_total_payments > national_avg + 2 * national_stddev
  ),
  ranked AS (
    SELECT *, ROW_NUMBER() OVER (ORDER BY average_total_payments DESC) AS rn
    FROM filtered
  )
SELECT * FROM ranked WHERE rn <= 5 ORDER BY average_total_payments;

-- Correlates inpatient hospital costs with Part D prescription drug spending by state.
-- Highlights high-cost healthcare regions by combining two different Medicare datasets.
WITH
  inpatient_state AS (
    SELECT
      provider_state, SUM(average_covered_charges) AS total_hospital_charges
    FROM `bigquery-public-data.medicare.inpatient_charges_2014`
    GROUP BY provider_state
  ),
  partd_state AS (
    SELECT
      nppes_provider_state AS provider_state,
      SUM(total_drug_cost) AS total_drug_cost
    FROM `bigquery-public-data.medicare.part_d_prescriber_2014`
    GROUP BY nppes_provider_state
  )
SELECT
  i.provider_state,
  i.total_hospital_charges,
  p.total_drug_cost,
  (i.total_hospital_charges + p.total_drug_cost) AS total_healthcare_spend
FROM inpatient_state i
INNER JOIN partd_state p
  ON i.provider_state = p.provider_state
ORDER BY total_healthcare_spend DESC;

