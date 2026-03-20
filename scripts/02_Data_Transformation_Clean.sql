CREATE OR REPLACE TABLE `hotel-booking-analysis-490703.hotel_bookings_raw.cleaned_data`
AS
SELECT 
  hotel,
  CAST(NULLIF(is_canceled, 'NA') AS INT64) AS is_canceled,
  CAST(NULLIF(lead_time, 'NA') AS INT64) AS lead_time,
  arrival_date_year,
  arrival_date_month,
  CAST(NULLIF(arrival_date_day_of_month, 'NA') AS INT64) AS arrival_day,
  CAST(NULLIF(stays_in_weekend_nights, 'NA') AS INT64) AS weekend_nights,
  CAST(NULLIF(stays_in_week_nights, 'NA') AS INT64) AS week_nights,
  -- We use SAFE_CAST here just in case there are other weird text values
  (SAFE_CAST(NULLIF(adults, 'NA') AS INT64) + 
   SAFE_CAST(NULLIF(children, 'NA') AS INT64) + 
   SAFE_CAST(NULLIF(babies, 'NA') AS INT64)) AS total_guests,
  meal,
  country,
  market_segment,
  SAFE_CAST(NULLIF(adr, 'NA') AS FLOAT64) AS average_daily_rate,
  reservation_status,
  SAFE_CAST(NULLIF(reservation_status_date, 'NA') AS DATE) AS reservation_date
FROM `hotel-booking-analysis-490703.hotel_bookings_raw.raw_data`
WHERE adults IS NOT NULL;