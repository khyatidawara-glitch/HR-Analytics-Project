
-- =====================================================
-- HR ANALYTICS PROJECT
-- Tools: MySQL, Excel, Power BI, Tableau
-- =====================================================

USE HR_Analytics_Project;

-- DATA VALIDATION 1: Check HR1 record count
SELECT COUNT(*) AS HR1_Records
FROM hr_1;

-- DATA VALIDATION 2: Check HR2 record count
SELECT COUNT(*) AS HR2_Records
FROM hr_2;

-- DATA VALIDATION 3: Check unique employee IDs in HR1
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT `Employee ID`) AS Unique_Employees
FROM hr_1;

-- DATA VALIDATION 4: Check unique employee IDs in HR2
SELECT
    COUNT(*) AS Total_Rows,
    COUNT(DISTINCT `Employee ID`) AS Unique_Employees
FROM hr_2;

-- DATA VALIDATION 5: Check matched employee records
SELECT
    COUNT(*) AS Matched_Rows,
    COUNT(DISTINCT h1.`Employee ID`) AS Unique_Matched_Employees
FROM hr_1 AS h1
INNER JOIN hr_2 AS h2
    ON h1.`Employee ID` = h2.`Employee ID`;

-- KPI 1: ATTRITION RATE BY DEPARTMENT
SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(
            CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END
        ) / NULLIF(COUNT(*), 0),
        2
    ) AS Attrition_Rate
FROM hr_1
GROUP BY Department
ORDER BY Attrition_Rate DESC;

-- KPI 2: AVERAGE HOURLY RATE OF MALE RESEARCH SCIENTISTS
SELECT
    AVG(`HourlyRate`) AS Avg_Hourly_Rate
FROM hr_1
WHERE Gender = 'Male'
  AND JobRole = 'Research Scientist';


-- KPI 3: ATTRITION RATE BY MONTHLY INCOME BAND
SELECT
    CASE
        WHEN h2.MonthlyIncome < 3000 THEN 'Below 3000'
        WHEN h2.MonthlyIncome < 5000 THEN '3000-4999'
        WHEN h2.MonthlyIncome < 7000 THEN '5000-6999'
        ELSE '7000 and above'
    END AS Income_Band,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN h1.Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN h1.Attrition = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS Attrition_Rate
FROM hr_1 AS h1
INNER JOIN hr_2 AS h2
    ON h1.`Employee ID` = h2.`Employee ID`
GROUP BY Income_Band
ORDER BY MIN(h2.MonthlyIncome);


-- KPI 4: AVERAGE WORKING YEARS BY DEPARTMENT
SELECT
    h1.Department,
    ROUND(AVG(h2.TotalWorkingYears), 2) AS Avg_Working_Years
FROM hr_1 AS h1
INNER JOIN hr_2 AS h2
    ON h1.`Employee ID` = h2.`Employee ID`
GROUP BY h1.Department
ORDER BY Avg_Working_Years DESC;


-- KPI 5: JOB ROLE VS WORK-LIFE BALANCE
SELECT
    h1.JobRole,
    h2.WorkLifeBalance,
    COUNT(*) AS Employee_Count
FROM hr_1 AS h1
INNER JOIN hr_2 AS h2
    ON h1.`Employee ID` = h2.`Employee ID`
GROUP BY h1.JobRole, h2.WorkLifeBalance
ORDER BY h1.JobRole, h2.WorkLifeBalance;


-- KPI 6: ATTRITION RATE VS YEARS SINCE LAST PROMOTION
SELECT
    h2.YearsSinceLastPromotion,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN h1.Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN h1.Attrition = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS Attrition_Rate
FROM hr_1 AS h1
INNER JOIN hr_2 AS h2
    ON h1.`Employee ID` = h2.`Employee ID`
GROUP BY h2.YearsSinceLastPromotion
ORDER BY h2.YearsSinceLastPromotion;


-- KPI 7: GENDER-WISE ATTRITION RATE IN EACH DEPARTMENT
SELECT
    Department,
    Gender,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        AS Employees_Left,
    ROUND(
        100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)
        / NULLIF(COUNT(*), 0),
        2
    ) AS Attrition_Rate
FROM hr_1
GROUP BY Department, Gender
ORDER BY Department, Attrition_Rate DESC;
