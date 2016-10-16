MERGE INTO MeasurementUnitNames AS Target
USING (VALUES 
(0, N'В граммах'), 
(1, N'В литрах'), 
(2, N'В штуках'),
(3, N'В стаканах'),
(4, N'В чайных ложках'),
(5, N'В столовых ложках')
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