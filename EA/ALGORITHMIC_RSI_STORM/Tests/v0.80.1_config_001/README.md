## Config Tests on v0.80.1_001 .set
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
- _001 the set config version
- run all same set config  cross the above loop (M1,M5,M10,M15,M20,M30,H1,H2,H4,H6,H8,H12,D) in which on each extrace prnt  screen of Graph and BackTest and add it to the readme.md file
- save the xls file from backtest report generated on same convention name as the test (eg: v0.80.1_m1_001.xls)

## Condition to be Profitable Confguration
- Total Net Profit: +0
- Equity Drawdown Maximal: < 5% total Equity (200k total = 10k max dd)
### Optional
- Has mininal loss trades
- reduced drawdown: <= 2.5%
- fast open and close of trades: -5 minutes

## v0.80.1_m1_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224458089-2f4c0007-618e-4bb5-ae90-38d55bd0e470.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224458103-4eddd329-012a-4a9f-90b2-5258cbeaf85e.png)

## v0.80.1_m2_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224458730-5af85c17-7576-42b3-8f16-743f71079d7a.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224458755-248a7f62-a691-431a-b515-04db5e377524.png)

## v0.80.1_m3_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224459242-414f41c6-0561-45cf-819c-b6e432b07ccb.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224459267-66934117-9ab4-4342-80fa-3caa44f43ba6.png)

## v0.80.1_m4_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224473807-4843abab-1fff-4e3a-bd54-e3a16aa1d71c.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224473819-476a97b7-37c3-4d82-ad01-ba1bdbfd9801.png)

## v0.80.1_m5_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224457690-14a8e725-faf6-411b-b580-f78aaf354458.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224457706-00705f9c-9f22-436b-b2c6-352254ddb44f.png)

## v0.80.1_m6_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224474250-a7c9de19-dbfa-4353-9bec-346fd3615223.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224474261-249be908-31ef-49a3-865d-fbd5b2fe6928.png)

## v0.80.1_m10_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224452143-efc5a369-8462-4abf-b738-e9e42aca77d0.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224452188-c4867b4a-d429-45ae-b709-a8344545ebb7.png)

## v0.80.1_m12_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224474670-ee90f3b5-ce28-4563-bf5e-4dbd99511210.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224474690-a85c3534-2b85-4acf-a2fe-923882703a01.png)

## v0.80.1_m15_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224452246-39457a07-4366-4707-9de4-e5917c100096.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224452291-eb27fc73-5aba-440b-ad1f-d6a44ba27b8a.png)

## v0.80.1_m20_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224453262-86252cf9-cc96-429b-88d8-6d7f63761aa0.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224453285-b51f636e-a065-4ebe-b307-476a3e711197.png)

## v0.80.1_m30_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224453941-9ed53b95-e744-492d-bf2b-37997da91022.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224453973-94cd129c-0d4c-4f12-8842-a836edd32743.png)

## v0.80.1_h1_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224454508-97132e08-165c-45ae-af2d-8878e90ac537.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224454523-42c8df85-1a37-4c37-a9aa-a072c66ba9d9.png)

## v0.80.1_h2_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224455806-af9be342-3a11-4dd3-bf03-4a6aa10dbdb7.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224455827-992b4161-bf01-4656-a9c8-ec1a91a0efd2.png)

## v0.80.1_h3_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224456358-25e82b7d-7dbb-4451-a446-0fe0dce4298a.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224456375-b17006fc-64b9-4f86-bf58-c1f0392e7fc3.png)

## v0.80.1_h4_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224454953-20755f64-3689-47f5-9828-96012b996e21.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224454996-89594654-31e1-49c2-9d29-539ccf6dfc06.png)

## v0.80.1_h6_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224456902-feb9d31c-06da-41a1-b2d8-0330c879298f.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224456919-40328218-003d-4999-abd8-c576ffbb620f.png)

## v0.80.1_h8_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224457235-f958e173-4ae3-4580-945c-51605b42d3b8.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224457263-8c9acc90-bfca-46d3-be39-e3d204678ef5.png)

## v0.80.1_h12_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224455350-e8797ce4-f1a6-4f3c-930c-3d2329c23205.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224455370-897f6c85-322d-4982-b644-9d9c53477aef.png)

## v0.80.1_d_001
### Graph
![image](https://user-images.githubusercontent.com/118682909/224474976-f06d94bd-00b8-43b4-87fb-ac2f77d670cd.png)

### BackTest
![image](https://user-images.githubusercontent.com/118682909/224474989-4a947892-1163-4062-b534-4184b14bd3ea.png)

