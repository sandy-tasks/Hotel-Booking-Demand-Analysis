# 🏨 Hotel Booking Demand Analysis

## 1. 📋 Introduction
This project analyzes hotel booking data to understand factors influencing cancellations, booking trends, and revenue metrics. It serves as a comprehensive case study for data-driven decision-making in the hospitality industry, following the Google Data Analytics Professional Certificate methodology.

---

## 2. 🎯 Business Problem (Ask)

### 🥅 Goal
To understand the factors that lead to booking cancellations and identify seasonal revenue trends to provide actionable insights for hotel management.

### 👥 Stakeholders
* Hotel Management Team
* Revenue Management Department

### ❓ Key Business Questions
1. What is the current cancellation rate for city and resort hotels?
2. How do seasonal trends influence the Average Daily Rate (ADR)?
3. What are the dominant guest service preferences (Meal Plans)?
4. How can the hotel optimize revenue strategies based on these findings?

---

## 3. 🧹 Data Validation & Preparation (Process)

### 🛠️ Data Integrity
* **Source:** Verified dataset integrity and confirmed CC0: Public Domain license.
* **Scope:** 119,390 initial records.

### 🧼 Chronological Cleaning Steps
1. **De-duplication:** Removed 31,994 duplicate rows, resulting in **87,397 unique records**.
2. **Space & Character Scrubbing:** Utilized the `TRIM` and `CLEAN` functions across the categorical columns (especially Meal Codes) to remove invisible leading/trailing spaces and non-printable characters that interfere with data joins.
3. **Null Value Treatment:** Used filters to identify 4 missing values in the `children` column; addressed by imputing with "0" to maintain guest count accuracy.
4. **Data Enrichment (VLOOKUP):** Integrated a secondary reference table to decode technical codes. Created a new calculated column: `meal_type`.
5. **Standardization:** Converted `ADR` to Currency and `arrival_date` into a unified Date format for time-series consistency.

---

## 4. 📈 Analysis & Visualizations (Analyze & Share)

### 🧮 Pivot Table Summarization
Utilized Pivot Tables to aggregate 87k+ rows into meaningful trends:
* **Seasonality:** Calculated average ADR per month to identify peak and off-peak periods.
* **Operational Mix:** Analyzed the distribution of meal plan choices across different hotel types.

### 🖥️ Executive Dashboard
I developed a professional dashboard in Google Sheets featuring:
* **ADR Seasonality Chart:** Highlighting August as the peak revenue month ($140.10).
* **Meal Preference Bar Chart:** Visualizing the dominance of Bed & Breakfast (BB) services.
* **Static Executive Summary:** A dedicated insight box for high-level stakeholders.

---

## 5. 💡 Key Business Insights (Act)

* **💰 Revenue Optimization:** Increase marketing and dynamic pricing for the August peak to maximize ROI.
* **📉 Occupancy Strategy:** Implement "Winter Escape" promotions in January to counteract the lowest ADR month of the year.
* **🍳 Operational Inventory:** Prioritize supply chain efficiency for Bed & Breakfast packages, as they are the primary revenue driver in guest services.

---
