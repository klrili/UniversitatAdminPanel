CREATE PROCEDURE [dbo].[spGroups_GetById]
	@group_id int
AS
	SELECT name, departament_id
	from [dbo].[Groups]
	where id = @group_id
