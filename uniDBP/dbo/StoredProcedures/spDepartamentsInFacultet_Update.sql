CREATE PROCEDURE [dbo].[spDepartamentsInFacultet_Update]
	@facultet_id int,
	@departament_id int,
	@departamentForUpdatte int
AS
	update [dbo].[DepartamentsInFacultet]
	set departament_id = @departamentForUpdatte
	where departament_id = @departament_id 
	and facultet_id = @facultet_id;