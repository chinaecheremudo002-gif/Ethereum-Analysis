# Ethereum Blockchain Network Congestion & High-Value Wallet Dynamics

## Introduction

The Ethereum blockchain is one of the most widely used digital transaction networks in the world. Every day, thousands of users use the network to send cryptocurrency, trade digital assets, interact with decentralized applications, and perform financial transactions. As the number of users and transactions increases, the network can become congested, leading to slower transaction processing times and higher transaction fees.

Understanding how transaction activity changes over time is important because network congestion directly affects users, investors, and businesses operating on the blockchain. During periods of heavy activity, transaction fees may rise significantly, making the network more expensive and less efficient for everyday users.

Another important factor in blockchain activity is the behavior of high-value wallets, often called whale wallets. These wallets hold and transfer large amounts of Ethereum and can heavily influence transaction volume and market activity. Monitoring the movement and transaction patterns of these large wallets helps provide insight into how major participants affect the blockchain ecosystem.

This project focuses on analyzing Ethereum transaction trends, wallet activity, gas fee behavior, and large-value transfers using SQL. The analysis aims to identify transaction patterns, categorize wallet activity based on transaction volume, examine major daily transfers, and observe gas fee trends over time. The findings from this analysis can provide a better understanding of network usage, transaction costs, and the influence of large-scale wallet activity on the Ethereum blockchain.

## Problem Statement

The Ethereum blockchain processes thousands of transactions daily, making it one of the most active blockchain networks in the world. However, as network usage increases, issues such as network congestion, high gas fees, and transaction delays become more common. These challenges can negatively affect users, traders, and businesses relying on the Ethereum network for fast and cost-effective transactions.

In addition, large transaction activities from high-value wallets, commonly known as whale wallets, may significantly influence network traffic and transaction costs. Sudden increases in transaction volume or large-value transfers can contribute to spikes in gas fees and increased congestion across the network.

Despite the availability of blockchain transaction data, there is still a need to better understand how transaction activity, wallet behavior, and gas fee trends change over time. Identifying patterns in network congestion and large wallet activity can help provide insights into blockchain efficiency, transaction cost behavior, and major market movements.

This project aims to analyze Ethereum transaction data using SQL to examine daily transaction trends, gas price behavior, wallet volume categories, and high-value transfer activities. The analysis seeks to provide a clearer understanding of how transaction patterns and large wallet activities affect the Ethereum blockchain network.

##Ethereum Transaction Dataset Summary

## Overview

This project focuses on the Ethereum transaction dataset available on Google BigQuery. The dataset contains detailed records of all transactions executed on the Ethereum blockchain. Each row represents a single transaction between two wallet addresses, capturing both the value transferred and the computational cost of processing the transaction.

The dataset provides a rich source of information for analyzing blockchain activity, network congestion, transaction costs, and wallet behavior over time.

## Key Features (Columns)

The transaction dataset typically includes:

- **Transaction Hash**: Unique identifier for each transaction  
- **From Address**: Sender wallet address  
- **To Address**: Receiver wallet address  
- **Value**: Amount of ETH transferred (in Wei, requiring conversion to ETH)  
- **Gas Price**: Cost per unit of gas at the time of transaction  
- **Gas Used**: Total gas consumed by the transaction  
- **Block Number**: The block in which the transaction was recorded  
- **Block Timestamp**: Time when the transaction was confirmed  

## Data Characteristics

- Large-scale dataset containing millions of transactions  
- Time-series structure based on block timestamps  
- Highly dynamic due to continuous blockchain activity  
- Contains both high-frequency small transactions and low-frequency large transfers  

## Importance of the Dataset

The Ethereum transaction dataset is essential for understanding real-world blockchain behavior. It allows analysis of:

- Network congestion patterns  
- Transaction cost (gas fee) fluctuations  
- High-value wallet (whale) activity  
- Daily and hourly transaction trends  
- Overall blockchain network efficiency  

## Project Relevance

In this project, the dataset is used to explore how transaction volume and high-value transfers impact network congestion and gas fees. It also helps identify patterns in wallet activity and provides insights into Ethereum’s operational behavior over time.

# Network Congestion & Fee Trends (Last 30 Days)

## Summary

This analysis examines Ethereum network activity over the last 30 days by tracking daily transaction volume, the total amount of ETH transferred, and average gas prices. It highlights trends in network usage, value movement, and transaction costs. Overall, the study helps identify periods of high demand, congestion, and increased network activity.
<img width="632" height="241" alt="image" src="https://github.com/user-attachments/assets/bf07488d-9fcf-49f7-b098-c652acd54e10" />

## Insight: Ethereum Network Activity

## Insight Summary

