# E-Commerce Sales & Customer Analysis

An end-to-end data analytics project using **Oracle SQL, Microsoft Excel, and Power BI** to analyze e-commerce sales, customers, products, regions, and shipping patterns.

---

## 📌 Project Overview

This project analyzes **9,800 e-commerce transaction records** covering the period from **2015 to 2018**.

The objective was to transform raw transaction data into meaningful business insights using:

- Microsoft Excel for data inspection and validation
- Oracle SQL for data analysis
- Power BI for interactive visualization and dashboard development

The project follows a complete data analytics workflow:

**Raw Data → Data Validation → SQL Analysis → Business Insights → Power BI Dashboard**

---

## 🎯 Business Problem

An e-commerce business needs to understand its sales performance and customer behavior.

The analysis focuses on questions such as:

- What are the overall sales?
- Which year generated the highest sales?
- Which product category performs best?
- Which region generates the most sales?
- Which customer segment contributes the most revenue?
- Which sub-categories are the strongest?
- Which customers generate the highest sales?
- What are the monthly sales trends?
- Which shipping methods are most commonly used?

---

## 📊 Dataset

The dataset contains **9,800 records and 18 columns**.

Important fields include:

- Order ID
- Order Date
- Ship Date
- Ship Mode
- Customer ID
- Customer Name
- Segment
- City
- State
- Region
- Product ID
- Category
- Sub-Category
- Product Name
- Sales

### Data Quality Checks

The dataset was checked for:

- Missing values
- Duplicate records
- Invalid sales values
- Date consistency
- Data types

Key findings:

- 9,800 records
- No exact duplicate rows
- 11 missing Postal Code values
- No zero or negative sales values
- Order dates range from January 3, 2015 to December 30, 2018

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| Microsoft Excel | Data inspection, validation and PivotTable analysis |
| Oracle SQL | Data querying and business analysis |
| Power BI | Interactive dashboard and visualization |

### SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- SUM()
- COUNT()
- DISTINCT
- HAVING
- Subqueries
- EXTRACT()
- ROUND()

---

## 🔎 Analysis Performed

### 1. Overall Sales

Total sales across the dataset were approximately:

**$2.26 Million**

The dataset contains:

- **4,922 unique orders**
- **793 unique customers**

---

### 2. Yearly Sales

| Year | Sales |
|---|---:|
| 2015 | $479,856 |
| 2016 | $459,436 |
| 2017 | $600,193 |
| 2018 | $722,052 |

**Insight:** 2018 was the strongest year, generating approximately $722K in sales.

---

### 3. Sales by Category

| Category | Sales |
|---|---:|
| Technology | $827,456 |
| Furniture | $728,659 |
| Office Supplies | $705,422 |

**Insight:** Technology was the highest-performing category, contributing approximately 36.6% of total sales.

---

### 4. Sales by Region

| Region | Sales |
|---|---:|
| West | $710,220 |
| East | $669,519 |
| Central | $492,647 |
| South | $389,151 |

**Insight:** The West region generated the highest sales at approximately $710K.

---

### 5. Sales by Customer Segment

| Segment | Sales |
|---|---:|
| Consumer | $1,148,061 |
| Corporate | $688,494 |
| Home Office | $424,982 |

**Insight:** The Consumer segment was the largest contributor, generating approximately $1.15M.

---

### 6. Sales by Sub-Category

Top-performing sub-categories included:

| Sub-Category | Sales |
|---|---:|
| Phones | $327,782 |
| Chairs | $322,823 |
| Storage | $219,343 |
| Tables | $202,811 |
| Binders | $200,029 |

**Insight:** Phones were the highest-selling sub-category at approximately $328K.

---

### 7. Customer Analysis

Customer-level analysis was performed using SQL to examine:

- Number of orders
- Total sales
- Average order value

The highest-selling customer was:

**Sean Miller — approximately $25,043**

