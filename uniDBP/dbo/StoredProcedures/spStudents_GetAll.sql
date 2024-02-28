CREATE PROCEDURE [dbo].[spStudents_GetAll]

AS
	select Id, firstName, lastName, group_id, registrtationData, avgMark
	from [dbo].[Students]
