CREATE PROCEDURE [dbo].[spGroups_GetAll]

AS
	SELECT name, departament_id
	from [dbo].[Groups]

