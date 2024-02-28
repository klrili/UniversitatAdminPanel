CREATE TABLE [dbo].[Groups]
(
	[Id] INT NOT NULL PRIMARY KEY  identity(1, 1), 
    [name] NVARCHAR(50) NOT NULL, 
    [facultet_id] INT NOT NULL
    foreign key (facultet_id) references [dbo].[Facultets](id) on delete cascade on update cascade


)
