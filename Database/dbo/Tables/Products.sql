create table Products (
    Id          int            not null,
    Name        nvarchar (255) not null,
    EnergyValue real           not null,
    Protein     real           not null,
    Fats        real           not null,
    Carbs       real           not null
    primary key clustered ([Id] asc)
);

