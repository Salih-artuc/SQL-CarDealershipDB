SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    COUNT(sr.record_id) AS total_service_count
FROM Customer c
INNER JOIN ServiceAppointment sa
    ON c.customer_id = sa.customer_id
INNER JOIN ServiceRecord sr
    ON sa.appointment_id = sr.appointment_id
GROUP BY
    c.customer_id,
    c.first_name,
    c.last_name
HAVING COUNT(sr.record_id) >= 1;