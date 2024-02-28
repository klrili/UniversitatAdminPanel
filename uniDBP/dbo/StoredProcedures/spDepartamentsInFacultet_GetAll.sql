CREATE PROCEDURE [dbo].[spDepartamentsInFacultet_GetAll]

AS
	SELECT facultet_id, departament_id
	from [dbo].[DepartamentsInFacultet]
