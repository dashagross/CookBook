create table ProductToMeasurementUnit (
    Id                     int not null,
    ProductId              int not null,
    MeasurementUnitNamesId int not null,
	MASS                  real not null
    primary key clustered ([Id] asc),
    constraint FK_ProductToMeasurementUnit_ToMeasurementUnit foreign key ([MeasurementUnitNamesId]) references MeasurementUnitNames ([Id]),
    constraint FK_ProductToMeasurementUnit_ToProducts        foreign key ([ProductId])              references Products ([Id])
);

