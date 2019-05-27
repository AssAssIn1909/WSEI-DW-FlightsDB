CREATE TABLE [dbo].[DimCarrier] (
    [Id]          INT            NOT NULL,
    [Code]        NVARCHAR (3)   NOT NULL,
    [Description] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Carriers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_Carrier_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);

