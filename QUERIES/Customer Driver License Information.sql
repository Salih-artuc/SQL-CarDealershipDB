SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    dl.class,
    dl.expiry_date
FROM Customer c
LEFT JOIN DriverLicense dl
    ON c.customer_id = dl.customer_id
ORDER BY c.customer_id;