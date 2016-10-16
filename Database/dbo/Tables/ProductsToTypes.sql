create table ProductsToTypes (
    Id        int not null,
    ProductId int not null,
    TypeId    int not null
    primary key clustered ([Id] asc),
    constraint FK_ProductsToTypes_ToProducts     foreign key ([ProductId]) references Products ([Id]),
    constraint FK_ProductsToTypes_ToProductTypes foreign key ([TypeId])    references ProductTypes ([Id])
);

