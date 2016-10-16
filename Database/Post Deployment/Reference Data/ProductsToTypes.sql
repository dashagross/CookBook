MERGE INTO ProductsToTypes AS Target 
USING (VALUES 
(0, 0, 0), 
(1, 2, 1), 
(2, 2, 5),
(3, 3, 4),
(4, 4, 3),
(5, 5, 0)
) 
AS Source (Id, ProductId, TypeId) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
UPDATE SET 
ProductId = Source.ProductId,
TypeId = Source.TypeId
WHEN NOT MATCHED BY TARGET THEN 
INSERT  (Id, ProductId, TypeId)
VALUES  (Id, ProductId, TypeId)
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;