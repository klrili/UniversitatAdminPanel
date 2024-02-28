CREATE PROCEDURE [dbo].[spStudents_Delete]
	@student_id int
AS
	delete
	from [dbo].[Students]
	where id = @student_id