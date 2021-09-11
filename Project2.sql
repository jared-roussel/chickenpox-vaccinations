DROP TABLE vaccine_exemption;
CREATE TABLE vaccine_exemption (
	exp_id INT NOT NULL
	,Geography VARCHAR
	,"School Year" INT
	,"Exempt Estimate (%)" DECIMAL
	,"Survey_Type" VARCHAR
	,"Dose" VARCHAR
	,"Vaccinated Estimate (%)" VARCHAR
	,PRIMARY KEY (exp_id)
);


SELECT *
FROM vaccine_exemption

DROP TABLE pox_cases;
CREATE TABLE pox_cases (
"Reporting Area" VARCHAR 
,"Varicella Morbility" VARCHAR 
,"Varicella Mortality" VARCHAR 
,"Year" INT
,PRIMARY KEY ("Reporting Area","Year")
);

SELECT *
FROM pox_cases;
ALTER TABLE pox_cases
RENAME COLUMN "Reporting Area" TO reporting_area;

ALTER TABLE pox_cases
RENAME COLUMN "Varicella Morbility" TO pox_cases;

ALTER TABLE pox_cases
RENAME COLUMN "Varicella Mortality" TO pox_deaths;

ALTER TABLE pox_cases
RENAME COLUMN "Year" TO case_year;

ALTER TABLE vaccine_exemption
RENAME COLUMN "School Year" TO school_year;

DROP TABLE final_pox;
CREATE TABLE final_pox AS
SELECT *
FROM pox_cases a
INNER JOIN vaccine_exemption b
on a.reporting_area = b.geography
and a.case_year = b.school_year
;
SELECT * FROM final_pox;