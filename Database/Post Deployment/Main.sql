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

:r "Reference Data\Products.sql"
:r "Reference Data\ProductTypes.sql"
:r "Reference Data\DishTypes.sql"
:r "Reference Data\Recipes.sql"
:r "Reference Data\ProductUnit.sql"
:r "Reference Data\Ingredients.sql"
:r "Reference Data\ProductsToTypes.sql"
:r "Reference Data\RecipesToTypes.sql"