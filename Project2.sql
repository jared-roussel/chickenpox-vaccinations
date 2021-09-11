DROP TABLE vaccine_exemption;
CREATE TABLE vaccine_exemption (
	,Geography VARCHAR
	,"School Year" VARCHAR
	,,"Exempt Estimate (%) DECIMAL
	,"Survey Type" VARCHAR
	,"Dose" VARCHAR
	,"Vaccinated Estimate (%) DECIMAL
);

SELECT *
FROM vaccine_exemption

DROP TABLE pox_cases;
CREATE TABLE pox_cases (
"Reporting Area" VARCHAR 
,"Varicella Morbility" VARCHAR 
,"Varicella Mortality" VARCHAR 
,"Year" INT
);


ALTER TABLE pox_cases
RENAME COLUMN "Reporting Area" TO reporting_area;

ALTER TABLE pox_cases
RENAME COLUMN "Varicella Morbility" TO pox_cases;

ALTER TABLE pox_cases
RENAME COLUMN "Varicella Mortality" TO pox_deaths;

ALTER TABLE pox_cases
RENAME COLUMN "Year" TO case_year;

CREATE TABLE final_pox AS
SELECT *
FROM pox_cases a
LEFT JOIN vaccine_exemption b
on a.reporting_area = b.geography
and a.case_year = b."Year"
;

INNER JOIN vaccine_exemption b
ON a.Repo
