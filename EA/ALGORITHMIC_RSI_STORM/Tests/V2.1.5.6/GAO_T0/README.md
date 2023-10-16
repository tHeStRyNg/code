### ALGORITHMIC RSI STORM - V2.1.5.6 - GENETIC ALGORITHM OPTIMIZATION

![image](https://user-images.githubusercontent.com/118682909/226175121-0f6d56fe-6e0d-413c-9caa-659557b1fd2b.png)

#### SCOPE
THE SCOPE OF GAO IS TO FINE TUNE AN ALGORITHM TOWARDS X GOAL.
IN HERE WE WILL OPTIMIZED RSI_STORM ALGORITHM VERSION 2.1.5.6 FOR OUR GOAL WITCH IS 
- 1 - MAX PROFIT => 20,000.00 PER MONTH
- 2 - HAVING LEAST MAX DD POSSIBLE OR BELOW 4% TOTAL EQUITY

##### WHAT IS GENETIC ALGORITHM OPTIMIZATION

![image](https://user-images.githubusercontent.com/118682909/227715060-08e2575b-312e-4a61-a736-9cec98f63e1d.png)

![image](https://user-images.githubusercontent.com/118682909/227715096-b6bbfc73-7cab-428e-97ae-45863db8eb25.png)

![image](https://user-images.githubusercontent.com/118682909/227715128-5dd25c59-81d6-4c2e-b4f4-e1f206838bf9.png)

![image](https://user-images.githubusercontent.com/118682909/227715155-d830068f-e897-4535-8443-a7176b70e4e8.png)

![image](https://user-images.githubusercontent.com/118682909/227715182-4fac7f68-ced4-4127-b082-c4355e63940d.png)

![image](https://user-images.githubusercontent.com/118682909/227715193-cfdeb0ea-a4ed-40de-9a36-71dda016d4b8.png)

![image](https://user-images.githubusercontent.com/118682909/227715282-42905270-e61b-4f3e-8c72-82b74db835db.png)

#### DESCRIPTION
- Scope - Genetic Optimization (GO) or tuning a configuration based on config value matrix on a given delta.
- In this case the delta is 1 jan 2022 to 31 dec 2022 - 1 year run
- Tunning config as follows
- 1 - BATCH PROFILING THE LOTS AND SIZES
- 2 - BATCH PROFILING RSI AND MACD
- 3 - BATCH PROFILING THE BEST WEEKDAYS FOR BEST OPTIMAL PROFIT

#### INPUT OPTIONS

![image](https://user-images.githubusercontent.com/118682909/227610575-f2234507-84c7-403e-887a-0a501ed6aafd.png)

#### TESTED TIMEFRAME - H1
 
#### TEST 1 - FEB 2022 - H1 - CONFIG USED --> INPUT OPTIONS

##### GENETIC OPTIMIZATION RESULTS

![image](https://user-images.githubusercontent.com/118682909/227610299-bb636513-06d8-45d5-951d-4c2a6abe9970.png)

#### TEST 2 - JAN 2022 (LAST YEAR)- H1 - CONFIG USED --> INPUT OPTIONS

##### 1- BATCH PROFILING THE LOTS AND SIZES

##### LOG START TIME
- 2023.03.24 22:29:33.287	Tester	Experts\ALGORITHMIC_RSI_STORM_v2.1.5.6.ex5 on EURUSD,H1 from 2022.01.01 00:00 to 2022.12.31 00:00
- COMPLETED IN 1H:15 MINUTES
- B1 RUN WORKLOAD,TIME AND COSTS
![image](https://user-images.githubusercontent.com/118682909/227659866-16fea72b-d1f9-4a2c-874a-c32c15da2d7e.png)

##### GENETIC OPTIMIZATION RESULTS

- excel file -> [test 2 genetic optimization](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_RSI_STORM/Tests/V2.1.5.6/ReportOptimizer-Test%202.xlsx)

![image](https://user-images.githubusercontent.com/118682909/227654350-0bc87e9a-b1ed-4dba-831a-2b84493f4669.png)
![image](https://user-images.githubusercontent.com/118682909/227654384-1c7e55ca-d925-4a0b-a7fa-c5aa6ed6e601.png)

##### 2 - BATCH PROFILING RSI AND MACD
SO WE ARE USING THE CONFIG OF BATCH 1 PASS 40 AND OPTIMIZING THE RSI AND MACD

###### 2.1 RSI AND MACD OPTIMIZATION BASED ON B1 PASS 40
- WE WILL CHECK MAX DD AND PROFIT FOR WHOLE YEAR OF 2022 USING B1 PASS 40 GO AND RSI AND MACD VALUES AS FOLLOWS BELOW
GIVING US 256 POSSIBLE CONFIGURATIONS FOR PROFIT AND DRAWDOWN OPTIMIZATION BASED ON RSI AND MACD CONFIG VALUES

![image](https://user-images.githubusercontent.com/118682909/227661154-ab151974-f2de-40e4-95eb-3be673220532.png)

####### LOG 
- START TIME PROCESSING
- 2023.03.25 00:29:00.743	Tester	Experts\ALGORITHMIC_RSI_STORM_v2.1.5.6.ex5 on EURUSD,H1 from 2022.01.01 00:00 to 2022.12.31 00:00
- END TIME PROCESSING

##### GENETIC OPTIMIZATION RESULTS B2 
![image](https://user-images.githubusercontent.com/118682909/227709530-77234330-e7a4-4307-8f98-d53441868e07.png)

REPORT --> - excel file -> [test B2 genetic optimization](https://github.com/tHeStRyNg/backup/blob/main/ALGORITHMIC/ALGORITHMIC_RSI_STORM/Tests/V2.1.5.6/ReportOptimizer-Test%202_B2.xlsx)

##### LOT TO CHOOSE FROM - GAO MAIN REPORT - (feb 2022 run only needs to be checked agains other months)

![image](https://user-images.githubusercontent.com/118682909/227714027-3fa05a90-2f04-4449-9cb9-a0011d86f89e.png)

##### TEST RUN 1 - GAO NR 196 - (feb 2022 run)

![image](https://user-images.githubusercontent.com/118682909/227714007-a0e23fc1-5cbf-42dd-8962-38e12bff2d4c.png)

![image](https://user-images.githubusercontent.com/118682909/227714061-6cde32c5-9123-4e59-b529-48414ac0a9f1.png)

##### TEST RUN 2 - GAO NR 196 - (feb 2022 run)

![image](https://user-images.githubusercontent.com/118682909/227714408-f359cdf8-c681-4bbc-a1fc-4d53a3a10ea6.png)

![image](https://user-images.githubusercontent.com/118682909/227714479-4f7b0546-cc21-4570-8a66-512531758c44.png)

##### TEST RUN 3 - GAO NR 196 - (feb 2022 run)

![image](https://user-images.githubusercontent.com/118682909/227715464-e1fbc271-70fb-4be3-99be-0ef824bbeacd.png)

![image](https://user-images.githubusercontent.com/118682909/227715655-b1477f11-56a7-4185-be36-9ddfabc44df0.png)
