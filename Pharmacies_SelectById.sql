USE [PharmacyDB]
GO
/****** Object:  StoredProcedure [dbo].[Pharmacies_SelectById]    Script Date: 5/31/2023 7:36:42 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC  [dbo].[Pharmacies_SelectById]
                     @Id int 

as 

/*  ---- test code ----
Declare @Id int =3;
Execute dbo.Pharmacies_SelectById @Id


Select *
From dbo.Pharmacies where Id=@Id;


*/


BEGIN 

SELECT
       p.Id
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


  FROM [dbo].[Pharmacies] as p 
  
  inner join dbo.Pharmacists as phi on p.PharmacistInfo = phi.Id
  inner join dbo.Warehouses as w on p.WarehouseInfo = w.Id

  Where p.Id = @Id

END


