CREATE TABLE [dbo].[DimPlane] (
    [Id]           INT          NOT NULL,
    [Tailnum]      VARCHAR (7)  NOT NULL,
    [Type]         VARCHAR (19) NULL,
    [Manufacturer] VARCHAR (30) NULL,
    [IssueDate]    DATETIME     NULL,
    [Model]        VARCHAR (17) NULL,
    [Status]       VARCHAR (17) NULL,
    [AircraftType] VARCHAR (24) NULL,
    [EngineType]   VARCHAR (13) NULL,
    [Year]         VARCHAR (4)  NULL,
    CONSTRAINT [PK_Plane] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_Plane_Tailnum] UNIQUE NONCLUSTERED ([Tailnum] ASC)
);

