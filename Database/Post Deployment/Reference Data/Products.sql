MERGE INTO Products AS Target 
USING (VALUES 
(0, N'Молоко 1,5%',       100,  5,  0.5, 10), 
(1, N'Яйцо куриное',       70, 20,    2,  1), 
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