CREATE PROCEDURE sp_createUnknownCarrier
AS
BEGIN

    SET IDENTITY_INSERT [dbo].[DimCarrier] ON;

    INSERT INTO [dbo].[DimCarrier] ([Id],[Code],[Description])
    VALUES (-1,'UNKNOWN', '')

    SET IDENTITY_INSERT [dbo].[DimCarrier] OFF;

END