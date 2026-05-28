-- Ethereum Transaction Analysis: Last 30 Days Summary
-- Calculates daily totals for transactions, ETH value, and gas prices
WITH
  CTE_MAX_DATES AS (
    SELECT block_timestamp AS TIMESTAMP, value, gas_price
    FROM bigquery-public-data.crypto_ethereum.transactions
    WHERE block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)
    ORDER BY block_timestamp DESC
  )
SELECT
  DATE(TIMESTAMP) AS DATE,
  COUNT(*) AS Total_transaction,
  ROUND(SUM(value) / 1e18, 2) AS Total_value,
  ROUND(AVG(gas_price) / 1e2) AS Avg_gas_price_wie
FROM CTE_MAX_DATES
GROUP BY DATE
ORDER BY DATE DESC
LIMIT 1000;

-- Wallet Segmentation (Whales, Sharks, Fish)
-- Categorizes addresses by total ETH value transferred in the last 30 days
WITH
  CTE_VOLUME AS (
    SELECT from_address, ROUND(SUM(value) / 1e18, 2) AS Total_value
    FROM bigquery-public-data.crypto_ethereum.transactions
    WHERE block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)
    GROUP BY from_address
  )
SELECT
  *,
  CASE
    WHEN Total_value >= 1000 THEN 'Whales'
    WHEN Total_value >= 100 AND Total_value <= 999 THEN 'Shark'
    WHEN Total_value < 100 THEN 'Fish'
    ELSE "NO BOUND"
    END
    AS Wallet_Tier
FROM CTE_VOLUME;

-- Top 5 Highest Value Transactions per Day
-- Uses a window function to rank transactions within each day of the last month
WITH
  CTE_FILTER_DATE AS (
    SELECT
      DATE(block_timestamp) AS Date,
      ROUND(value / 1e18, 2) AS Value_ETH,
      ROW_NUMBER()
        OVER (PARTITION BY DATE(block_timestamp) ORDER BY value DESC)
        AS DATE_PARTITION
    FROM bigquery-public-data.crypto_ethereum.transactions
    WHERE block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)
  )
SELECT * FROM CTE_FILTER_DATE WHERE DATE_PARTITION <= 5 ORDER BY DATE;

-- 7-Day Moving Average of Gas Prices
-- Analyzes gas price trends using a rolling average over recent transactions
WITH
  CTE_FILTER_GAS_DATE AS (
    SELECT
      DATE(block_timestamp) AS Date, ROUND(gas_price / 1e18, 2) AS GAS_PRICE
    FROM bigquery-public-data.crypto_ethereum.transactions
    WHERE
      block_timestamp >= TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 30 DAY)
      AND GAS_PRICE <> 0
    ORDER BY Date ASC
    LIMIT 100
  )
SELECT
  *, AVG(GAS_PRICE) OVER (ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) MOVING_AVG
FROM CTE_FILTER_GAS_DATE

