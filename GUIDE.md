# 📖 **Project Guide: Hotel Booking Demand Analysis**

This document serves as the primary technical walkthrough for reproducing the 2015 Hotel Booking Analysis. It follows the **6-Phase Google Data Analytics Methodology** to move from raw data to executive-level insights.

---

## 🎯 **Phase 1: ASK (Defining the Scope)**
1.  **Define the Goal:** Identify revenue-driving factors (ADR) and operational preferences (Meal Types).
2.  **Identify Stakeholders:** Hotel Management Team and Revenue Management Department.
3.  **Core Objective:** Reconcile spreadsheet-based data with SQL-validated results to ensure a 1:1 match in reporting.

---

## 🏗️ **Phase 2: PREPARE (Sourcing & Integrity)**
1.  **Sourcing:** Download the 2015 Hotel Booking Demand dataset (CC0: Public Domain).
2.  **Integrity Check:** Verify the data for **Zero Bias**. Ensure the split between **City Hotel** and **Resort Hotel** records is balanced.
3.  **Data Ethics:** Confirmed no demographic or geographic bias was detected during the initial prepare phase.

---

## 🧹 **Phase 3: PROCESS (Cleaning & Auditing)**
1.  **Audit:** Start with 119,390 records. Identify and remove 31,994 duplicates to reach **87,397 unique records**.
2.  **Technique (Sheets):** Execute `TRIM` and `CLEAN` on categorical columns to remove invisible characters that interfere with data joins.
3.  **Null Treatment:** Use filters to locate 4 missing values in the `children` column and impute them with "0".
4.  **Enrichment:** Apply `VLOOKUP` to map technical meal codes (e.g., SC, BB) to full labels (e.g., Self Catering, Bed & Breakfast) in a new `meal_type` column.

---

## 🧮 **Phase 4: ANALYZE (Aggregation & SQL Validation)**
1.  **Migration:** Upload the cleaned CSV to **Google BigQuery**.
2.  **SQL Validation:** Run the [6 SQL Scripts](./scripts/sql_codes/) to confirm the **$150.81 ADR** benchmark.
3.  **Technical Reconciliation:** Resolve the $0.07 variance by adjusting SQL rounding precision (decimal handling) to match the spreadsheet audit exactly.
4.  **Logic:** Utilize SQL CTEs and Pivot Tables to group data by month, lead time, and hotel type.

---

## 🎨 **Phase 5: SHARE (Visualization Strategy)**
1.  **Modeling:** Connect the validated SQL dataset to **Tableau**.
2.  **Visual Pillars:**
    * **Revenue:** Time-Series Bar Chart of Average ADR (Peak: August at **$150.81**).
    * **Operational:** Distribution of Meal Plan choices (Dominance: Bed & Breakfast).
    * **Behavioral:** Mapping Lead Time vs. Cancellation rates to identify risk zones.
3.  **The "Executive View":** Use high-contrast colors, clear titles, and interactive tooltips for stakeholder clarity.

---

## 💡 **Phase 6: ACT (Conclusions & Implementation)**
1.  **Revenue Action:** Recommend dynamic pricing for the **August peak** to capitalize on the high seasonal ADR.
2.  **Inventory Action:** Prioritize supply chain efficiency for **Bed & Breakfast** packages.
3.  **Risk Management:** Implement automated non-refundable deposit triggers for bookings with a **Lead Time** exceeding 120 days.

---
* **Result:** Final verified August ADR must stand at **$150.81**.
