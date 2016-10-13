CREATE TABLE [dbo].[ProductsToTypes] (
    [ID]        INT NOT NULL,
    [ProductID] INT NOT NULL,
    [TypeID]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ProductsToTypes_ToProducts] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ID]),
    CONSTRAINT [FK_ProductsToTypes_ToProductTypes] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[ProductTypes] ([ID])
);

