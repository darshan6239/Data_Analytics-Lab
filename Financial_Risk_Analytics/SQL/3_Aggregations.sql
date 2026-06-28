-- 03_Aggregations.sql

-- Average Annual Income
SELECT
    ROUND(AVG(AMT_INCOME_TOTAL), 2) AS Average_Income
FROM application_train_sample;

-- Average Credit Amount
SELECT
    ROUND(AVG(AMT_CREDIT), 2) AS Average_Credit
FROM application_train_sample;

-- Average Loan Annuity
SELECT
    ROUND(AVG(AMT_ANNUITY), 2) AS Average_Annuity
FROM application_train_sample;

-- Maximum Credit Amount
SELECT
    MAX(AMT_CREDIT) AS Highest_Credit
FROM application_train_sample;

-- Minimum Annual Income
SELECT
    MIN(AMT_INCOME_TOTAL) AS Lowest_Income
FROM application_train_sample;

-- Average Income by Gender
SELECT
    CODE_GENDER,
    ROUND(AVG(AMT_INCOME_TOTAL), 2) AS Average_Income
FROM application_train_sample
GROUP BY CODE_GENDER;

-- Average Credit by Gender
SELECT
    CODE_GENDER,
    ROUND(AVG(AMT_CREDIT), 2) AS Average_Credit
FROM application_train_sample
GROUP BY CODE_GENDER;

-- Average Income by Education Level
SELECT
    NAME_EDUCATION_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL), 2) AS Average_Income
FROM application_train_sample
GROUP BY NAME_EDUCATION_TYPE
ORDER BY Average_Income DESC;

-- Average Credit by Education Level
SELECT
    NAME_EDUCATION_TYPE,
    ROUND(AVG(AMT_CREDIT), 2) AS Average_Credit
FROM application_train_sample
GROUP BY NAME_EDUCATION_TYPE
ORDER BY Average_Credit DESC;

-- Average Income by Occupation
SELECT
    OCCUPATION_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL), 2) AS Average_Income
FROM application_train_sample
GROUP BY OCCUPATION_TYPE
ORDER BY Average_Income DESC;

-- Average Credit by Occupation
SELECT
    OCCUPATION_TYPE,
    ROUND(AVG(AMT_CREDIT), 2) AS Average_Credit
FROM application_train_sample
GROUP BY OCCUPATION_TYPE
ORDER BY Average_Credit DESC;

-- Average Income by Income Type
SELECT
    NAME_INCOME_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL), 2) AS Average_Income
FROM application_train_sample
GROUP BY NAME_INCOME_TYPE
ORDER BY Average_Income DESC;

-- Average Credit by Income Type
SELECT
    NAME_INCOME_TYPE,
    ROUND(AVG(AMT_CREDIT), 2) AS Average_Credit
FROM application_train_sample
GROUP BY NAME_INCOME_TYPE
ORDER BY Average_Credit DESC;

-- Average Family Size by Housing Type
SELECT
    NAME_HOUSING_TYPE,
    ROUND(AVG(CNT_FAM_MEMBERS), 2) AS Average_Family_Size
FROM application_train_sample
GROUP BY NAME_HOUSING_TYPE
ORDER BY Average_Family_Size DESC;

-- Average Age (Approximate)
SELECT
    ROUND(AVG(ABS(DAYS_BIRTH) / 365), 2) AS Average_Age
FROM application_train_sample;