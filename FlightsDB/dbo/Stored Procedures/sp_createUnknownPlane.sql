CREATE PROCEDURE sp_createUnknownPlane
AS
BEGIN

    SET IDENTITY_INSERT [dbo].[DimPlane] ON;

    INSERT INTO [dbo].[DimPlane] ([Id],[Tailnum],[Type],[Manufacturer],[IssueDate],[Model],[Status],[AircraftType],[EngineType],[Year])
    VALUES (-1,'UNKNOWN','','','','','','','','')

END