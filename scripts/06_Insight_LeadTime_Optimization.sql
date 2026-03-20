SELECT 
  CASE 
    WHEN lead_time <= 7 THEN 'Last Minute (0-7 days)'
    WHEN lead_time <= 30 THEN 'Short Term (8-30 days)'
    WHEN lead_time <= 90 THEN 'Medium Term (31-90 days)'
    ELSE 'Long Term (90+ days)'
  END AS booking_window,
  COUNT(*) AS total_bookings,
  ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate
FROM `hotel-booking-analysis-490703.hotel_bookings_raw.cleaned_data`
GROUP BY booking_window
ORDER BY cancellation_rate DESC;