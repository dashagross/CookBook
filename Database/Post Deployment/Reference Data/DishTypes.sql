MERGE INTO DishTypes AS Target 
USING (VALUES 
(0, N'Завтрак'), 
(1, N'Обед'), 
(2, N'Ужин'),
(3, N'Суп'),
(4, N'Десерт'),
(5, N'Выпечка')
) 
AS Source (Id, Name) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
UPDATE SET 
Name = Source.Name
WHEN NOT MATCHED BY TARGET THEN 
INSERT  (Id, Name)
VALUES  (Id, Name)
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;