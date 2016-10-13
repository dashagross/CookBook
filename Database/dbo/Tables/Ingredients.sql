CREATE TABLE [dbo].[Ingredients]
(
	[ID]                        INT NOT NULL,
	[ProductID]                 INT NOT NULL,
    [MeasurementUnitID]			INT NOT NULL,
	[Amount]                   REAL NOT NULL,
	[RecipeID]                  INT not null,

    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Ingredients_ToProducts] FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Products] ([ID]),
    CONSTRAINT [FK_Ingredients_ToMeasurementUnit] FOREIGN KEY ([MeasurementUnitID]) REFERENCES [dbo].[MeasurementUnit] ([ID]),
	CONSTRAINT FK_Ingredients_ToRecipes FOREIGN KEY (RecipeID) references [Recipes] ([ID])
)
