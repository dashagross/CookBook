merge into ProductUnit as Target
using (values
(0,  0, N'Литр',  1030),
(1,  0, N'Стакан', 250),
(2,  0, N'Грамм',    1),
(3,  1, N'Штука',   50),
(4,  2, N'Грамм',    1),
(5,  2, N'Штука', 700),
(6,  3, N'Чайная ложка',   20),
(7,  4, N'Штука', 40),
(8,  4, N'Грамм',   1)
)
as Source (Id, ProductId, UnitName, Mass)
on Target.Id = Source.Id
when matched then
update set
ProductId = Source.ProductId,
UnitName = Source.UnitName,
Mass = Source.Mass
when not matched by target then
insert (Id, ProductId, UnitName, Mass)
values (Id, ProductId, UnitName, Mass)
when not matched by source then
delete;