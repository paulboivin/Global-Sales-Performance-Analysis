# Global Sales Performance Analysis — Multinational Conglomerate (2022–2024)

## Overview: This project presents an end-to-end data analysis of global sales performance for a fictional multinational conglomerate operating across five regions and eight product categories over a three year period from 2022 to 2024. The project covers the full analyst workflow - synthetic data generation, data cleaning, exploratory data analysis, SQL querying, and constructing an interactive dashboard - using Python, SQL, and Power BI. It demonstrates practical data analysis skills relevant to entry-level data analyst, business intelligence and financial analyst roles. 

---

## Business Problem
A multinational company experienced a consistent year-over-year revenue decline between 2022 and 2024, representing a cumulative loss of approximately $8.9M in annual revenue. Stakeholders required a clear understanding of where declines were concentrated- by region, by product category, and over time- in order to identify actionable opportunities to reverse the trend. This analysis was designed to answer four core business questions:

1. Which regions generate the most and least revenue?
2. What product categories are the top sellers by region?
3. Are there seasonal trends in sales across markets?
4. What does the year-over-year revenue trend look like, and where is the decline concentrated?

---

## Tools and Technologies

**Python (pandas, matplotlib, seaborn):** Used for data loading, cleaning, and exploratory analysis. The cleaning process addressed data quality issues including duplicates, missing values, formatting inconsistencies, incorrect data types, and outliers. Visualizations were produced to identify trends, category performance, and regional patterns.

**SQL (SQLite via DBeaver, aggregate functions, LAG):** Used to answer the four core business questions through structured queries, confirm Python findings, and surface additional analytical insights not identified during the EDA phase, including a seasonal transaction value anomaly.

**Power BI:** Used to build an interactive dashboard visualizing the cleaned dataset. The dashboard allows stakeholders to explore revenue trends by region, category, and time period, and serves as the primary presentation deliverable for this project.

---

## Dataset
The dataset was synthetically generated for this project using a generative large language model. It represents three years of monthly sales transactions (2022–2024) for a fictional multinational conglomerate operating across five global regions — North America, Europe, Asia-Pacific, Latin America, and the Middle East — and eight product categories: Raw Materials, Industrial Equipment, Food & Beverage, Electronics, Apparel & Footwear, Automotive Parts, Consumer Goods, and Pharmaceuticals.

The raw dataset contains 7,201 rows and 11 columns, with 12% of entries containing intentional data quality issues, such as duplicate rows, missing values, formatting inconsistencies, incorrect data types, and outliers. This was done to simulate realistic data cleaning conditions. After cleaning, the final dataset contains 6,672 rows across 12 columns.

---

## Project Workflow

1. **Scope Definition** — Defined the business problems, selected the scenario, and established dataset parameters including regions, product categories, row count, and messiness level.
2. **Data Generation** — Synthetic dataset generated with realistic pricing logic, geographic accuracy, currency matching, and intentional data quality issues.
3. **Data Cleaning (Python)** — Removed duplicates, handled missing values, standardized formatting, corrected data types, and removed outliers using category-level price caps.
4. **Exploratory Data Analysis (Python)** — Produced seven charts examining revenue by region, category, year, country, and time to surface key trends and patterns.
5. **SQL Analysis (SQLite)** — Wrote five queries covering regional revenue share, category performance by region, year-over-year trends using LAG window functions, cumulative change calculation, and seasonal patterns. Surfaced the December transaction value anomaly.
6. **Dashboard (Power BI)** — Built a six-visual interactive dashboard presenting the core findings for a business audience.
7. **Insight Narrative** — Wrote a structured business document translating analytical findings into plain language recommendations for stakeholders.
8. **Documentation** — Organized project files into a structured repository and created this README.

---

## Key Findings

- Raw Materials accounts for 70% of total company revenue across all regions, generating nearly ten times more than the second highest category, Industrial Equipment. This concentration creates significant revenue exposure to shifts in global commodity demand.
- Total revenue declined 8.95% between 2022 and 2024, falling from $99.4M to $90.5M annually, driven primarily by consistent Raw Materials and Industrial Equipment sales declines across all regions.
- The Middle East is the only region showing growth momentum, recovering above its 2022 revenue baseline by 2024. Asia-Pacific showed partial recovery after a dip in 2023. North America, Europe, and Latin America all declined.
- Latin America experienced the sharpest regional decline between 2023 and 2024, broad across all countries in the region, suggesting a regional economic or demand shift rather than a country-specific issue.
- Pharmaceuticals is the lowest performing product category by total revenue and, alongside Consumer Goods and Automotive Parts, represents a potential growth opportunity less directly tied to global commodity dynamics.
- A seasonal revenue anomaly was identified during the SQL analysis; December consistently generates the highest revenue per transaction of any month, nearly double the second ranked month of July, despite having the lowest transaction count. This warrants a separate investigation.

---

## Recommendations

1. **Reduce revenue concentration risk** — Set growth targets for Pharmaceuticals, Consumer Goods, and Automotive Parts with the goal of increasing their combined share of total revenue over the next two to three years.
2. **Prioritize the Middle East as a growth market** — Its demonstrated recovery above the 2022 revenue baseline suggests a receptive market environment where targeted investment could yield meaningful gains.
3. **Investigate Latin America's accelerating decline** — Determining whether the downturn is economic, competitive, or product-fit related is essential before designing and implementing a recovery strategy.

---

## Repository Structure

Global-Sales-Performance-Analysis/
│
├── README.md                                        — This document
│
├── data/
│   ├── global_sales_performance.csv                 — Raw dataset (7,201 rows, 11 columns)
│   └── Global_Sales_Performance_Cleaned.csv         — Cleaned dataset (6,672 rows, 12 columns)
│
├── python/
│   ├── Global_Sales_Performance_Cleaning.ipynb      — Data cleaning notebook (pandas)
│   └── Global_Sales_Performance_EDA.ipynb           — Exploratory data analysis notebook
│
├── sql/
│   ├── 01_revenue_by_region.sql                     — Regional revenue with share percentage
│   ├── 02_revenue_by_category_per_region.sql        — Category performance by region
│   ├── 03_year_over_year_trend.sql                  — YoY revenue change using LAG
│   ├── 04_cumulative_change.sql                     — Cumulative 3-year revenue change
│   └── 05_seasonal_trends.sql                       — Monthly revenue and transaction patterns
│
├── dashboard/
│   └── Global_Sales_Performance_Dashboard.pbix      — Interactive Power BI dashboard
│
└── insights/
└── Global_Sales_Performance_Insight_Narrative   — Full business narrative and recommendations

---

## Known Limitations
This dataset was synthetically created through a generative language model and is not representative of any real company or transactions. As a result, the dataset reflects an unusually high revenue concentration in a single product category and relatively even revenue distribution across regions, both of which are more exaggerated than would typically be observed in a real multinational business context. This data is also limited in scope and size, lacking the complexity of transactions such as returns, discounts, or multi-currency reconciliation typically found in real world international business environments. These nuances would be identified and addressed in a project utilizing real-world business data.

---

## How to Run the Project
This project requires Python with pandas, matplotlib, and seaborn installed via Anaconda, a SQLite-compatible SQL client such as DBeaver for the SQL queries, and Power BI Desktop for the dashboard file. All data files are located in the data folder.
