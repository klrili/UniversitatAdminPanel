CREATE PROCEDURE [dbo].[spGroups_GetById]
	@group_id int
AS
	SELECT Id, name, facultet_id
	from [dbo].[Groups]
	where id = @group_id
