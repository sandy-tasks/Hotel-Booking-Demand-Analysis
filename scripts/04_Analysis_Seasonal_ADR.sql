WITH unique_data AS (
  SELECT DISTINCT * FROM `hotel-booking-analysis-490703.hotel_bookings_raw.cleaned_data`
)
SELECT 
  arrival_date_month, 
  ROUND(AVG(average_daily_rate), 2) AS exact_adr
FROM unique_data
WHERE is_canceled = 0 
  AND average_daily_rate > 0
  AND meal != 'Undefined'
  AND market_segment != 'Complementary'
GROUP BY arrival_date_month
ORDER BY 
  CASE arrival_date_month 
    WHEN 'January' THEN 1 WHEN 'February' THEN 2 WHEN 'March' THEN 3 
    WHEN 'April' THEN 4 WHEN 'May' THEN 5 WHEN 'June' THEN 6 
    WHEN 'July' THEN 7 WHEN 'August' THEN 8 WHEN 'September' THEN 9 
    WHEN 'October' THEN 10 WHEN 'November' THEN 11 WHEN 'December' THEN 12 
  END;