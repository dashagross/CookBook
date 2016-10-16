/*merge into Recipes as Target
using (values
(0, , , , ),
(1, , , , ),
(2, , , , ),
(3, , , , )
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
delete;*/