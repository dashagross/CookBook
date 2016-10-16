merge into ProductToMeasurementUnit as Target
using (values
(0,  0, 1, 1030),
(1,  0, 3,  250),
(2,  0, 0,    1),
(3,  1, 2,   50),
(4,  2, 0,    1),
(5,  2, 2,  250),
(6,  3, 4,   20),
(7,  4, 2,   40),
(8,  4, 0,    1)
)
as Source (Id, ProductId, UnitNameId, Mass)
on Target.Id = Source.Id
when matched then
update set
ProductId = Source.ProductId,
UnitNameId = Source.UnitNameId,
Mass = Source.Mass
when not matched by target then
insert (Id, ProductId, UnitNameId, Mass)
values (Id, ProductId, UnitNameId, Mass)
when not matched by source then
delete;