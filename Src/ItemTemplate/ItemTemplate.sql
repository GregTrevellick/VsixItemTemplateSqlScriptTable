/* Changes to this template can be proposed at https://github.com/GregTrevellick/VsixItemTemplateSqlScriptTable/blob/master/Src/ItemTemplate/ItemTemplate.sql */

IF NOT EXISTS
			(SELECT 1
			FROM sys.tables tbl
			INNER JOIN sys.schemas sch ON sch.schema_id = tbl.schema_id
			WHERE sch.[name] = 'dbo'
			AND tbl.[name] = 'MyTable')
BEGIN
	CREATE TABLE dbo.MyTable
		(Id INT IDENTITY(1,1) NOT NULL,

		--Optional audit stamp columns
		--CreatedDateUTC DATETIME NOT NULL,
		--UpdatedDateUTC DATETIME NULL,
		--DeletedDateUTC DATETIME NULL,
		--CreatedUserId VARCHAR(MAX) NOT NULL,
		--UpdatedUserId VARCHAR(MAX) NULL,
		--DeletedUserId VARCHAR(MAX) NULL,

		--Constraints
		CONSTRAINT PK_MyTable PRIMARY KEY CLUSTERED (Id ASC))
END