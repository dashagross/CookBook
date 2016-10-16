MERGE INTO ProductTypes AS Target 
USING (VALUES 
(0, N'Молочные продукты'), 
(1, N'Мясо'), 
(2, N'Рыба'),
(3, N'Овощи'),
(4, N'Масла'),
(5, N'Птица')
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