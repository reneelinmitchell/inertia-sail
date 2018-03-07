# BHI / BSN Data Challenge Submission

### Team INERTIA-SAIL
#### Renee M.(1), Ben G.(1), and Jiaqi G.(2)
#### 1: UVA, 2: UMBC

This repository contains the code for our 2018 BHI / BSN Data Challenge submssion. Check out the challenge here: [MIMIC Challenge](https://mimic.physionet.org/events/bhibsn-challenge/)


Feel free to clone or fork the repository and try out our analysis. Code is available under the MIT License. Data is sourced from the excellent *MIT MIMIC Critical Care Database*.

#### Data Ref:
MIMIC-III, a freely accessible critical care database. Johnson AEW, Pollard TJ, Shen L, Lehman L, Feng M, Ghassemi M, Moody B, Szolovits P, Celi LA, and Mark RG. Scientific Data (2016). DOI: 10.1038/sdata.2016.35. Available from: http://www.nature.com/articles/sdata201635


[MIMIC-III](https://mimic.physionet.org/)

### Running the Code

1. Modify FLOW1 and FLOW2 to contain valid login info. 

```
user = 'xxx'
password = 'xxx'
host = 'hst953.csail.mit.edu'
dbname = 'mimic'
schema = 'mimiciii'`
```

`user` and `password` should be set.

2. Run notebooks in numeric order

3. Results are charted in FLOW3

4. Decision tree analysis takes place in the seperate FLOW4 MATLAB script

### Dependencies:

* pandas
* numpy
* psycopg2
* tableone
* statsmodels
* scipy
* matplotlib
* pdvega 

* MATLAB for decision tree

### Notes:

* Notebooks should be run in numeric order as they produce output files used for subsequent notebooks.
* FLOW1 and FLOW2 should be edited to contain login info for the database

### Files:

1. FLOW1_GetICUStayAndCaregiverData 
    * Output: d_slices_5060_g.p, d_mro_5060_g.p
2. FLOW2_GetLabTestData
    * Output: total_lab_tests_5050_g.p
3. FLOW3_Stats
    * Output: Various interactive charts
	* Output: mro_plus.xlsx
4. FLOW4_decision_tree_analysis
	* Output: Figures

### Future work:

- [ ] Merge queries where possible to improve perf
- [ ] Parameterize age range file names and SQL queries

### Contact:

{rlm4mx,bg5ng}@virginia.edu, jgong@umbc.edu

[UMBC SAIL Group](https://sail.umbc.edu/)

### Copyright Info:
This work is based upon example code from the [bhi-bsn-challenge](https://github.com/MIT-LCP/bhi-bsn-challenge) repo. That code, some of which was reproduced here, is under the following license:

---------

MIT License

Copyright (c) 2018 MIT Laboratory for Computational Physiology

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.


