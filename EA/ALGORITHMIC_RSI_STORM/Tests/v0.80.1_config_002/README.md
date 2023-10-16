## Config Tests on v0.80.1_002 .set
This version compared to _001 changes only the low RSI Period from 14 to 21 as follows below and suggested by Hermann.

![image](https://user-images.githubusercontent.com/118682909/224477694-c843fdbc-7d3f-4d93-99a0-08f66e0c2a6a.png)

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
- _002 the set config version
- run all same set config  cross the above loop (M1,M5,M10,M15,M20,M30,H1,H2,H4,H6,H8,H12,D) in which on each extrace prnt  screen of Graph and BackTest and add it to the readme.md file
- save the xls file from backtest report generated on same convention name as the test (eg: v0.80.1_m1_002.xls)

## Condition to be Profitable Confguration
- Total Net Profit: +0
- Equity Drawdown Maximal: < 5% total Equity (200k total = 10k max dd)
### Optional
- Has mininal loss trades
- reduced drawdown: <= 2.5%
- fast open and close of trades: -5 minutes

## v0.80.1_m1_002
### Graph
![image](https://user-images.githubusercontent.com/118682909/224478168-02ffad70-1289-4b19-bdfc-90b95cc05eab.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224478192-e3f36c2d-b0cd-4797-96a6-7dc357df9295.png)

## v0.80.1_m2_002
### Graph
![image](https://user-images.githubusercontent.com/118682909/224478701-65530200-8d72-4e97-bac2-83c5e7328156.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224478719-26486d3b-8ea4-439c-b0c0-e86fe4fc5c61.png)

## v0.80.1_m3_002
### Graph
![image](https://user-images.githubusercontent.com/118682909/224479089-f5ebd30f-4f6e-4c49-9b44-1e3d2cf88196.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224479300-ee05e2dd-a067-4b2c-ad99-ea82831dd070.png)

## v0.80.1_m4_002
### Graph
![image](https://user-images.githubusercontent.com/118682909/224479709-53091ae5-5137-494a-9c58-0ddb24d05c9f.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224479714-bddc18a5-20ed-43d4-8b6a-392910bb5e77.png)

## v0.80.1_m5_002
### Graph
![image](https://user-images.githubusercontent.com/118682909/224480076-08d7a0ac-fdc3-4d2b-a2af-aa0204126bef.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224480091-4c5b1b9b-615a-451b-bae0-60b19a57e810.png)

## v0.80.1_m6_002
### Graph


### BackTest


## v0.80.1_m10_002
### Graph


### BackTest


## v0.80.1_m12_002
### Graph


### BackTest


## v0.80.1_m15_002
### Graph


### BackTest


## v0.80.1_m20_002
### Graph


### BackTest


## v0.80.1_m30_002
### Graph


### BackTest


## v0.80.1_h1_002
### Graph


### BackTest


## v0.80.1_h2_002
### Graph


### BackTest


## v0.80.1_h3_002
### Graph


### BackTest


## v0.80.1_h4_002
### Graph


### BackTest


## v0.80.1_h6_002
### Graph


### BackTest


## v0.80.1_h8_002
### Graph


### BackTest


## v0.80.1_h12_002
### Graph


### BackTest


## v0.80.1_d_002
### Graph


### BackTest


