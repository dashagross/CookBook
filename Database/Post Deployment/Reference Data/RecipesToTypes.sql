MERGE INTO RecipesToTypes AS Target 
USING (VALUES 
(0, 0, 0), 
(1, 0, 5), 
(2, 0, 4),
(3, 1, 0),
(4, 2, 1),
(5, 2, 2),
(6, 3, 1),
(7, 3, 2)
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
DELETE;