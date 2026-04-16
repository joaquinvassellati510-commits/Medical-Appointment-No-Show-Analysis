##WITH
WITH cleaned_appointments AS (
SELECT
  Gender,
  Age,
  CASE WHEN `No-show` IS TRUE THEN 1 ELSE 0 END AS has_missed,
  CAST(ScheduledDay AS DATE) AS scheduled_date,
  CAST(AppointmentDay AS DATE) AS appointment_date,
  DATE_DIFF(CAST(AppointmentDay AS DATE), CAST(ScheduledDay AS DATE), DAY) AS wait_days,
  Diabetes,
  Hipertension,
  SMS_received,
  Neighbourhood
FROM `brave-smile-492614-n7.dataset_medical.Health`
WHERE Age >= 0
  AND CAST(AppointmentDay AS DATE) >= CAST(ScheduledDay AS DATE) 
  AND DATE_DIFF(CAST(AppointmentDay AS DATE), CAST(ScheduledDay AS DATE), DAY) <= 90 
)
