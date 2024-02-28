CREATE PROCEDURE [dbo].[spDepartamentsInFacultet_Delete]
	@departament_id int,
	@facultet_id int
AS
	delete from [dbo].[DepartamentsInFacultet]
	where departament_id = @departament_id 
	and facultet_id = @facultet_id;