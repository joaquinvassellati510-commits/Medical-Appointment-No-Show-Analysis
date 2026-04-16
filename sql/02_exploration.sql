##GENERAL METRICS

- Appoinment total
SELECT 
     COUNT(appointment_date) AS total_date
FROM cleaned_appointments

- Total no-show
SELECT SUM(has_missed) AS total_no_show
FROM cleaned_appointments

- % no-show
SELECT AVG(has_missed) * 100 AS average_no_show
FROM cleaned_appointments

- Estimated loss
SELECT SUM(has_missed) * 50 AS perdida_estimada_usd
FROM cleaned_appointments
