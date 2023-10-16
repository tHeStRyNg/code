### QA from version 1.6.2.1 to 2.1.5
The tests conducted will scope the followng metrics to be correlated:

- Timeframe H1 from 1 Jan 2023 to 10 Jan 2023
- Same Configuration cross all tests -> 2.0-med_lots_med_risk_set_2am-5am_1.set
- Output resutls from Backtest
- Excel file from Backtest

#### Sorted from 1 to 17

![image](https://user-images.githubusercontent.com/118682909/227040873-960b441f-e446-4b3a-8972-8b25e1a02106.png)


Markt@LAPTOP-9M2EF0HE MINGW64 ~/Desktop/code/backup/ALGORITHMIC/ALGORITHMIC_RSI_STORM/Tests/QA (main)

- 1 - 368 -rw-r--r-- 1 Markt 197121 375910 Mar 21 10:55  ALGORITHMIC_RSI_STORM_v1.6.2.1_THE_H1_BEAST.ex5
- 2 -388 -rw-r--r-- 1 Markt 197121 393856 Mar 22 02:46  ALGORITHMIC_RSI_STORM_v2.0.ex5
- 3 -3380 -rw-r--r-- 1 Markt 197121 385986 Mar 22 09:03  ALGORITHMIC_RSI_STORM_v2.1.ex5
- 4 -3384 -rw-r--r-- 1 Markt 197121 390760 Mar 22 09:33  ALGORITHMIC_RSI_STORM_v2.1.1.ex5
- 5 -3388 -rw-r--r-- 1 Markt 197121 393986 Mar 22 09:53  ALGORITHMIC_RSI_STORM_v2.1.2.ex5
- 6 -3392 -rw-r--r-- 1 Markt 197121 400016 Mar 22 13:11  ALGORITHMIC_RSI_STORM_v2.1.3.ex5
- 7 -3396 -rw-r--r-- 1 Markt 197121 401502 Mar 22 13:13 'ALGORITHMIC_RSI_STORM_v2.1.3 (1).ex5'
- 8 -3396 -rw-r--r-- 1 Markt 197121 403826 Mar 22 13:19 'ALGORITHMIC_RSI_STORM_v2.1.3 (2).ex5'
- 9 -3396 -rw-r--r-- 1 Markt 197121 404008 Mar 22 13:21 'ALGORITHMIC_RSI_STORM_v2.1.3 (3).ex5'
- 10 -3404 -rw-r--r-- 1 Markt 197121 413498 Mar 22 13:33 'ALGORITHMIC_RSI_STORM_v2.1.3 (4).ex5'
- 11 -3412 -rw-r--r-- 1 Markt 197121 419480 Mar 22 13:37 'ALGORITHMIC_RSI_STORM_v2.1.3 (5).ex5'
- 12 -3420 -rw-r--r-- 1 Markt 197121 427460 Mar 22 13:49 'ALGORITHMIC_RSI_STORM_v2.1.3 (6).ex5'
- 13 -3420 -rw-r--r-- 1 Markt 197121 427214 Mar 22 13:55 'ALGORITHMIC_RSI_STORM_v2.1.3 (7).ex5'
- 14 -3420 -rw-r--r-- 1 Markt 197121 429104 Mar 22 13:59 'ALGORITHMIC_RSI_STORM_v2.1.3 (8).ex5'
- 15 -3424 -rw-r--r-- 1 Markt 197121 432996 Mar 22 14:03 'ALGORITHMIC_RSI_STORM_v2.1.3 (9).ex5'
- 16 -3424 -rw-r--r-- 1 Markt 197121 432844 Mar 22 14:04  ALGORITHMIC_RSI_STORM_v2.1.4.ex5
- 17 -3424 -rw-r--r-- 1 Markt 197121 432550 Mar 22 18:27  ALGORITHMIC_RSI_STORM_v2.1.5.ex5

#### 1 QA - ALGORITHMIC_RSI_STORM_v1.6.2.1_THE_H1_BEAST.ex5
Runs Backtest? (YES/NO) -> YES
Source Exists ? (YES/NO) -> NO

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227041295-8a059a7b-b805-458c-85a1-ed95b590b939.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227041350-9cb57c2f-ceed-42de-86db-8a81cf2dd61b.png)

