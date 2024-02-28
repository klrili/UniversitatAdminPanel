CREATE PROCEDURE [dbo].[spStudents_Update]
	@student_id int,
	@firstName NVARCHAR(50),
	@lastName NVARCHAR(50),
	@group_id int,
	@avgMark int
AS
	update
	[dbo].[Students]
	set
	firstName  = @firstName,
	lastName = @lastName,
	group_id = @group_id,
	avgMark = @avgMark
	where 
	id = @student_id
	