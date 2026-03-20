WITH unique_data AS (
  SELECT DISTINCT * FROM `hotel-booking-analysis-490703.hotel_bookings_raw.cleaned_data`
)
SELECT 
  meal, 
  COUNT(*) AS meal_count,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM unique_data
WHERE is_canceled = 0
GROUP BY meal
ORDER BY meal_count DESC;