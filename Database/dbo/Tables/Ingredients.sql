create table Ingredients
(
	Id                     int not null,
	ProductId              int not null,
    MeasurementUnitId      int not null,
	Amount                real not null,
	RecipeId               int not null

    primary key clustered ([Id] asc),
    constraint FK_Ingredients_ToProducts        foreign key ([ProductId])         references Products ([Id]),
    constraint FK_Ingredients_ToMeasurementUnit foreign key ([MeasurementUnitId]) references ProductToMeasurementUnit ([Id]),
	constraint FK_Ingredients_ToRecipes         foreign key (RecipeId)            references Recipes ([Id])
)
