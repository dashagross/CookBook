create table Recipes
(
	Id                       int not null,
	Title		   nvarchar(255) not null,
    CookingTime		        real not null,
	PortionCount             int not null,
	Method			       ntext not null

    primary key clustered ([Id] asc)
)
