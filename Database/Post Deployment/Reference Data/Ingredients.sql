/*merge into Ingredients as Target
using (values
(0, , , , ),
(1, , , , ),
(2, , , , ),
(3, , , , ),
(4, , , , ),
(5, , , , ),
(6, , , , ),
(7, , , , )
)
as Source (Id, ProductId, MeasurementUnitId, Amount, RecipeId)
on Target.Id = Source.Id
when matched then
update set
ProductId         = Source.ProductId, 
MeasurementUnitId = Source.MeasurementUnitId, 
Amount            = Source.Amount, 
RecipeId          = Source.RecipeId         
when not matched by target then
insert (Id, ProductId, MeasurementUnitId, Amount, RecipeId)
values (Id, ProductId, MeasurementUnitId, Amount, RecipeId)
when not matched by source then
delete;*/