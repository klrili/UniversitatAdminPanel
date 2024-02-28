CREATE PROCEDURE [dbo].[spFacultets_Insert]
	@name NVARCHAR(50),
	@note NVARCHAR(MAX)
AS
	insert  into
	[dbo].[Facultets]
	values(@name, @note)
