﻿CREATE PROCEDURE [dbo].[spStudents_GetById]
	@student_id int
AS
	select firstName, lastName, group_id, registrtationData, avgMark
	from [dbo].[Students]
	where id = @student_id
