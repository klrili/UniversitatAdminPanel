CREATE PROCEDURE [dbo].[spGroups_Insert]
	@name NVARCHAR(50),
	@departament_id  int
AS
	insert into [dbo].[Groups]
	values(@name, @departament_id)