The analysis also demonstrated that a higher number of orders does not necessarily result in higher total sales.

---

### 8. Monthly Sales Analysis

Monthly sales were analyzed across all four years.

The highest monthly sales occurred in:

**November 2018 — approximately $117,938**

The lowest monthly sales occurred in:

**February 2015 — approximately $4,520**

Later years generally showed stronger monthly sales performance.

---

### 9. Shipping Analysis

| Shipping Mode | Orders | Sales |
|---|---:|---:|
| Standard Class | 2,945 | $1,340,831 |
| Second Class | 944 | $449,914 |
| First Class | 772 | $345,572 |
| Same Day | 261 | $125,219 |

**Insight:** Standard Class was the dominant shipping method in the dataset.

---

# 📈 Power BI Dashboard

The final Power BI dashboard provides an interactive view of overall sales performance.

### Dashboard KPIs

- Total Sales
- Total Orders
- Total Customers

### Dashboard Visualizations

- Sales by Year
- Sales by Category
- Sales by Region
- Sales by Customer Segment
- Sales by Sub-Category

### Interactive Filters

- Year
- Region
- Category
- Customer Segment

These filters allow users to explore specific segments of the data interactively.

---

## 💡 Key Business Insights

1. **Technology** was the top-performing category with approximately **$827K** in sales.
2. **2018** was the strongest year with approximately **$722K** in sales.
3. The **West** region generated the highest sales at approximately **$710K**.
4. The **Consumer** segment generated approximately **$1.15M**, making it the largest customer segment.
5. **Phones** were the highest-selling sub-category at approximately **$328K**.
6. **November 2018** was the strongest month with approximately **$118K** in sales.
7. **Standard Class** was the most frequently used shipping method.

---

## 📌 Business Recommendations

Based on the analysis:

- Focus on maintaining and growing high-performing Technology products.
- Investigate the reasons behind regional differences in sales.
- Develop targeted strategies for the high-value Consumer segment.
- Investigate seasonal sales patterns to support marketing and inventory planning.
- Review low-performing sub-categories for potential improvement opportunities.
- Analyze customer purchasing behavior further to identify retention and high-value customer opportunities.

---

## 🧠 Skills Demonstrated

- Data Cleaning & Validation
- Microsoft Excel
- PivotTables
- Oracle SQL
- Data Aggregation
- Data Filtering
- Customer Analysis
- Time-Series Analysis
- Business Analysis
- Power BI
- Dashboard Development
- Data Visualization
- KPI Reporting
- Business Insights

---

## 📂 Project Files

- 📊 [Power BI Dashboard](Ecommerce_Sales_Analysis_Dashboard.pbix)
- 🧮 [SQL Analysis](sql/sales_analysis.sql)
- 📗 [Excel Workbook](excel/Ecommerce_Sales_Cleaned.xlsx)
- 🖼️ [Dashboard Screenshot](screenshots/dashboard.png)

---

## 📁 Project Structure

```text
ecommerce-sales-analysis/
│
├── README.md
│
├── data/
│   └── train.csv
│
├── sql/
│   └── sales_analysis.sql
│
├── powerbi/
│   └── Ecommerce_Sales_Analysis_Dashboard.pbix
│
├── excel/
│   └── Ecommerce_Sales_Cleaned.xlsx
│
└── screenshots/
    └── dashboard.png

---

## 🚀 Project Workflow

Raw Dataset
     ↓
Excel Data Inspection & Validation
     ↓
Oracle SQL Analysis
     ↓
Business Questions
     ↓
Business Insights
     ↓
Power BI Dashboard
     ↓
Interactive Reporting

---

## 📷 Dashboard Preview

![E-Commerce Sales Analysis Dashboard](screenshots/dashboard.png)

---

## 👩‍💻 About the Project

This project was created as part of my transition into Data Analytics, with a focus on developing practical skills in SQL, Excel, Power BI, data analysis, and business intelligence.

