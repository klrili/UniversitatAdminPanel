CREATE PROCEDURE [dbo].[spStudents_Insert]
	@firstName NVARCHAR(50),
	@lastName NVARCHAR(50),
	@group_id int,
	@registrationData date,
	@avgMark int
AS
	insert  into
	[dbo].[Students]
	values(
	@firstName,
	@lastName,
	@group_id,
	@registrationData,
	@avgMark
	)