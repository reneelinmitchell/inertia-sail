# BHI / BSN Data Challenge Submission

### Team INERTIA-SAIL
##### Renne M.(1), Ben G.(1), and Jiaqi G.(2)
##### 1: UVA, 2: UMBC

This repository contains the code for our 2018 BHI / BSN Data Challenge submssion.
Feel free to clone or fork the repository and try out our analysis. Data is sourced from the excellent MIT 

##### Running the Code

1. Modify FLOW1 and FLOW2 to contain valid login info. 

`user = 'xxx'
password = 'xxx'
host = 'hst953.csail.mit.edu'
dbname = 'mimic'
schema = 'mimiciii'`

`user` and `password` should be set.

2. Run notebooks in numeric order

3. Results are charted in FLOW3

##### Dependencies:

* pandas
* numpy
* psycopg2
* tableone
* statsmodels
* scipy
* matplotlib
* pdvega 

##### Notes:

* Notebooks should be run in numeric order as they produce output files used for subsequent notebooks.
* FLOW1 and FLOW2 should be edited to contain login info for the database

##### Files:

1. FLOW1_GetICUStayAndCaregiverData 
    * Output: d_slices_5060_g.p, d_mro_5060_g.p
2. FLOW2_GetLabTestData
    * Output: total_lab_tests_5050_g.p
3. FLOW3_Stats
    * Output: Various interactive charts

##### Future work:

[ ] Merge queries where possible to improve perf
[ ] Parameterize age range file names and SQL queries

##### Contact:

{rlm4mx,bg5ng}@virginia.edu, jgong@umbc.edu
=======
