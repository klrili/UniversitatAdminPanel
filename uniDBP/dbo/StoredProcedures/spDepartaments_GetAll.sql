CREATE PROCEDURE [dbo].[spDepartaments_GetAll]

AS
	select Id, name
	from [dbo].[Departaments]
