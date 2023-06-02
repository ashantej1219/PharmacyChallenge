SELECT w.name as WarehouseFrom, p.name as PharmacyTo, d.DrugName, d.UnitPrice, d.TotalPrice, d.DeliveryDate
FROM dbo.Deliveries d
inner join dbo.Warehouses w on d.SourceWarehouse = w.Id
inner join dbo.Pharmacies as p on d.OrderingPharmacy = p.Id
;


SELECT
    w.Name AS WarehouseName,
    SUM(d.TotalPrice) AS TotalRevenue,
    SUM(d.UnitCount) AS TotalUnits,
    SUM(d.TotalPrice) / SUM(d.UnitCount) AS AverageProfit
FROM dbo.Warehouses w
INNER JOIN dbo.Deliveries d ON w.Id = d.SourceWarehouse
GROUP BY w.Name
ORDER BY TotalRevenue DESC;



