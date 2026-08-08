CREATE OR ALTER PROCEDURE dbo.usp_AddEmployee
    @FirstName  NVARCHAR(50),
    @LastName   NVARCHAR(50),
    @Department NVARCHAR(50) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO dbo.Employees (FirstName, LastName, Department)
    VALUES (@FirstName + '!!!', @LastName + 'Hai', @Department);
    print 'Employee added successfully.';
    print 'Tested';

    SELECT SCOPE_IDENTITY() AS NewEmployeeID;
END
GO