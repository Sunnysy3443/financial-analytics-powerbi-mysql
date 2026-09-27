# Financial Analytics & Sales Performance Dashboard

## 📌 Project Overview
An end-to-end Business Intelligence solution connecting a local MySQL database to Power BI, featuring a Star Schema data model, custom time-intelligence DAX calculations, and an interactive executive report.

## 🛠️ Tech Stack & Tools
* **Database:** MySQL
* **Data Visualization:** Power BI Desktop
* **Data Modeling:** Star Schema (1:* Relationships)
* **Analytics Language:** DAX (Data Analysis Expressions)

## 📊 Key Insights & Features
* **Star Schema Architecture:** Modeled `fact_sales` against `dim_product` and a custom DAX-generated `Dim_Date` table.
* **Time Intelligence DAX:** Built measures for `Total Revenue`, `Total Target`, `PY_Revenue`, and `YoY_Growth_%` (achieving 43.48% YoY growth in 2026).
* **Interactive Drill-Downs:** Real-time slicers dynamically update top-level KPI cards and trend charts across categories (Software, Hardware, Services).

## 📸 Dashboard Preview
![Dashboard Overview](Dashboard%20Preview%201)
![Executive Summary](Dashboard%20Preview%202)
![Product Analytics](Dashboard%20Preview%203)
![Regional Performance](Dashboard%20Preview%204)
