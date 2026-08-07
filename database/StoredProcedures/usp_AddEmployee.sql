CREATE OR ALTER PROCEDURE dbo.usp_AddEmployee
    @FirstName  NVARCHAR(50),
    @LastName   NVARCHAR(50),
    @Department NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Employees (FirstName, LastName, Department)
    VALUES (@FirstName + '!!!', @LastName, @Department);

    SELECT SCOPE_IDENTITY() AS NewEmployeeID;
END
GO