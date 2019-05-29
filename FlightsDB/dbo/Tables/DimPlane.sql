CREATE TABLE [dbo].[DimPlane] (
    [Id]           INT          NOT NULL IDENTITY(1,1),
    [Tailnum]      NVARCHAR (7)  NOT NULL,
    [Type]         NVARCHAR (19) NULL,
    [Manufacturer] NVARCHAR (30) NULL,
    [IssueDate]    DATETIME		 NULL DEFAULT NULL,
    [Model]        NVARCHAR (17) NULL,
    [Status]       NVARCHAR (17) NULL,
    [AircraftType] NVARCHAR (24) NULL,
    [EngineType]   NVARCHAR (13) NULL,
    [Year]         NVARCHAR (4)  NULL,
    CONSTRAINT [PK_Plane] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [UQ_Plane_Tailnum] UNIQUE NONCLUSTERED ([Tailnum] ASC)
);

