CREATE TABLE [dbo].[ProductsToTypes] (
    [ID]        INT NOT NULL,
    [ProductID] INT NOT NULL,
    [TypeID]    INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ProductsToTypes_ToProducts] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ID]),
    CONSTRAINT [FK_ProductsToTypes_ToTypes] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[Types] ([ID])
);

