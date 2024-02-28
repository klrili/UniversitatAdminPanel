CREATE PROCEDURE [dbo].[spFacultets_GetAll]
AS
	SELECT Id, name, note 
	from [dbo].[Facultets]

