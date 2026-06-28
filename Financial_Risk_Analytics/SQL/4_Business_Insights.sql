
-- Default Rate by Gender
SELECT
    CODE_GENDER,
    COUNT(*) AS Total_Applicants,
    SUM(TARGET) AS Defaulters,
    ROUND((SUM(TARGET) / COUNT(*)) * 100, 2) AS Default_Rate
FROM application_train_sample
GROUP BY CODE_GENDER;

-- Default Rate by Income Type
SELECT
    NAME_INCOME_TYPE,
    COUNT(*) AS Total_Applicants,
    SUM(TARGET) AS Defaulters,
    ROUND((SUM(TARGET) / COUNT(*)) * 100, 2) AS Default_Rate
FROM application_train_sample
GROUP BY NAME_INCOME_TYPE
ORDER BY Default_Rate DESC;

-- Default Rate by Education Level
SELECT
    NAME_EDUCATION_TYPE,
    COUNT(*) AS Total_Applicants,
    SUM(TARGET) AS Defaulters,
    ROUND((SUM(TARGET) / COUNT(*)) * 100, 2) AS Default_Rate
FROM application_train_sample
GROUP BY NAME_EDUCATION_TYPE
ORDER BY Default_Rate DESC;

-- Top 10 Occupations by Average Credit
SELECT
    OCCUPATION_TYPE,
    ROUND(AVG(AMT_CREDIT),2) AS Average_Credit
FROM application_train_sample
GROUP BY OCCUPATION_TYPE
ORDER BY Average_Credit DESC
LIMIT 10;

-- Top 10 Occupations by Average Income
SELECT
    OCCUPATION_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL),2) AS Average_Income
FROM application_train_sample
GROUP BY OCCUPATION_TYPE
ORDER BY Average_Income DESC
LIMIT 10;

-- Income Type with Highest Average Loan
SELECT
    NAME_INCOME_TYPE,
    ROUND(AVG(AMT_CREDIT),2) AS Average_Loan
FROM application_train_sample
GROUP BY NAME_INCOME_TYPE
ORDER BY Average_Loan DESC;

-- Education Level with Highest Average Income
SELECT
    NAME_EDUCATION_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL),2) AS Average_Income
FROM application_train_sample
GROUP BY NAME_EDUCATION_TYPE
ORDER BY Average_Income DESC;

-- Housing Type Distribution
SELECT
    NAME_HOUSING_TYPE,
    COUNT(*) AS Total_Customers
FROM application_train_sample
GROUP BY NAME_HOUSING_TYPE
ORDER BY Total_Customers DESC;

-- Average Loan Amount by Housing Type
SELECT
    NAME_HOUSING_TYPE,
    ROUND(AVG(AMT_CREDIT),2) AS Average_Loan
FROM application_train_sample
GROUP BY NAME_HOUSING_TYPE
ORDER BY Average_Loan DESC;

-- Family Status Distribution
SELECT
    NAME_FAMILY_STATUS,
    COUNT(*) AS Total_Customers
FROM application_train_sample
GROUP BY NAME_FAMILY_STATUS
ORDER BY Total_Customers DESC;

-- Average Income by Family Status
SELECT
    NAME_FAMILY_STATUS,
    ROUND(AVG(AMT_INCOME_TOTAL),2) AS Average_Income
FROM application_train_sample
GROUP BY NAME_FAMILY_STATUS
ORDER BY Average_Income DESC;

-- Average Credit by Family Status
SELECT
    NAME_FAMILY_STATUS,
    ROUND(AVG(AMT_CREDIT),2) AS Average_Credit
FROM application_train_sample
GROUP BY NAME_FAMILY_STATUS
ORDER BY Average_Credit DESC;

-- Applicants Owning a Car
SELECT
    FLAG_OWN_CAR,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY FLAG_OWN_CAR;

-- Applicants Owning Real Estate
SELECT
    FLAG_OWN_REALTY,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY FLAG_OWN_REALTY;

-- Average Loan by Number of Children
SELECT
    CNT_CHILDREN,
    ROUND(AVG(AMT_CREDIT),2) AS Average_Loan
FROM application_train_sample
GROUP BY CNT_CHILDREN
ORDER BY CNT_CHILDREN;