The data reveals consistently high Ethereum network activity, with daily transactions ranging from approximately **1.93M to 2.67M**, indicating sustained demand for blockchain usage over the observed period.

## Key Findings

- **Transaction Volume:** Activity remains stable at a high level, suggesting continuous network utilization without significant downtime or inactivity periods.

- **Value Transferred:** Total ETH transferred shows noticeable daily fluctuations, ranging from about **647K to 1.52M ETH**, indicating uneven capital movement likely driven by varying market activity and large wallet transactions.

- **Gas Prices:** Average gas prices exhibit strong volatility, peaking above **9M** and dropping to around **4.4M**, reflecting frequent shifts in network congestion and competition for block space.

## Conclusion

Overall, the Ethereum network demonstrates a pattern of **high but unstable activity**, where transaction demand remains consistently strong while value transfer and gas costs fluctuate significantly. This indicates periodic congestion events likely driven by market-driven spikes and high-value wallet activity.


# Whale Wallet Tier Segmentation (Ethereum Address Classification)

## Summary
This analysis groups Ethereum wallets into whales, sharks, and fish based on their ETH holdings to study different user behaviors. It examines how each tier contributes to transaction volume and network activity. The goal is to identify patterns in large holders’ influence and overall market behavior.

<img width="489" height="216" alt="image" src="https://github.com/user-attachments/assets/307ca3b5-da9c-4726-b3a3-eaae108a9df9" />


## Insight

This analysis looks at how Ethereum wallet users are grouped based on how much ETH they hold or move within a 30-day period. The goal is to understand the difference between small users and very large investors in the network.

Most of the wallets in the dataset fall under the “Fish” category, meaning they hold or transact small amounts of ETH. This shows that the Ethereum network is mainly used by many small-scale users on a daily basis.

However, there is one “Whale” wallet with a very large amount of ETH compared to all other wallets. This indicates that a very small number of users control extremely large value within the network.

Interestingly, there are no “Shark” wallets (medium-level holders) in this 30-day sample. This suggests that the activity is not evenly distributed, but instead split between many small users and a few extremely large holders.

Overall, the analysis shows that Ethereum activity in this period is highly unbalanced, with most participation coming from small wallets and a single dominant large wallet influencing the value distribution.

# Daily Top-Value Transfers (Weekly Analysis)

## insight

This analysis focuses on identifying the largest Ethereum transactions for each day within a selected week. The goal is to understand the most significant value movements happening on the blockchain on a daily basis.

By isolating the top 5 highest-value transactions per day, we can highlight periods where large amounts of Ethereum are being transferred. These high-value transactions are often linked to whale wallet activity, institutional movements, or major trading events.

This approach helps reveal how concentrated value transfers are within the network and shows whether a small number of transactions dominate daily activity. It also provides insight into unusual spikes in financial movement, which may contribute to network congestion and higher transaction fees.

Overall, this analysis helps identify the most impactful transactions each day and provides a clearer picture of how large-scale value movements influence Ethereum network behavior.

<img width="589" height="371" alt="image" src="https://github.com/user-attachments/assets/3ae75237-eb6e-4573-add0-f280a6bce063" />


# Rolling Cost Forecast (7-Day Moving Average of Gas Prices)

## Summary
This analysis uses a 7-day moving average to smooth Ethereum gas price fluctuations and reveal overall cost trends. It helps identify periods of consistently lower fees, indicating cost-efficient transaction windows. Overall, the approach provides a clearer view of network cost behavior.
<img width="601" height="337" alt="image" src="https://github.com/user-attachments/assets/5b35d522-7a76-41b9-b00a-e0cc37bcdf0d" />


## Ethereum Gas Price Trend Analysis

### Objective
The objective of this analysis is to identify cost-efficient transaction periods on the Ethereum network using a 7-day moving average of gas prices.

---

## Key Insight

Daily Ethereum gas prices showed significant volatility, with sharp increases and decreases across different dates. To reduce noise and reveal the underlying trend, a 7-day moving average was applied.

The moving average indicates that gas prices generally declined from mid-May onward.

- On **2026-05-12**, the 7-day moving average was approximately **1.62 billion**
- By **2026-05-24**, it had dropped to approximately **688 million**
- On **2026-05-28**, it further stabilized around **642 million**

This downward trend suggests:

- Reduced Ethereum network congestion
- Lower transaction costs
- More cost-efficient periods for users to execute transactions

---

## Business Interpretation

Lower moving average values indicate periods where users can perform blockchain transactions at reduced costs. Based on the analysis, the period between:

### 2026-05-22 to 2026-05-28

appears to be the most cost-efficient transaction window within the observed dataset.

---

## Analytical Importance

The 7-day moving average helps to:

