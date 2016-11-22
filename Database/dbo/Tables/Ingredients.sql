create table Ingredients
(
	Id                int not null,
    ProductUnitId     int not null,
	Amount           real not null,
	RecipeId          int not null

    primary key clustered ([Id] asc),

    constraint FK_Ingredients_ToProductUnit foreign key ([ProductUnitId]) references ProductUnit ([Id]),
	constraint FK_Ingredients_ToRecipes     foreign key (RecipeId)        references Recipes ([Id])
)
