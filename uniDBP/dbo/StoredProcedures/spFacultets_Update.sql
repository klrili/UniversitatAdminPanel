CREATE PROCEDURE [dbo].[spFacultets_Update]
	@Facultet_id int,
	@name NVARCHAR(50),
	@note NVARCHAR(MAX)
AS
	update
	[dbo].[Facultets]
	set 
	name = @name, 
	note = @note
	where id = @Facultet_id
