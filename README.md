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

This analysis focuses on understanding how active the Ethereum network has been over the most recent 30-day period. The Ethereum blockchain processes thousands of transactions every day, and this activity directly affects how fast transactions are confirmed and how expensive it is to use the network.

The study examines three key aspects of network behavior:

First, it measures the total number of transactions each day to understand how busy the network is over time. A higher number of transactions indicates increased network usage and potential congestion.

Second, it calculates the total amount of Ethereum transferred daily. This helps in understanding the flow of value within the network and highlights days with unusually high financial activity, often influenced by large wallet movements.

Finally, it analyzes the average gas price for each day, which reflects how expensive it is to process transactions on the network. Higher gas prices usually indicate network congestion, where users compete to have their transactions processed faster.

Overall, this analysis provides a clear view of Ethereum network activity, transaction demand, and cost fluctuations over time, helping to identify periods of congestion and high usage.

## Insight: Ethereum Network Activity (Last 9 Days)

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

This analysis focuses on categorizing active Ethereum wallet addresses based on the total volume of ETH they control or transact. The goal is to understand how different levels of wallet size influence network activity and market behavior.

Wallets are grouped into three tiers: Whale wallets with very large holdings (1,000 ETH and above), Shark wallets with medium-level holdings (100–999 ETH), and Fish wallets with smaller holdings (below 100 ETH). This classification helps distinguish major market participants from regular users.

By segmenting wallets into these tiers, the analysis aims to identify the role of high-value wallets in transaction volume, detect patterns of large-scale movements, and understand how different user groups contribute to overall network activity.

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

# Rolling Cost Forecast (7-Day Moving Average of Gas Prices)

## Summary

This analysis applies a 7-day moving average to Ethereum gas prices in order to smooth out daily fluctuations and reveal the overall trend in transaction costs. Because gas fees on the Ethereum network can change rapidly due to congestion and varying demand, daily values alone can be unstable and difficult to interpret.

By averaging gas prices over a 7-day window, the analysis highlights more stable cost patterns and helps identify periods where transaction fees are consistently lower. These periods are considered cost-efficient windows, where users can execute transactions at relatively cheaper rates.

Overall, this approach provides a clearer understanding of network cost behavior by filtering out short-term volatility and focusing on sustained trends in gas fees.






