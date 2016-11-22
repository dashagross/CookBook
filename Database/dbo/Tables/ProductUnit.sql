create table ProductUnit (
    Id                     int not null,
    ProductId              int not null,
    UnitName     nvarchar (50) not null,
	Mass                  real not null
    
	primary key clustered ([Id] asc),
    
    constraint FK_ProductUnit_ToProducts foreign key ([ProductId]) references Products ([Id])
);

