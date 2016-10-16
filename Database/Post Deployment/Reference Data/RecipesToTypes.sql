/*MERGE INTO RecipesToTypes AS Target 
USING (VALUES 
(0, , ), 
(1, , ), 
(2, , ),
(3, , ),
(4, , ),
(5, , )
) 
AS Source (Id, RecipeId, TypeId) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
UPDATE SET 
RecipeId = Source.RecipeId,
TypeId = Source.TypeId
WHEN NOT MATCHED BY TARGET THEN 
INSERT  (Id, RecipeId, TypeId)
VALUES  (Id, RecipeId, TypeId)
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;*/