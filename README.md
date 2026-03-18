# Hotel Booking Demand Analysis
## 1. Introduction
This project analyzes hotel booking data to understand factors influencing cancellations, booking trends, and revenue metrics. This analysis serves as a comprehensive case study for data-driven decision-making in the hospitality industry.

## 2. Business Problem
### Ask
- **Goal:** To understand the factors that lead to booking cancellations and provide actionable insights for revenue management.
- **Stakeholders:** The Hotel Management Team.
- **Key Business Questions:**
    1. What is the current cancellation rate for city and resort hotels?
    2. How do booking lead times influence the probability of cancellation?
    3. Are there specific months or seasons with significantly higher cancellation rates?
    4. How can the hotel optimize revenue strategies based on these findings?
- **Data Validation:** Verified dataset integrity by checking for file corruption and confirming its CC0: Public Domain license for open use.
## Process
### Data Cleaning
- **Duplicates:** Removed 31,994 duplicate rows, leaving 87,397 unique records for analysis. This step ensures that each booking entry is distinct and prevents skewed calculations in our metrics.
- Data Transformation & Enrichment
Handled Missing Values: * Addressed 4 missing values in the children column by imputing with "0" to ensure accurate guest counts.

Validated the country column for consistency.

Meal Code Decoding (VLOOKUP): * Integrated a secondary reference table to translate technical meal codes (e.g., BB, HB, FB) into human-readable categories.

Created a new calculated column, meal_type, using the VLOOKUP function to ensure the dashboard visuals are clear for non-technical stakeholders.

Data Formatting: Standardized the ADR (Average Daily Rate) and arrival_date columns to currency and date formats for accurate time-series analysis.

Analyze & Share
Pivot Table Summarization
I utilized Pivot Tables to aggregate the 87,397 records to identify the following:

Seasonality Trends: Grouped data by arrival_date_month to calculate the Average ADR, identifying the peak revenue periods.

Service Distribution: Analyzed the frequency of meal_type selections across both City and Resort hotels.

Data Visualization (The "Share" Phase)
I developed a clean, professional Executive Dashboard to translate data into visual stories.

ADR Seasonality Chart: A combined bar and line chart showing that August is the highest revenue month with an Average Daily Rate of $140.10, while January is the lowest.

Meal Preference Analysis: A bar chart clearly identifying Bed & Breakfast (BB) as the dominant guest choice across both City and Resort hotels.

Executive Summary: Integrated a dedicated "Insight Box" to provide immediate value to stakeholders without requiring deep data dives.

Key Insights & Recommendations (The "Act" Phase)
Based on the analysis, I propose the following actions:

Dynamic Pricing: Increase marketing efforts and premium pricing for August to capitalize on peak demand.

Occupancy Strategy: Introduce "Early Bird" or "Winter Escape" promotions in January to boost the lowest ADR month of the year.

Operational Focus: Ensure kitchen and inventory supply chains are optimized for Bed & Breakfast services, as this is the most consistent revenue driver in the service category.
