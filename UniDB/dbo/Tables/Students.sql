CREATE TABLE [dbo].[Students]
(
	[Id] INT NOT NULL PRIMARY KEY identity(1, 1), 
    [firstName] NVARCHAR(50) NOT NULL, 
    [lastName] NVARCHAR(50) NOT NULL, 
    [group_id] INT NULL, 
    [registrtationData] DATE NULL, 
    [avgMark] DECIMAL(4, 1) NULL
    foreign key (group_id) references [dbo].[Groups](id) on delete cascade on update cascade
)
