## Config Tests on v0.80.1_003 .set
This version compared to _002 changes only the low RSI Period from 21 to 22 as follows below.

![image](https://user-images.githubusercontent.com/118682909/224488639-9cf72190-adb2-4c14-be71-fd198ce6381d.png)

## Description
- Loop of the same config *.set throught several timeframes (M1,M5,M10,M15,M20,M30,H1,H2,H4,H6,H8,H12,D).
- Time Range: from 01.02.2023 to 09.03.2023 Time Range.
- Instruments tested (24) EURUSD,EURGBP,EURCAD,EURAUD,EURCHF,EURNZD,USDJPY,USDCAD,CADCHF,CADJPY,GBPNZD,GBPUSD,GBPCHF,GBPAUD,GBPCAD,GBPJPY,AUDCAD,AUDNZD,AUDCHF,AUDJPY,NZDUSD,NZDCAD,NZDCHF,NZDJPY
- The account is a demo ftmo swing on 1:30 leverage with 200,000.00 USD linked to MetaTrader 5

## Structure
![image](https://user-images.githubusercontent.com/118682909/224457665-196558b7-c975-40b4-bd8e-03f2a75f6a3a.png)

## Testing Instructions
- create a new set config file 
- PR it to master to root of ea version
- name it based on the below convention which v0.80.1 represents the ea version 
- _m1 timeframe ran on
- _003 the set config version
- run all same set config  cross the above loop (M1,M5,M10,M15,M20,M30,H1,H2,H4,H6,H8,H12,D) in which on each extrace prnt  screen of Graph and BackTest and add it to the readme.md file
- save the xls file from backtest report generated on same convention name as the test (eg: v0.80.1_m1_003.xls)

## Condition to be Profitable Confguration
- Total Net Profit: +0
- Equity Drawdown Maximal: < 5% total Equity (200k total = 10k max dd)
### Optional
- Has mininal loss trades
- reduced drawdown: <= 2.5%
- fast open and close of trades: -5 minutes

## v0.80.1_m1_003
### Graph


### BackTest


## v0.80.1_m2_003
### Graph


### BackTest


## v0.80.1_m3_003
### Graph


### BackTest


## v0.80.1_m4_003
### Graph


### BackTest


## v0.80.1_m5_003
### Graph


### BackTest


## v0.80.1_m6_003
### Graph


### BackTest


## v0.80.1_m10_003
### Graph


### BackTest


## v0.80.1_m12_003
### Graph


### BackTest


## v0.80.1_m15_003
### Graph


### BackTest


## v0.80.1_m20_003
### Graph


### BackTest


## v0.80.1_m30_003
### Graph


### BackTest


## v0.80.1_h1_003
### Graph


### BackTest


## v0.80.1_h2_003
### Graph


### BackTest


## v0.80.1_h3_003
### Graph


### BackTest


## v0.80.1_h4_003
### Graph


### BackTest


## v0.80.1_h6_003
### Graph


### BackTest


## v0.80.1_h8_003
### Graph


### BackTest


## v0.80.1_h12_003
### Graph


### BackTest


## v0.80.1_d_003
### Graph


### BackTest


