--Analysis

--Wait days vs No shows
SELECT 
  wait_days,
  COUNT(*) AS total_turnos,
  ROUND(AVG(has_missed) * 100, 2) AS tasa_no_show
FROM cleaned_appointments
GROUP BY wait_days
ORDER BY wait_days;

--Days range
SELECT
CASE
WHEN wait_days BETWEEN 0 AND 1 THEN '0-1 days'
WHEN wait_days BETWEEN 2 AND 7 THEN '2-7 days'
WHEN wait_days BETWEEN 8 AND 14 THEN '8-14 days'
ELSE '15+ days'
END AS days_range,
    COUNT(*) AS total_appointments,
    ROUND(AVG(has_missed) * 100, 2) AS tasa_no_show
FROM cleaned_appointments
GROUP BY days_range
ORDER BY days_range;

--SMS + Wait Days
SELECT 
  SMS_received,
  CASE
    WHEN wait_days BETWEEN 0 AND 1 THEN '0-1 days'
    WHEN wait_days BETWEEN 2 AND 7 THEN '2-7 days'
    WHEN wait_days BETWEEN 8 AND 14 THEN '8-14 days'
    ELSE '15+ days'
  END AS days_range,
  COUNT(*) AS total_turns,
  ROUND(AVG(has_missed) * 100, 2) AS tasa_no_show
FROM cleaned_appointments
GROUP BY SMS_received, days_range;
