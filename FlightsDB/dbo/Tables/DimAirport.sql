CREATE TABLE [dbo].[DimAirport] (
    [Id]      INT              NOT NULL,
    [Iata]    NVARCHAR (6)     NOT NULL,
    [Airport] NVARCHAR (43)    NULL,
    [City]    NVARCHAR (35)    NULL,
    [State]   NVARCHAR (13)    NULL,
    [Country] NVARCHAR (32)    NULL,
    [Lat]     DECIMAL (14, 10) NULL,
    [Long]    DECIMAL (14, 10) NULL,
    CONSTRAINT [PK_Airport] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_Airport_Iata] UNIQUE NONCLUSTERED ([Iata] ASC)
);

