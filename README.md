# HR Analytics Project — Employee Attrition Analysis

## Project Overview

This project analyzes employee attrition and workforce trends using SQL, Excel, Tableau, and Power BI. Two employee datasets were combined using Employee ID to explore factors associated with employees leaving an organization.

## Objectives

- Analyze employee attrition overall and by department.
- Explore relationships between attrition, income, gender, overtime, and promotion history.
- Understand working years, job roles, and work-life balance.
- Build dashboards to communicate insights to stakeholders.

## Tools Used

- **MySQL:** Data validation, joins, aggregations, and KPI queries.
- **Microsoft Excel:** Data analysis and dashboard creation.
- **Tableau:** Interactive data visualization.
- **Power BI:** Dashboard development in light and dark themes.

## Dataset Overview

The project uses two related datasets:

- **HR1:** Employee demographics, department, job role, satisfaction, and attrition.
- **HR2:** Income, overtime, performance, working years, promotions, and work-life balance.

Both datasets contain approximately 50,000 records. Employee ID was used as the joining key. Data quality checks included row counts, unique employee IDs, and join validation.

## Key Business Questions

1. What is the attrition rate in each department?
2. What is the average hourly rate for male Research Scientists?
3. How does attrition vary across monthly income bands?
4. What is the average total working experience by department?
5. How does work-life balance vary by job role?
6. Is attrition associated with years since the last promotion?
7. How does attrition vary by gender within each department?
8. How does overtime relate to employee attrition?

## Dashboard Gallery

### Excel Dashboard

![Excel HR Analytics Dashboard](images/excel-dashboard.png)

### Tableau Dashboard

![Tableau HR Analytics Dashboard](images/tableau-dashboard.png)

### Power BI Dashboard — Light Theme

![Power BI Light Dashboard](images/powerbi-light.png)

### Power BI Dashboard — Dark Theme

![Power BI Dark Dashboard](images/powerbi-dark.png)

## Initial Findings

- The analyzed dataset contains approximately 50,000 employee records.
- The overall attrition rate calculated in SQL was **50.21%**.
- Department-level attrition and income-band attrition were explored.
- Additional analysis covered overtime, gender, promotion history, working years, and work-life balance.

*These findings describe the dataset analyzed in this project and should not be generalized to other organizations without further validation.*

## Recommendations

- Investigate departments and employee groups with comparatively high attrition.
- Review compensation, overtime, and work-life balance patterns alongside other relevant factors.
- Examine promotion opportunities and career progression.
- Use regular workforce reporting to monitor changes in attrition.

## Repository Structure

```text
HR-Analytics-Project/
├── sql/
│   └── HR_Analytics_Queries.sql
├── images/
│   ├── excel-dashboard.png
│   ├── tableau-dashboard.png
│   ├── powerbi-light.png
│   └── powerbi-dark.png
└── README.md
```

## Limitations

The analysis identifies patterns and associations; it does not establish that any one factor causes employee attrition. Dataset provenance and definitions should be verified before using the results for real-world HR decisions.

## Disclaimer

This is a portfolio project created for learning and data analytics practice. Any dataset used should be shared only when its license and privacy requirements permit public distribution.
