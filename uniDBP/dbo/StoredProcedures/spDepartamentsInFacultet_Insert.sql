CREATE PROCEDURE [dbo].[spDepartamentsInFacultet_Insert]
	@facultet_id int,
	@departament_id int

AS
	insert into [dbo].[DepartamentsInFacultet]
	values (@facultet_id, @departament_id)
