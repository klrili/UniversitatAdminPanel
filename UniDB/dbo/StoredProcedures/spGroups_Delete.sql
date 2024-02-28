CREATE PROCEDURE [dbo].[spGroups_Delete]
	@group_id int
AS
	delete
	from [dbo].[Groups]
	where id = @group_id