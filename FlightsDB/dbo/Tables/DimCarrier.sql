CREATE TABLE [dbo].[DimCarrier] (
    [Id]          INT            NOT NULL IDENTITY(1,1),
    [Code]        NVARCHAR (9)   NOT NULL,
    [Description] NVARCHAR (100) NULL,
    CONSTRAINT [PK_Carriers] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_Carrier_Code] UNIQUE NONCLUSTERED ([Code] ASC)
);

