USE CarDealershipDB;
GO

--service record procedure
EXEC sp_AddServiceAppointment
    @CustomerID = 1,
    @AppointmentDate = '2026-06-10',
    @AppointmentTime = '09:30',
    @Status = 'Pending';

SELECT *
FROM ServiceAppointment
ORDER BY appointment_id DESC;


--car status update
DECLARE @Message VARCHAR(100);

EXEC sp_UpdateVehicleStatus
    @VehicleID = 1,
    @NewStatus = 'In Stock',
    @ResultMessage = @Message OUTPUT;

SELECT @Message AS Result;

SELECT *
FROM SaleVehicle
WHERE vehicle_id = 1;