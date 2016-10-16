merge into Recipes as Target
using (values
(0, N'Блины на молоке',  45, 8, N'Замесить тесто, печь на блинной сковороде'),
(1, N'Варёные яйца',     15, 1, N'Положить в воду, вскипятить, варить 12 минут'),
(2, N'Курица отварная',  20, 2, N'Варить куриную грудку в течение 20 минут'),
(3, N'Помидорный салат', 10, 4, N'Нарезать помидоры, заправить сметаной')
)
as Source (Id, Title, CookingTime, PortionCount, CookingMethod)
on Target.Id = Source.Id
when matched then
update set
Title         = Source.Title,        
CookingTime   = Source.CookingTime,  
PortionCount  = Source.PortionCount, 
CookingMethod = Source.CookingMethod
when not matched by target then
insert (Id, Title, CookingTime, PortionCount, CookingMethod)
values (Id, Title, CookingTime, PortionCount, CookingMethod)
when not matched by source then
delete;