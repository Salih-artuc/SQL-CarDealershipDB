USE CarDealershipDB;
GO

SELECT
    C.customer_id,
    C.first_name,
    C.last_name,
    V.plate,
    SV.price,
    SC.amount,
    SC.date
FROM Customer C
INNER JOIN SalesContract SC
    ON C.customer_id = SC.customer_id
INNER JOIN SaleVehicle SV
    ON SC.sale_vehicle_id = SV.vehicle_id
INNER JOIN Vehicle V
    ON SV.vehicle_id = V.vehicle_id;