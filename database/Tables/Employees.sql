IF NOT EXISTS (
    SELECT 1 FROM sys.tables WHERE name = 'Employees' AND schema_id = SCHEMA_ID('dbo')
)
BEGIN
    CREATE TABLE dbo.Employees (
        EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
        FirstName  NVARCHAR(50) NOT NULL,
        LastName   NVARCHAR(50) NOT NULL,
        Department NVARCHAR(50) NULL,
        CreatedAt  DATETIME2 DEFAULT SYSDATETIME()
    );
END
GO