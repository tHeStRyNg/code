## Config Tests on v0.80.1__XXX .set
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
- __XXX the set config version
- run all same set config  cross the above loop (M1,M5,M10,M15,M20,M30,H1,H2,H4,H6,H8,H12,D) in which on each extrace prnt  screen of Graph and BackTest and add it to the readme.md file
- save the xls file from backtest report generated on same convention name as the test (eg: v0.80.1_m1__XXX.xls)

## Condition to be Profitable Confguration
- Total Net Profit: +0
- Equity Drawdown Maximal: < 5% total Equity (200k total = 10k max dd)
### Optional
- Has mininal loss trades
- reduced drawdown: <= 2.5%
- fast open and close of trades: -5 minutes

## v0.80.1_m1__XXX
### Graph


### BackTest


## v0.80.1_m2__XXX
### Graph


### BackTest


## v0.80.1_m3__XXX
### Graph


### BackTest


## v0.80.1_m4__XXX
### Graph


### BackTest


## v0.80.1_m5__XXX
### Graph


### BackTest


## v0.80.1_m6__XXX
### Graph


### BackTest


## v0.80.1_m10__XXX
### Graph


### BackTest


## v0.80.1_m12__XXX
### Graph


### BackTest


## v0.80.1_m15__XXX
### Graph


### BackTest


## v0.80.1_m20__XXX
### Graph


### BackTest


## v0.80.1_m30__XXX
### Graph


### BackTest


## v0.80.1_h1__XXX
### Graph


### BackTest


## v0.80.1_h2__XXX
### Graph


### BackTest


## v0.80.1_h3__XXX
### Graph


### BackTest


## v0.80.1_h4__XXX
### Graph


### BackTest


## v0.80.1_h6__XXX
### Graph


### BackTest


## v0.80.1_h8__XXX
### Graph


### BackTest


## v0.80.1_h12__XXX
### Graph


### BackTest


## v0.80.1_d__XXX
### Graph


### BackTest


