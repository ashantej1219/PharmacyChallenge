

ALTER Proc [dbo].[Pharmacies_SelectAll]

AS

/*

Execute dbo.Pharmacies_SelectAll

*/

BEGIN


	SELECT              p.Id
      ,p.Name
      ,p.Address
      ,p.City
      ,p.State
      ,p.Zip
      ,p.PrescriptionsFilled
      ,p.DateCreated
      ,p.DateModified
      ,phi.Id as PharmacistInfo
	  ,phi.Name
	  ,phi.Age
	  ,phi.DOH
      ,w.Id as WarehouseInfo
	  ,w.Name
	  ,w.Address

	FROM dbo.Pharmacies as p
	inner join dbo.Pharmacists as phi ON p.PharmacistInfo = phi.Id 
	inner join dbo.Warehouses as w ON p.WarehouseInfo = w.Id
	

END
