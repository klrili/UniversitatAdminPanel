CREATE PROCEDURE [dbo].[spGroups_Update]
	@group_id int,
	@name NVARCHAR(50),
	@departament_id  int
AS
	update [dbo].[Groups]
	set name = @name,
	departament_id = @departament_id
	where id = @group_id