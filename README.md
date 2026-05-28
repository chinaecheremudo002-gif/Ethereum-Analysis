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





