CREATE TABLE [dbo].[RecipesToTypes]
(
	[ID]            INT NOT NULL,
	[RecipeID]      INT NOT NULL,
    [TypeID]        INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_RecipesToTypes_ToRecipes] FOREIGN KEY ([RecipeID]) REFERENCES [dbo].[Recipes] ([ID]), 
    CONSTRAINT [FK_RecipesToTypes_ToDishTypes] FOREIGN KEY ([TypeID]) REFERENCES [dbo].[DishTypes]([ID])
)
