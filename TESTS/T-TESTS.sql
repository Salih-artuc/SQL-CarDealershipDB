--sale vehicle trigger
/* INSERT INTO SaleVehicle
(vehicle_id, type, status, price)
VALUES
(2, 'Used', 'Available', 100000);
*/

--customer vehicle trigger
/*
INSERT INTO CustomerVehicle
(vehicle_id, purchase_date, customer_id)
VALUES
(3, GETDATE(), 1);
*/

--replacement vehicle trigger
/*
INSERT INTO ReplacementVehicle
(vehicle_id, status)
VALUES
(7, 'Available');
*/

--auditlog
/*
UPDATE Vehicle
SET color = 'Black'
WHERE vehicle_id = 1;
SELECT *
FROM VehicleAuditLog;
*/

--last update trigger
UPDATE Vehicle
SET color = 'Black'
WHERE vehicle_id = 1;
SELECT
    vehicle_id,
    color,
    last_updated
FROM Vehicle
WHERE vehicle_id = 1;