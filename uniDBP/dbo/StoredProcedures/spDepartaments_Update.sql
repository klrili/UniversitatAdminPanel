CREATE PROCEDURE [dbo].[spDepartaments_Update]
	@Id int,
	@name nvarchar(MAX)
AS
	update [dbo].[Departaments]
	set 
	name = @name
	where Id = @Id
