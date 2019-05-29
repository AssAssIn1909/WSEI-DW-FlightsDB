CREATE TABLE [dbo].[FactFlights] (
    [DateKey]           INT          NOT NULL,
    [DepTime]           TIME (7)     NULL,
    [CRSDepTime]        TIME (7)     NULL,
    [ArrTime]           TIME (7)     NULL,
    [CRSArrTime]        TIME (7)     NULL,
    [CarrierId]         INT          NULL,
    [FlightNum]         INT          NULL,
    [PlaneId]           INT          NULL,
    [ActualElapsedTime] INT          NULL,
    [CRSElapsedTime]    INT          NULL,
    [AirTime]           INT          NULL,
    [ArrDelay]          INT          NULL,
    [DepDelay]          INT          NULL,
    [Origin]            NVARCHAR (5) NULL,
    [Dest]              NVARCHAR (5) NULL,
    [Distance]          INT          NULL,
    [TaxiIn]            INT          NULL,
    [TaxiOut]           INT          NULL,
    [Cancelled]         BIT          NULL,
    [CancellationCode]  CHAR (1)     NULL,
    [Diverted]          BIT          NULL,
    [CarrierDelay]      INT          NULL,
    [WeatherDelay]      INT          NULL,
    [NASDelay]          INT          NULL,
    [SecurityDelay]     INT          NULL,
    [LateAircraftDelay] INT          NULL,
    CONSTRAINT [FK_DimCarrier] FOREIGN KEY ([CarrierId]) REFERENCES [dbo].[DimCarrier] ([Id]),
    CONSTRAINT [FK_DimDate] FOREIGN KEY ([DateKey]) REFERENCES [dbo].[DimDate] ([DateKey]),
    CONSTRAINT [FK_DimPlane] FOREIGN KEY ([PlaneId]) REFERENCES [dbo].[DimPlane] ([Id])
);


GO
CREATE CLUSTERED COLUMNSTORE INDEX [CS_FactFlights]
    ON [dbo].[FactFlights];

