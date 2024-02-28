CREATE PROCEDURE [dbo].[spFacultets_GetById]
	@FacultetId int
AS
	SELECT Id, name, note 
	from [dbo].[Facultets]
	where id = @FacultetId