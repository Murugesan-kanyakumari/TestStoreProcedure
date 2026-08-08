CREATE OR ALTER PROCEDURE dbo.usp_UpdateEmployeeDepartment
    @EmployeeID INT,
    @Department NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.Employees
    SET Department = @Department
    WHERE EmployeeID = @EmployeeID;

    SELECT EmployeeID, FirstName, LastName, Department
    FROM dbo.Employees
    WHERE EmployeeID = @EmployeeID;
END
GO
