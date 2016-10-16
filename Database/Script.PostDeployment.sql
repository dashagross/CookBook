/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Products AS Target 
USING (VALUES 
(0, N'Молоко 1,5%',       100,  5,  0.5, 10), 
(1, N'Яйцо куриное',       80, 20,    2,  1), 
(2, N'Куриная грудка',     30, 30,    1,  0),
(3, N'Растительное масло', 50,  1,   80,  0),
(4, N'Томаты Черри',       30,  1,  0.5,  9),
(5, N'Сметана 10%',        60, 10,   30,  1)
) 
AS Source (Id, Name, EnergyValue, Protein, Fats, Carbs) 
ON Target.Id = Source.Id
WHEN MATCHED THEN 
UPDATE SET 
Name = Source.Name,
EnergyValue = Source.EnergyValue,
Protein = Source.Protein,
Fats = Source.Fats,
Carbs = Source.Carbs
WHEN NOT MATCHED BY TARGET THEN 
INSERT  (Id, Name, EnergyValue, Protein, Fats, Carbs)
VALUES  (Id, Name, EnergyValue, Protein, Fats, Carbs) 
WHEN NOT MATCHED BY SOURCE THEN 
DELETE;



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



