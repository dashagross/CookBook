create table ProductToMeasurementUnit (
    Id                     int not null,
    ProductId              int not null,
    UnitNameId             int not null,
	Mass                  real not null
    primary key clustered ([Id] asc),
    constraint FK_ProductToMeasurementUnit_ToMeasurementUnit foreign key ([UnitNameId])  references MeasurementUnitNames ([Id]),
    constraint FK_ProductToMeasurementUnit_ToProducts        foreign key ([ProductId])   references Products ([Id])
);

