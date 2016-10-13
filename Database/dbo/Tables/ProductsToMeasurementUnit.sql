CREATE TABLE [dbo].[ProductsToMeasurementUnit] (
    [ID]                INT NOT NULL,
    [ProductID]         INT NOT NULL,
    [MeasurementUnitID] INT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ProductsToMeasurementUnit_ToMeasurementUnit] FOREIGN KEY ([MeasurementUnitID]) REFERENCES [dbo].[MeasurementUnit] ([ID]),
    CONSTRAINT [FK_ProductsToMeasurementUnit_ToProducts] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ID])
);

