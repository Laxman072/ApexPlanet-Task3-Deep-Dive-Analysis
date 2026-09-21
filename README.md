# ApexPlanet Task 3 — Sales Deep-Dive Analysis & Interactive Dashboard

## 📊 Project Overview

This project is part of my **ApexPlanet Data Analytics Internship – Task 3**.

The objective of this task was to move beyond basic exploratory data analysis and perform a **deep-dive analysis of sales performance**, identify important business patterns, and develop an **interactive Power BI dashboard** for business decision-making.

The analysis focuses on **product performance, customer value, geographic trends, demographic segments, and potential revenue drivers**.

---

## 🎯 Business Objective

> **Identify the major contributors to sales revenue and understand how product, customer, geographic, and demographic factors are associated with overall sales performance.**

---

## 📁 Dataset

The cleaned sales dataset contains:

| Metric              |    Value |
| ------------------- | -------: |
| Total Records       |    1,000 |
| Unique Orders       |      992 |
| Unique Customers    |      947 |
| Total Quantity Sold |    5,435 |
| Total Revenue       | ₹139.40M |
| Average Order Value | ₹140.52K |

---

## 📌 Key KPIs

### Total Revenue

**₹139,399,439.65**

### Total Orders

**992**

### Total Customers

**947**

### Total Quantity

**5,435 units**

### Average Order Value

**₹140,523.63**

---

# 🔍 Deep-Dive Analysis

## 1. Product Performance

The analysis compared products based on both revenue and quantity.

| Product | Revenue | Quantity |
| ------- | ------: | -------: |
| Laptop  | ₹25.44M |      970 |
| Mobile  | ₹25.34M |    1,008 |
| Book    | ₹25.03M |      977 |
| Rice    | ₹22.23M |      826 |
| Chair   | ₹21.52M |      855 |
| Shoes   | ₹19.84M |      799 |

### Key Insight

* **Laptop** generated the highest product revenue.
* **Mobile** recorded the highest quantity sold.
* Revenue leadership and volume leadership are therefore different.

---

## 2. Geographic Analysis

Revenue was analyzed across different cities.

### Key Finding

**Patna** recorded the highest city revenue at approximately **₹19.29M**.

Other high-revenue cities included:

* Kolkata
* Bengaluru
* Mumbai
* Hyderabad

The dashboard allows users to select a city and explore its associated products, customers, and demographics.

---

## 3. Customer Analysis

Customer-level revenue was analyzed to identify the highest-spending customers.

### Top Customers

| Customer ID |  Revenue |
| ----------- | -------: |
| CUST2062    | ₹493.68K |
| CUST4706    | ₹492.17K |
| CUST1711    | ₹490.87K |
| CUST4869    | ₹485.67K |
| CUST7416    | ₹482.55K |

A customer segmentation framework was also created based on total customer revenue.

### Customer Segments

* **Low Value:** < ₹100,000
* **Medium Value:** ₹100,000–₹249,999
* **High Value:** ₹250,000–₹399,999
* **Very High Value:** ≥ ₹400,000

> These thresholds are analyst-defined business rules for this project.

---

## 4. Demographic Analysis

Revenue was compared across age groups.

| Age Group | Revenue |
| --------- | ------: |
| 18–24     | ₹21.23M |
| 25–34     | ₹27.51M |
| 35–44     | ₹32.80M |
| 45–54     | ₹27.32M |
| 55–65     | ₹30.53M |

### Key Insight

The **35–44 age group** generated the highest recorded revenue at approximately **₹32.80M**.

However, the individual-level correlation between Age and Total Sales was approximately **0.001**, indicating almost no linear relationship.

Therefore, age is treated as a **segmentation variable rather than a direct linear sales driver**.

---

# 📈 Revenue Driver Analysis

Correlation analysis was used to examine relationships between selected variables and Total Sales.

| Variable   | Correlation with Total Sales |
| ---------- | ---------------------------: |
| Age        |                        0.001 |
| Quantity   |                        0.647 |
| Unit Price |                        0.686 |

### Interpretation

* **Quantity** shows a moderate positive association with Total Sales.
* **Unit Price** shows a relatively stronger positive association with Total Sales.
* **Age** has virtually no linear association with Total Sales.

> Correlation indicates association and does not establish causation.

---

# 📊 Power BI Dashboard

The interactive dashboard is organized into **three pages**.

## Page 1 — Executive Overview

### KPIs

* Total Revenue
* Total Orders
* Total Customers
* Total Quantity
* Average Order Value

### Visualizations

* Revenue by Product
* Revenue by City
* Revenue by Age Group
* Revenue by Gender
* Quantity vs Total Sales

### Filters

* Product
* City
* Gender
* Age Group

---

## Page 2 — Customer Deep Dive

### Visualizations

* Top 10 Customers by Revenue
* Customer Segment Distribution
* Revenue by Customer Segment
* Customer Detail Table
* Customer Drill-through

This page provides a detailed view of customer value and spending patterns.

---

## Page 3 — Revenue Drivers

### Visualizations

* Quantity vs Total Sales
* Unit Price vs Total Sales
* Product × Age Group Matrix
* Product Revenue vs Quantity
* City × Product Revenue

These visuals help explore the variables associated with revenue performance.

---

# 🛠️ Tools & Technologies

* **MySQL**
* **SQL**
* **Power BI**
* **DAX**
* **Microsoft Excel**
* **PowerPoint**

---



# 💡 Business Recommendations

Based on the analysis:

1. Monitor **Laptop** performance because it generated the highest product revenue.
2. Investigate the difference between **Mobile's high quantity** and Laptop's higher revenue.
3. Explore factors contributing to stronger performance in **Patna and other high-revenue cities**.
4. Use customer-level revenue segmentation to support customer analysis.
5. Further investigate the relationship between **Unit Price, Quantity, and Total Sales**.
6. Use demographic segments for analysis while avoiding unsupported causal conclusions.

---

# 📌 Key Takeaways

* Total sales reached **₹139.40M** across 1,000 records.
* Laptop generated the highest product revenue.
* Mobile recorded the highest quantity sold.
* Patna recorded the highest city revenue.
* The 35–44 age group generated the highest age-group revenue.
* Quantity and Unit Price showed stronger associations with Total Sales than Age.
* Interactive filtering makes it possible to explore these patterns from multiple business perspectives.

---

# 🚀 Learning Outcomes

Through this project, I strengthened my practical skills in:

* SQL-based business analysis
* KPI development
* Customer segmentation
* Exploratory and deep-dive analysis
* Power BI dashboard development
* DAX measures
* Data visualization
* Business storytelling
* Translating data into business insights

---

## 👨‍💻 Author

**Chippa Laxman**

Data Analytics Intern
**ApexPlanet Software Solutions**

**Skills:** SQL | Power BI | Excel | DAX | Data Analytics
