SELECT 
  hotel, 
  COUNT(*) AS total_bookings,
  SUM(is_canceled) AS total_cancellations,
  ROUND(AVG(is_canceled) * 100, 2) AS cancellation_rate_percent
FROM `hotel-booking-analysis-490703.hotel_bookings_raw.cleaned_data`
GROUP BY hotel;