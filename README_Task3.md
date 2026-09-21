# ApexPlanet Task 3 — Deep-Dive Analysis & Interactive Dashboard

## Overview

Task 3 extends the Task 2 exploratory analysis into a deeper business analysis and an interactive Power BI dashboard.

### Business Question

> Which products, locations, customer groups and demographic segments contribute most to overall sales revenue, and which measurable variables are most closely associated with Total Sales?

## Dataset

- Records: 1,000
- Unique Orders: 992
- Unique Customers: 947
- Total Quantity: 5,435
- Total Revenue: ₹139,399,439.65
- Average Order Value: ₹140,523.63

## Core KPIs

| KPI | Formula | Result |
|---|---|---:|
| Total Revenue | SUM(Total_Sales) | ₹139,399,439.65 |
| Total Orders | DISTINCTCOUNT(Order_ID) | 992 |
| Total Customers | DISTINCTCOUNT(Customer_ID) | 947 |
| Total Quantity | SUM(Quantity) | 5,435 |
| Average Order Value | Revenue / Orders | ₹140,523.63 |

## Deep-Dive Areas

### 1. Product Performance
Laptop generated the highest product revenue at ₹25.44M, while Mobile recorded the highest quantity sold at 1,008 units.

### 2. Geographic Performance
Patna recorded the highest city revenue at ₹19.29M.

### 3. Customer Value
The top five customers each generated approximately ₹483K–₹494K in recorded spending.

### 4. Demographic Performance
The 35–44 age group generated the highest age-group revenue at ₹32.80M.

### 5. Revenue Drivers
Correlation results from Task 2:

- Age vs Total Sales: 0.001
- Quantity vs Total Sales: 0.647
- Unit Price vs Total Sales: 0.686

Correlation indicates association, not causation.

## Customer Segmentation

The dashboard uses a simple business-rule framework:

- Low Value: < ₹100,000
- Medium Value: ₹100,000–₹249,999
- High Value: ₹250,000–₹399,999
- Very High Value: ≥ ₹400,000

These thresholds are analyst-defined project rules and should not be presented as statistically discovered cutoffs.

## Dashboard Pages

### Page 1 — Executive Overview
- KPI cards
- Revenue by Product
- Revenue by City
- Revenue by Age Group
- Revenue by Gender
- Quantity vs Total Sales
- Slicers

### Page 2 — Customer Deep Dive
- Top 10 customers
- Customer segmentation
- Revenue by segment
- Customer detail table
- Drill-through

### Page 3 — Revenue Drivers
- Quantity vs Total Sales
- Unit Price vs Total Sales
- Product × Age Group matrix
- City × Product analysis
- Product revenue and quantity comparison

## Files

```text
Task3_Deep_Dive_Analysis/
├── README.md
├── ApexPlanet_Task3_Deep_Dive_Report.pdf
├── Task3_Deep_Dive_Analysis.sql
├── Dashboard_Build_Guide.pdf
└── Task3_LinkedIn_Video_Slides.pptx
```

## Tools

- MySQL Workbench
- Power BI
- DAX
- SQL
- Excel
- PowerPoint

## Deliverables

- Deep-dive analysis report
- SQL queries
- Interactive Power BI dashboard
- GitHub documentation
- 5–7 minute LinkedIn dashboard demonstration

## Important Analytical Note

The dataset is observational. Correlation does not establish causation. Before reporting a formal hypothesis-test result, calculate the p-value and confidence interval from the transaction-level dataset rather than using the correlation alone.

## Author

**Chippa Laxman**  
Data Analytics Intern | ApexPlanet Software Solutions
