CREATE TABLE [dbo].[Groups]
(
	[Id] INT NOT NULL PRIMARY KEY  identity(1, 1), 
    [name] NVARCHAR(50) NOT NULL, 
    [departament_id] INT NOT NULL
    foreign key (departament_id) references [dbo].[Departaments](id) on delete cascade on update cascade


)
