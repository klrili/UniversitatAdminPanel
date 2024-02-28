CREATE PROCEDURE [dbo].[spGroups_Update]
	@group_id int,
	@name NVARCHAR(50),
	@facultet_id  int
AS
	update [dbo].[Groups]
	set name = @name,
	facultet_id = @facultet_id
	where id = @group_id