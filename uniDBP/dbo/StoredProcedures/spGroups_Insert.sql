CREATE PROCEDURE [dbo].[spGroups_Insert]
	@name NVARCHAR(50),
	@facultet_id  int
AS
	insert into [dbo].[Groups]
	values(@name, @facultet_id)

