CREATE PROCEDURE [dbo].[spGroups_GetAll]

AS
	SELECT Id, name, facultet_id
	from [dbo].[Groups]

