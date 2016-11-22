merge into Ingredients as Target
using (values
(0, 1, 1,   0),
(1, 3, 3,   0),
(2, 6, 2,   0),
(3, 3, 2,   1),
(4, 0, 600, 2),
(5, 3, 6,   3),
(6, 0, 100, 3)
)
as Source (Id, ProductUnitId, Amount, RecipeId)
on Target.Id = Source.Id
when matched then
update set
ProductUnitId = Source.ProductUnitId, 
Amount        = Source.Amount, 
RecipeId      = Source.RecipeId         
when not matched by target then
insert (Id, ProductUnitId, Amount, RecipeId)
values (Id, ProductUnitId, Amount, RecipeId)
when not matched by source then
delete;

/*(0, N'Молоко 1,5%',       100,  5,  0.5, 10), 
  (1, N'Яйцо куриное',       70, 20,    2,  1), 
  (2, N'Куриная грудка',     30, 30,    1,  0),
  (3, N'Растительное масло', 50,  1,   80,  0),
  (4, N'Томаты Черри',       30,  1,  0.5,  9),
  (5, N'Сметана 10%',        60, 10,   30,  1)*/

/*(0, N'Блины на молоке', 45, 8, N'Замесить тесто, печь на блинной сковороде'),
(1, N'Варёные яйца', 15, 1, N'Положить в воду, вскипятить, варить 12 минут'),
(2, N'Курица отварная', 20, 2, N'Варить куриную грудку в течение 20 минут'),
(3, N'Помидорный салат', 10, 4, N'Нарезать помидоры, заправить сметаной')
*/