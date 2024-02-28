CREATE PROCEDURE [dbo].[spFacultets_Delete]
	@FacultetId int
AS
	delete
	from [dbo].[Facultets]
	where id = @FacultetId