- Smooth short-term fluctuations
- Reduce the impact of daily volatility
- Reveal long-term gas price trends
- Support forecasting and transaction planning

This technique is widely used in:

- Cryptocurrency analytics
- Financial time-series analysis
- Forecasting systems
- Market trend analysis

## RECOMMENDATIONS 

## 1. Watch gas fees before making transactions

1. Watch Gas Fees Before Sending Transactions

Gas fees change every day on the Ethereum network.

If you send transactions when gas fees are high,
you will spend more money.

Recommendation:
Always check gas prices or moving average trends
before making transactions so you can choose cheaper days.


## 2. Avoid sending transactions during network congestion

2. Avoid Busy Network Periods

When many people are using the Ethereum network,
the system becomes congested and fees increase.

Recommendation:
If your transaction is not urgent, wait for less busy periods
to save money on gas fees.


## 3. Pay attention to whale (big wallet) activity

3. Monitor Large Wallet Movements (Whales)

Very large Ethereum wallets can move huge amounts of ETH.

These movements can increase network activity and sometimes
push gas fees higher.

Recommendation:
Tracking whale activity can help predict possible spikes
in network congestion and transaction costs.


## 4. Use prediction or forecasting for better planning

4. Use Prediction Models for Gas Fees

Gas fees are not stable — they go up and down daily.

Recommendation:
Build or use simple forecasting models (like moving average or ML)
to predict when gas fees might be low or high.

This helps you plan transactions at the cheapest time.


## FINAL SUMMARY


Ethereum network is very active and unstable in terms of fees.

Best strategy:
- Monitor gas trends
- Avoid peak congestion
- Watch whale activity
- Use forecasting tools

This helps reduce transaction costs and improve decision-making.


<img width="931" height="705" alt="image" src="https://github.com/user-attachments/assets/6c565458-04b9-4839-918b-ea273d88e453" />






# PROJECT 2: HEALTHCARE & MEDICAL OPERATIONS ANALYTIC


## INTRODUCTION

INTRODUCTION

Healthcare costs are one of the most important and heavily analyzed areas in medical economics
and insurance systems.

Different hospitals and providers often charge different prices for the same medical services,
which creates inconsistencies in healthcare spending.

Insurance providers like Medicare also reimburse at different rates depending on location,
provider type, and service category.

This project focuses on analyzing Medicare cost variance, hospital pricing behavior,
and identifying unusual prescribing patterns across providers.

The goal is to understand how healthcare pricing varies and to detect inefficiencies,
outliers, and potential areas of overcharging or abnormal prescribing behavior.



# PROBLEM STATEMENT

PROBLEM STATEMENT

Healthcare data often shows significant variation in pricing for similar medical procedures.

Hospitals may apply different markup rates compared to insurance reimbursement values,
leading to unexplained cost differences.

In addition, some healthcare providers may prescribe medications at unusually high rates
compared to their peers, which may indicate inefficiencies or potential abuse.

However, without structured data analysis, these pricing differences and prescribing patterns
are difficult to detect.

This project aims to analyze Medicare cost data to identify:
- Cost variance across providers
- Hospital markup patterns
- Outlier prescribing behavior

The objective is to improve transparency, reduce waste, and support better healthcare decision-making.

## Hospital Cost Markup Analysis

The objective of this analysis is to calculate the markup ratio for hospitals and identify those with the highest difference between billed charges and actual payments. The markup ratio compares how much hospitals charge versus what is actually paid, helping to reveal pricing inefficiencies and unusual billing patterns. This analysis is useful for identifying overpriced hospitals, detecting potential fraud, waste, and abuse, and ranking hospitals based on the severity of their pricing gaps.

## Hospital Cost Markup Insight

The dataset shows a ranked list of hospitals based on markup ratios, and the values are tightly clustered within a narrow range of about 7.9% to 10%. This suggests that hospital pricing behavior is relatively consistent across institutions rather than highly scattered or extreme. A small group of hospitals at the top, such as Oak Hill Hospital and Doctors Medical Center, show slightly higher markup ratios, but the difference between the highest and lowest values is not large enough to indicate severe pricing anomalies.

Overall, the pattern suggests a systemic pricing structure rather than isolated outliers. This means hospitals may be operating under similar insurance reimbursement frameworks or negotiated payment standards, which keeps markup differences relatively stable. However, even small variations are still important in large-scale healthcare spending because minor percentage differences can translate into millions of dollars in total cost impact.

From a data perspective, the absence of extreme outliers implies lower immediate fraud risk based purely on markup ratio alone. However, deeper analysis combining procedure types, patient volume, and state-level differences would be needed to detect hidden inefficiencies or strategic overbilling patterns.

