IF NOT EXISTS
            (SELECT 1
            FROM sys.procedures pro
	        INNER JOIN sys.schemas sch ON sch.schema_id = pro.schema_id
            WHERE sch.[name] = 'dbo'
	        AND pro.[name] = 'MySproc')
BEGIN
    EXECUTE('CREATE PROCEDURE dbo.MySproc AS SELECT NULL')
END
GO

ALTER PROCEDURE dbo.MySproc AS
    SELECT 1