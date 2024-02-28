CREATE PROCEDURE [dbo].[spDepartaments_GetById]
	@departament_id int
AS
	select name
	from [dbo].[Departaments]
	where id = @departament_id