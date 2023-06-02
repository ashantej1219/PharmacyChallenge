CREATE TABLE Pharmacy (
    Id INT PRIMARY KEY,
    Name NVARCHAR(100),
    Address NVARCHAR(100),
    City NVARCHAR(50),
    State NVARCHAR(50),
    Zip NVARCHAR(10),
    PrescriptionsFilled INT,
    DateCreated DATETIME,
    DateModified DATETIME
);


-- Table 1: Pharmacists
CREATE TABLE Pharmacists (
    PharmacistID INT PRIMARY KEY,
    PharmacyID INT,
    Name NVARCHAR(200),
    Age INT,
    PrimaryDrug NVARCHAR(50),
    DateOfHire DATE,
    FOREIGN KEY (PharmacyID) REFERENCES Pharmacy(Id)
);

-- Table 2: Warehouses
CREATE TABLE Warehouses (
    WarehouseID INT PRIMARY KEY,
    Name NVARCHAR(200),
    Address NVARCHAR(200)
);

-- Table 3: Deliveries
CREATE TABLE Deliveries (
    DeliveryID INT PRIMARY KEY,
    SourceWarehouseID INT,
    OrderingPharmacyID INT,
    DrugName NVARCHAR(20),
    UnitCount INT,
    UnitPrice DECIMAL(10, 2),
    TotalPrice DECIMAL(10, 2),
    DeliveryDate DATE,
    FOREIGN KEY (SourceWarehouseID) REFERENCES Warehouses(WarehouseID),
    FOREIGN KEY (OrderingPharmacyID) REFERENCES Pharmacy(Id)
);

-- Insert data into Warehouses table
INSERT INTO Warehouses (WarehouseID, Name, Address)
VALUES
    (1, 'Warehouse A', '123 Main St'),
    (2, 'Warehouse B', '456 Elm St'),
    (3, 'Warehouse C', '789 Oak St');

-- Insert data into Deliveries table
INSERT INTO Deliveries (DeliveryID, SourceWarehouseID, OrderingPharmacyID, DrugName, UnitCount, UnitPrice, TotalPrice, DeliveryDate)
VALUES
    (1, 1, 1, 'Klonopin', 100, 5.99, 599.00, DATEADD(WEEK, -4, GETDATE())),
    (2, 2, 2, 'Omeprexol', 200, 9.99, 1998.00, DATEADD(WEEK, -3, GETDATE())),
	(3, 3, 3, 'Tylenol', 500, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(4, 3, 2, 'Xanax', 500, 30.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(5, 3, 2, 'Pantoprozol', 500, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(6, 3, 3, 'Zolex', 300, 1.99, 600.00, DATEADD(WEEK, -3, GETDATE())),
	(7, 2, 2, 'Ridilin', 700, 3.99, 2800.00, DATEADD(WEEK, -3, GETDATE())),
	(8, 2, 1, 'Iron', 800, 0.99, 800.00, DATEADD(WEEK, -3, GETDATE())),
	(9, 2, 3, 'Magnesium', 500, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(10, 1, 3, 'Vit B 25mg', 500, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(11, 2, 2, 'Prolax', 500, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(12, 1, 1, 'Phetermine', 200, 5.99, 1200.00, DATEADD(WEEK, -3, GETDATE())),
	(13, 2, 3, 'L-Theamine', 4000, 1.99, 8000.00, DATEADD(WEEK, -3, GETDATE())),
	(14, 1, 2, 'Thamine', 500, 6.99, 3500.00, DATEADD(WEEK, -3, GETDATE())),
	(15, 2, 1, 'Zinc', 50, 4.99, 250.00, DATEADD(WEEK, -3, GETDATE())),
	(16, 1, 2, 'Benedryl', 50, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(17, 2, 3, 'Asprin', 50, 1.99, 100.00, DATEADD(WEEK, -3, GETDATE())),
	(18, 1, 2, 'Predisone', 500, 1.99, 200.00, DATEADD(WEEK, -3, GETDATE())),
	(19, 2, 3, 'Analepril', 200, 1.99, 400.00, DATEADD(WEEK, -3, GETDATE())),
	(20, 3, 1, 'Vitamin C', 200, 2.99, 600.00, DATEADD(WEEK, -3, GETDATE()))
;

	   	  
-- Insert data into Pharmacists table

INSERT INTO Pharmacists (PharmacistID, PharmacyID, Name, Age, PrimaryDrug, DateOfHire)
VALUES
    (1, 1, 'Dr Ashante Jackson', 30, 'Klonopin', '2020-01-01'),
    (2, 2, 'Dr Jedan Adams', 35, 'Omeprexol', '2019-06-15'),
	(3, 3, 'Dr Auror Julian', 35, 'L-Theanine', '2019-06-15')
;