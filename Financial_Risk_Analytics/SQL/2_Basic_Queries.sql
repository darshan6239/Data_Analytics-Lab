-- 02_Basic_Queries.sql

SELECT *
FROM application_train_sample;

-- First Ten Record 
SELECT *
FROM application_train_sample
LIMIT 10;

-- Total Number of Applications 
SELECT COUNT(*) AS Total_Applications
FROM application_train_sample;

-- Number of Defaulters vs Non-Defaulters
SELECT
    TARGET,
    COUNT(*) AS Total_Customers
FROM application_train_sample
GROUP BY TARGET;

-- Number of Male and Female Applicants
SELECT
    CODE_GENDER,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY CODE_GENDER;

-- Income Type Distribution
SELECT
    NAME_INCOME_TYPE,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY NAME_INCOME_TYPE
ORDER BY Total DESC;

-- Education Level Distribution
SELECT
    NAME_EDUCATION_TYPE,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY NAME_EDUCATION_TYPE
ORDER BY Total DESC;
 
-- Housing Type Distribution
SELECT
    NAME_HOUSING_TYPE,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY NAME_HOUSING_TYPE
ORDER BY Total DESC;

-- Occupation Type Distribution
SELECT
    OCCUPATION_TYPE,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY OCCUPATION_TYPE
ORDER BY Total DESC;

-- Family Status Distribution
SELECT
    NAME_FAMILY_STATUS,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY NAME_FAMILY_STATUS
ORDER BY Total DESC;\

-- Average Annual Income
SELECT
    ROUND(AVG(AMT_INCOME_TOTAL),2) AS Average_Income
FROM application_train_sample;

-- Average Credit Amount
SELECT
    ROUND(AVG(AMT_CREDIT),2) AS Average_Credit
FROM application_train_sample;

-- Average Loan Annuity
SELECT
    ROUND(AVG(AMT_ANNUITY),2) AS Average_Annuity
FROM application_train_sample;

-- Highest Credit Amount
SELECT
    MAX(AMT_CREDIT) AS Highest_Credit
FROM application_train_sample;

-- Lowest Income
SELECT
    MIN(AMT_INCOME_TOTAL) AS Lowest_Income
FROM application_train_sample;
