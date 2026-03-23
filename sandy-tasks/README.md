# 📝 Project Management & Task Tracking

[<- Back to Main Menu](https://github.com/SANDY-RAPHAEL-EPITAUX/Hotel-Booking-Analysis-Project)

This directory documents the project lifecycle, task prioritization, and technical challenges encountered during the Hotel Booking Analysis.

---

## ✅ Completed Tasks
* **Data Auditing:** Performed initial exploration in Google Sheets to identify duplicates and missing values.
* **SQL Migration:** Developed 6 core scripts in BigQuery to replicate and validate spreadsheet results.
* **Variance Analysis:** Successfully identified the cause of the $0.07 difference between toolsets (Rounding precision).
* **GitHub Architecture:** Established a structured repository to document technical assets.

---

## 🚧 Current Work
* **Tableau Integration:** Preparing the validated SQL datasets for high-fidelity visualization.
* **Executive Reporting:** Drafting the final business recommendations based on ADR and Lead Time findings.

---

## 🛠️ Technical Notes
* **Challenge:** Matching the 'DISTINCT' count between Sheets and SQL.
* **Solution:** Implemented a CTE (Common Table Expression) to pre-filter the dataset before performing aggregations.
