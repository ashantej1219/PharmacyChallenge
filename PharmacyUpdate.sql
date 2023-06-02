


ALTER PROC [dbo].[Pharmacies_Update]
                    @Name nvarchar(200)
				   ,@Address nvarchar(200)
				   ,@City nvarchar(200)
				   ,@State nvarchar(200)
				   ,@Zip nvarchar(200)
				   ,@PrescriptionsFilled int				   				    
				   ,@Id int 
AS

/*-------TEST CODE---

        Declare     @Name nvarchar(200) = ' Updated Pharmacy'
				   ,@Address nvarchar(200) = ' Updated Address'
				   ,@City nvarchar(200) = ' Updated Zipcode'
				   ,@State nvarchar(200) = ' Updated State '
				   ,@Zip nvarchar(200) = ' 00000'
				   ,@PrescriptionsFilled int = 2000			   				    
				   ,@Id int = 2
				   
				    
				   

Select *
	From dbo.Pharmacies
	where Id = @Id
				   

Execute [dbo].[Pharmacies_Update] 
                      @Name ,
					  @Address ,
					  @City ,
					  @State ,
					  @Zip,
					  @PrescriptionsFilled,
					  
					  @Id
Select *
From dbo.Pharmacies where Id=@Id;

*/

BEGIN
       Declare @DateModified datetime2(7) = getutcdate()


UPDATE [dbo].[Pharmacies]
   SET [Name] = @Name
      ,[Address] = @Address
      ,[City] = @City
      ,[State] = @State
      ,[Zip] = @Zip
      ,[PrescriptionsFilled] = @PrescriptionsFilled
	  ,[DateModified] = @DateModified
	  
      


 WHERE Id = @Id;
END

