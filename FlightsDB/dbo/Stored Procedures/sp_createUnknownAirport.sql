CREATE PROCEDURE sp_createUnknownAirport
AS
BEGIN

    SET IDENTITY_INSERT [dbo].[DimAirport] ON;

    INSERT INTO [dbo].[DimAirport] ([Id],[Iata],[Airport],[City],[State],[Country],[Lat],[Long])
    VALUES (-1,'', 'UNKNOWN','UNKNOWN','UNKNOWN','UNKNOWN',0,0);

    SET IDENTITY_INSERT [dbo].[DimAirport] OFF;

END