
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