## Geographic Price Variance Analysis

The objective of this analysis is to compute the **average payment for the top 5 procedures across different US states** and use this to rank states based on overall healthcare cost levels. This helps identify how medical pricing varies geographically and highlights which states are the most expensive for healthcare services.

The analysis shows that procedure costs are not uniform across the country, with significant variation driven by factors such as regional healthcare demand, hospital pricing strategies, insurance negotiation strength, and cost of living differences. States with higher rankings typically reflect higher average payments across multiple procedures, indicating more expensive healthcare systems overall, while lower-ranked states tend to have more cost-efficient pricing structures.

By comparing states using the same set of high-volume procedures, this analysis provides a standardized way to evaluate healthcare affordability and detect regional pricing disparities in the US healthcare system.

## Geographic Price Variance Analysis (US Healthcare)

## Summary  
This analysis examines how hospital costs vary across US states for the top 5 most frequently occurring medical procedures (DRGs). First, the most common procedures are identified by counting occurrences across the national dataset. Then, for each of these procedures, the data is filtered to compute the number of cases and the average hospital payment per state. Finally, states are ranked for each procedure using DENSE_RANK based on average payment, where Rank 1 represents the most expensive state and higher ranks represent lower-cost states.

## Insights  
The results show strong geographic variation in healthcare pricing across the United States, even for the same medical procedures. States such as Alaska, Hawaii, and Washington DC consistently appear among the most expensive, while states like Tennessee, Alabama, and Arkansas tend to have significantly lower average costs. This pattern is consistent across all five procedures, indicating that healthcare pricing is driven more by geographic location and regional healthcare structure than by medical complexity. Overall, the findings highlight clear inefficiencies and lack of pricing standardization within the US healthcare system.

## Statistical Outlier Detection (US Hospital Charges)

## Summary  
This analysis identifies hospitals that charge significantly higher than the national average by applying a statistical outlier detection method. First, the national average hospital payment is computed, along with the standard deviation to measure how much prices vary across providers. Using these values, a threshold is defined as the national average plus two times the standard deviation. Each hospital’s average total payment is then compared against this threshold, and only those exceeding it are flagged as outliers. A ranking (ROW_NUMBER) is also used to identify the most extreme cases among these high-cost providers.

## Insights  
The results show that a small group of hospitals, including Stanford Hospital, UCSF Medical Center, and UCLA Medical Center, charge extremely high amounts compared to the national average. These values are far above the statistical threshold for normal variation, confirming them as true high-cost outliers. This suggests the presence of specialized or premium healthcare institutions that significantly distort the upper range of hospital pricing. Overall, the analysis highlights strong inequality in hospital charges, where a small number of providers operate at exceptionally high cost levels compared to the national healthcare baseline.

## Cross-Domain Healthcare Cost Analysis (US States)

## Summary  
This analysis combines two major healthcare datasets: inpatient hospital charges and Part D prescription drug spending at the US state level. First, total hospital charges per state are calculated from inpatient data. Next, total prescription drug costs per state are calculated from the prescriber dataset. These two aggregated datasets are then joined using the state as the common key. Finally, total healthcare spending per state is computed by summing hospital charges and drug costs, allowing comparison of overall healthcare cost distribution across all US states.

## Insights  
The results show a clear imbalance in healthcare spending across US states, with large states like California, New York, Florida, and Texas dominating total healthcare expenditure due to both high hospital usage and high prescription drug costs. Interestingly, drug spending contributes a significantly larger share of total healthcare cost compared to hospital inpatient charges in almost all states, suggesting that pharmaceutical costs are a major driver of overall healthcare expenditure. Smaller states such as Alaska, Vermont, and Wyoming show much lower total spending, mainly due to smaller populations and lower healthcare utilization. Overall, the analysis highlights that healthcare cost variation across states is strongly driven by population size and prescription drug expenditure rather than hospital charges alone.

## Recommendations  

1. States should prioritize controlling prescription drug costs, as drug expenditure contributes a larger share of total healthcare spending than inpatient hospital charges in most cases. Policy interventions such as price regulation, bulk purchasing, or stronger negotiation with pharmaceutical companies could significantly reduce overall healthcare burden.

2. Hospitals and healthcare systems should investigate the drivers of high inpatient costs in large states like California, New York, and Florida. Standardizing treatment pricing and improving operational efficiency could help reduce excessive cost variation across providers.

3. Policymakers should consider implementing more transparent pricing systems across states to reduce the wide disparity in healthcare spending. This could help ensure that patients receive more consistent and predictable healthcare costs regardless of location.

4. States with lower spending levels should be studied to identify cost-efficient healthcare practices that could be scaled or adapted to higher-cost regions without reducing quality of care.



