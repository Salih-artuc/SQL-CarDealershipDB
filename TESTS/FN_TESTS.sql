USE CarDealershipDB;
GO

-- total sale price (customer)
SELECT dbo.fn_TotalPurchaseAmount(1) AS TotalPurchase;

SELECT dbo.fn_TotalPurchaseAmount(4) AS TotalPurchase;

SELECT dbo.fn_TotalPurchaseAmount(999) AS TotalPurchase;


-- customer total service record
SELECT dbo.fn_TotalServiceCount(1) AS ServiceCount;

SELECT dbo.fn_TotalServiceCount(3) AS ServiceCount;

SELECT dbo.fn_TotalServiceCount(4) AS ServiceCount;