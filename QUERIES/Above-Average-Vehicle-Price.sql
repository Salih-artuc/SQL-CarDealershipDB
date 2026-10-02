SELECT
    vehicle_id,
    type,
    status,
    price
FROM SaleVehicle
WHERE price >
(
    SELECT AVG(price)
    FROM SaleVehicle
);