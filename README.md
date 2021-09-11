# Project 2 - Chicken Pox Vaccinations

## Background
With the advent of vaccination for COVID-19, recent controversey on vaccination rates has been determined.  Based on this, we sought to look at vaccination rates of previous well established communicable diseases (e.g. varicella, as well as exemptions and mortality.  With the recent popularity in anti-vaccine movements, we propose there will be increase in exemptions and increase in number of cases and deaths.

## Datasets
We sought to find the morbidity and mortality of Varicella (Chickenpox) reported by the CDC from 2016-2019.

https://wonder.cdc.gov/nndss/static/2016/annual/2016-table2o.html
https://wonder.cdc.gov/nndss/static/2017/annual/2017-table2o.html
https://wonder.cdc.gov/nndss/static/2018/annual/2018-table2o.html
https://wonder.cdc.gov/nndss/static/2019/annual/2019-table2r.html
https://wonder.cdc.gov/nndss/static/2019/annual/2019-table2r.html

In addition, we identified vaccination coverage and exemptions among kindergartners (2016-2019).
https://data.cdc.gov/Vaccinations/Vaccination-Coverage-and-Exemptions-among-Kinderga/ijqb-a7ye/data

## Types of Data Wrangling Performed

To obtain the morbidity and mortality data, we used webscraping to download data for the morbidity and mortality of Varicella each year (2016-2019) using beautiful soup, and imported this into Pandas.  We then dropped other disease reported (e.g. Typhoid Fever).  We dropped all null values.  We then combined all yers into a CSV (chix_cases.csv).

For the vaccine exemption, we downloaded the CSV and imported this to Pandas.  We filtered for Varicella and Exemption.  In addition, we removed randomed survey on basis of reporting.  We then filtered from 2016-2019 by look at the beginning of the reported school year given the downloaded data.  We then exported this into a CSV.

### Continued Transformation

After the tables were cleaned up to remove the extra columns, we exported them to cvs files. Once the tables were exported, we were then able to import them into sql to do joing. This required some more cleaning in terms of setting data types and column names. OUr two tables were then joined into one main table and exported.
