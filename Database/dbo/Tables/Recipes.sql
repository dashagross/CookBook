create table Recipes
(
	Id                       int not null,
	Title		   nvarchar(255) not null,
    CookingTime		        real not null,
	PortionCount             int not null,
	CookingMethod  nvarchar(max) not null

    primary key clustered ([Id] asc)
)
