# 🏨 **Hotel Booking Demand Analysis (2015)**

## 📋 **1. INTRODUCTION**
This project provides a data-driven analysis of hotel booking trends to optimize revenue and operational efficiency. Following the **Google Data Analytics Professional Certificate (Coursera)** methodology, I conducted a full-cycle analysis—starting with raw data auditing in **Google Sheets**, transitioning to technical validation in **Google BigQuery (SQL)**, and concluding with an executive dashboard in **Tableau**.

---

## 🎯 **2. ASK: The Business Problem**
The objective was to identify variables driving cancellations and seasonal revenue fluctuations to provide actionable insights for hotel management.
* **Stakeholders:** Hotel Management Team, Revenue Management Department.
* **Key Questions:** 1. How do seasonal trends influence the Average Daily Rate (ADR)?
    2. What are the dominant guest service preferences (Meal Plans)?
    3. How can we optimize pricing and inventory based on booking lead times?

---

## 🏗️ **3. PREPARE: Data Sourcing & Integrity**
* **Source:** 2015 Hotel Booking Demand dataset (CC0: Public Domain).
* **Initial Scope:** 119,390 records across 32 variables.
* **Bias & Integrity Check:** I verified the dataset for **Zero Bias** and **Full Integrity** to ensure it representatively covers both City and Resort hotels without skewed demographic data. The dataset was confirmed as "Clean" for ethical analysis.

---

## 🧹 **4. PROCESS: Data Validation & Preparation**

### 🛠️ **Data Integrity Assessment**
Confirmed the dataset's reliability and consistency before beginning the cleaning phase to ensure results were not influenced by "dirty" data or non-printable characters.

### 🧼 **Chronological Cleaning Steps (Google Sheets)**
1.  **De-duplication:** Identified and removed 31,994 duplicate rows, resulting in **87,397 unique records**.
2.  **Space & Character Scrubbing:** Utilized `TRIM` and `CLEAN` functions across categorical columns (specifically Meal Codes) to remove invisible leading/trailing spaces and non-printable characters that break data joins.
3.  **Null Value Treatment:** Identified 4 missing values in the `children` column; addressed by imputing with "0" to maintain guest count accuracy.
4.  **Data Enrichment (VLOOKUP):** Integrated a secondary reference table to decode technical codes into a new calculated column: `meal_type`.
5.  **Standardization:** Converted `ADR` to Currency and `arrival_date` into a unified Date format for time-series consistency.

### ⚙️ **Technical Validation (BigQuery SQL)**
I migrated the cleaned data to **Google BigQuery** for a "Single Source of Truth."
* **Scripting:** Developed [6 SQL Scripts](./scripts/) to replicate the Sheets results.
* **Reconciliation:** Successfully resolved a $0.07 variance in ADR caused by toolset rounding differences, validating the final peak ADR at **$150.81**.

---

## 🧮 **5. ANALYZE: Data Aggregation & Logic**
Using Pivot Tables and SQL CTEs, I identified critical business metrics:
* **Seasonality:** Pinpointed August as the peak revenue month.
* **Operational Mix:** Grouped guest counts to assess meal plan distribution.
* **Lead Time Trends:** Categorized booking windows to identify "Sweet Spots" for hotel occupancy.

---

## 🎨 **6. SHARE: Visualizing Executive Insights**
I developed an interactive reporting layer that looks beyond just revenue to include guest behavior and operational logistics.

* **Live Interactive Dashboard:** [**View on Tableau Public**](https://public.tableau.com/app/profile/sandy.epitaux/viz/Hotel_Booking_Analysis_Final/Hotel_Booking_Analysis_Summary)
* **Key Visual Pillars:** 1. **ADR Seasonality:** Visualizing the **$150.81** peak.
    2. **Meal Preferences:** Highlighting the dominance of Bed & Breakfast (BB) packages.
    3. **Booking Lead Time:** Mapping out when guests book vs. their cancellation rates.
* **Technical Asset:** [**Download Master .twbx File**](./visualizations/Hotel_Booking_Analysis_Final.twbx)

---

## 💡 **7. ACT: Conclusion & Recommendations**
* **💰 Revenue Optimization:** Increase marketing for the **August peak ($150.81 ADR)** to maximize ROI.
* **📉 Occupancy Strategy:** Launch "Winter Escape" promotions for **January** to counteract the lowest seasonal revenue period.
* **🍳 Operational Efficiency:** Prioritize supply chain resources for **Bed & Breakfast (BB)** packages, as they are the primary revenue driver.
* **📅 Policy Adjustment:** Refine deposit policies for long-term bookings based on the **Lead Time vs. Cancellation** data.

---

## 🛠️ **Tools Used**
* **Google Sheets:** (Cleaning, VLOOKUP, Pivot Tables)
* **Google BigQuery:** (SQL Validation, CTEs)
* **Tableau Desktop:** (Data Modeling, Dashboards)
