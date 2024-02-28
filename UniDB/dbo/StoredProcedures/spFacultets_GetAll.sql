CREATE PROCEDURE [dbo].[spFacultets_GetAll]
AS
	SELECT name, note 
	from [dbo].[Facultets]