##### Xlx Report
1.xls

#### 2 QA - ALGORITHMIC_RSI_STORM_v2.0.ex5
Runs Backtest? (YES/NO) -> YES
Source Exists ? (YES/NO) -> YES

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227041614-751fa276-cd98-4981-9d15-e9caeae0ea15.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227041647-883025b7-081c-4eb8-b874-e97a7a364a23.png)

##### Xlx Report
2.xls

#### 3 QA - ALGORITHMIC_RSI_STORM_v2.1.ex5
Runs Backtest? (YES/NO) -> YES BUT AT 0
Source Exists ? (YES/NO) -> NO

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227041842-26fccb35-14c7-44af-b2d1-0bfe07545ad1.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227041873-c69c85f4-7185-431c-8d92-0a2b620b232c.png)

##### Xlx Report
No Report Generated

#### 4 QA - ALGORITHMIC_RSI_STORM_v2.1.1.ex5
Runs Backtest? (YES/NO) -> YES - FIXED
Source Exists ? (YES/NO) -> YES

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227058961-8f637853-b771-41e4-b5d0-ad6f07223ecb.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227058998-37729119-886b-4585-a734-c856b08d8f32.png)

##### Xlx Report
4.xls

#### 5 QA - ALGORITHMIC_RSI_STORM_v2.1.2.ex5
Runs Backtest? (YES/NO) -> YES BUT AT 0
Source Exists ? (YES/NO) -> YES

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227042237-e3b619a9-f98e-4372-83a1-c7fdd8fca89a.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227042114-0a870fd8-6f47-4d30-82ad-227486d15032.png)
##### Xlx Report
No Report Generated

#### 16 QA - ALGORITHMIC_RSI_STORM_v2.1.4.ex5
Runs Backtest? (YES/NO) -> YES BUT AT 0
Source Exists ? (YES/NO) -> YES

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227042620-78ef557b-f23f-4a80-b35e-ad79f59587c7.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227042114-0a870fd8-6f47-4d30-82ad-227486d15032.png)

##### Xlx Report
No Report Generated

#### 17 QA - ALGORITHMIC_RSI_STORM_v2.1.5.ex5
Runs Backtest? (YES/NO) -> YES BUT AT 0
Source Exists ? (YES/NO) -> YES

##### Graph Results
![image](https://user-images.githubusercontent.com/118682909/227058712-a2eb3f7b-3280-4732-876a-4d7b0970a15e.png)

##### Backtest Results
![image](https://user-images.githubusercontent.com/118682909/227058743-b0c12704-3744-4bb5-b27b-ce5105d4e9fb.png)

##### Xlx Report
No Report Generated


#### Summary 1

| BKT VERSION | VISUAL BKT | NON VISUAL BKT |
| -------- | -------- | -------- |
|  2.1.1 | WORKING | NOT WORKING |
|  2.0 | WORKING |  WORKING |

##### ALGORITHMIC_RSI_STORM_v2.1.1 - NOT WORKING

- Source Code 
https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_RSI_STORM/Source/ALGORITHMIC_RSI_STORM_v2.1.1.mq5

- Logic Diagram
![image](https://user-images.githubusercontent.com/118682909/227044683-95392f40-7989-4d9f-9fe6-a4a7ca3f39ce.png)

##### ALGORITHMIC_RSI_STORM_v2.0  - WORKING
- Source Code
https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_RSI_STORM/Source/ALGORITHMIC_RSI_STORM_v2.0.mq5

- Logic Diagram
![image](https://user-images.githubusercontent.com/118682909/227044796-77975a31-dbaa-4a24-93d1-d9846d7ef38e.png)

#### CONCLUSION
- FIXED WIT HTHE REMOVAL TO A DIFF BLOCK THE CKECKING OF THE TP-SL BOOL TRUE OR FALSE AS FOLLOWS BELO WIN THE CORRECTED 2.1.1_QA_2 VERSION WORKING

![image](https://user-images.githubusercontent.com/118682909/227050749-074ded59-1502-4f91-94ab-71599dc6d38a.png)
