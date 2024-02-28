CREATE TABLE [dbo].[DepartamentsInFacultet]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1, 1), 
    [facultet_id] INT NULL, 
    [departament_id] INT NULL
    foreign key (facultet_id) references [dbo].[Facultets](id) on delete cascade on update cascade
    foreign key (departament_id) references [dbo].[Departaments](id) on delete cascade on update cascade


)
