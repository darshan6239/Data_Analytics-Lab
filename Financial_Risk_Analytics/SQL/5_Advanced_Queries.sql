-- Top 10 Highest Income Applicants
SELECT
    SK_ID_CURR,
    AMT_INCOME_TOTAL
FROM application_train_sample
ORDER BY AMT_INCOME_TOTAL DESC
LIMIT 10;

-- Top 10 Highest Loan Amounts
SELECT
    SK_ID_CURR,
    AMT_CREDIT
FROM application_train_sample
ORDER BY AMT_CREDIT DESC
LIMIT 10;

-- Customers with Income Above Average (Subquery)
SELECT
    SK_ID_CURR,
    AMT_INCOME_TOTAL
FROM application_train_sample
WHERE AMT_INCOME_TOTAL >
(
    SELECT AVG(AMT_INCOME_TOTAL)
    FROM application_train_sample
);

-- Income Type with More Than 500 Applicants (HAVING)
SELECT
    NAME_INCOME_TYPE,
    COUNT(*) AS Total
FROM application_train_sample
GROUP BY NAME_INCOME_TYPE
HAVING COUNT(*) > 500;

-- Occupations with Average Income Above ₹200,000
SELECT
    OCCUPATION_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL),2) AS Average_Income
FROM application_train_sample
GROUP BY OCCUPATION_TYPE
HAVING AVG(AMT_INCOME_TOTAL) > 200000
ORDER BY Average_Income DESC;

-- Rank Occupations by Average Income (Window Function)
SELECT
    OCCUPATION_TYPE,
    ROUND(AVG(AMT_INCOME_TOTAL),2) AS Average_Income,
    RANK() OVER(
        ORDER BY AVG(AMT_INCOME_TOTAL) DESC
    ) AS Income_Rank
FROM application_train_sample
GROUP BY OCCUPATION_TYPE;

-- Dense Rank of Education Levels by Average Credit
SELECT
    NAME_EDUCATION_TYPE,
    ROUND(AVG(AMT_CREDIT),2) AS Average_Credit,
    DENSE_RANK() OVER(
        ORDER BY AVG(AMT_CREDIT) DESC
    ) AS Credit_Rank
FROM application_train_sample
GROUP BY NAME_EDUCATION_TYPE;

-- Categorize Applicants Using CASE
SELECT
    SK_ID_CURR,
    AMT_INCOME_TOTAL,

    CASE
        WHEN AMT_INCOME_TOTAL < 100000 THEN 'Low Income'
        WHEN AMT_INCOME_TOTAL BETWEEN 100000 AND 300000 THEN 'Middle Income'
        ELSE 'High Income'
    END AS Income_Category

FROM application_train_sample;

-- Categorize Loan Amount
SELECT
    SK_ID_CURR,
    AMT_CREDIT,

    CASE
        WHEN AMT_CREDIT < 300000 THEN 'Small Loan'
        WHEN AMT_CREDIT BETWEEN 300000 AND 800000 THEN 'Medium Loan'
        ELSE 'Large Loan'
    END AS Loan_Category

FROM application_train_sample;

-- Top 5 Education Levels by Average Income (CTE)
WITH EducationIncome AS
(
    SELECT
        NAME_EDUCATION_TYPE,
        ROUND(AVG(AMT_INCOME_TOTAL),2) AS Avg_Income
    FROM application_train_sample
    GROUP BY NAME_EDUCATION_TYPE
)

SELECT *
FROM EducationIncome
ORDER BY Avg_Income DESC
LIMIT 5;