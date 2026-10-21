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

![Excel Dashboard](images/Excel%20Dashboard.png)

### Tableau Dashboard

![Tableau Dashboard](images/Tableau%20Dashboard.png)

### Power BI Dashboard — Dark Mode

![PowerBI Darkmode](images/PowerBI%20Darkmode.png)

### Power BI Dashboard — Light Mode

![PowerBI Lightmode](images/PowerBI%20Light%20mode.png)

## Key Analysis and Findings

This project explores employee attrition using two related HR datasets containing approximately 50,000 records each.

The analysis covers:

- **Departmental attrition:** Compares employee attrition rates across departments.
- **Income and attrition:** Examines attrition across monthly income bands.
- **Employee demographics:** Analyzes gender-wise attrition within departments.
- **Career progression:** Explores attrition in relation to years since the last promotion.
- **Work experience:** Compares average total working years across departments.
- **Job roles and work-life balance:** Examines the distribution of work-life balance ratings across job roles.
- **Hourly rates:** Calculates the average hourly rate for male Research Scientists.

The overall attrition rate calculated during SQL validation was **50.21%** (25,105 employees classified as having left out of 50,000 records). This figure describes the dataset analyzed and should be interpreted in the context of its source and definitions.

## Business Recommendations

Based on the results of the analysis, HR teams could:

1. Investigate departments with comparatively high attrition rates.
2. Review compensation patterns alongside attrition and other workforce indicators.
3. Examine promotion opportunities and career progression for potential retention concerns.
4. Compare work-life balance ratings across job roles to identify areas for further investigation.
5. Monitor gender-wise attrition patterns within departments while protecting employee privacy.
6. Use recurring dashboards and KPI reporting to track changes over time.

These recommendations are intended to guide further investigation. The analysis identifies patterns and associations and does not establish that any particular factor causes attrition.

## Recommendations

- Investigate departments and employee groups with comparatively high attrition.
- Review compensation, overtime, and work-life balance patterns alongside other relevant factors.
- Examine promotion opportunities and career progression.
- Use regular workforce reporting to monitor changes in attrition.

## Repository Structure

```text
HR-Analytics-Project/
├── images/
│   ├── Excel Dashboard.png
│   ├── PowerBI Darkmode.png
│   ├── PowerBI Light mode.png
│   └── Tableau Dashboard.png
├── sql/
│   └── HR_Analytics_Queries.sql
└── README.md
```

## Limitations

The analysis identifies patterns and associations; it does not establish that any one factor causes employee attrition. Dataset provenance and definitions should be verified before using the results for real-world HR decisions.

## Disclaimer

This is a portfolio project created for learning and data analytics practice. Any dataset used should be shared only when its license and privacy requirements permit public distribution.
