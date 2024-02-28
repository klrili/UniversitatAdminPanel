if (exists(select 1 from [dbo].[Departaments]))
delete from [dbo].[Departaments]

if (exists(select 1 from [dbo].[DepartamentsInFacultet]))
delete from [dbo].[DepartamentsInFacultet]

if (exists(select 1 from [dbo].[Facultets]))
delete from [dbo].[Facultets]

if (exists(select 1 from [dbo].[Groups]))
delete from [dbo].[Groups]

if (exists(select 1 from [dbo].[Students]))
delete from [dbo].[Students]


DECLARE @cnt INT = 0;

WHILE @cnt < 10
BEGIN
   insert into [dbo].[Departaments](name)
   values(CONCAT('departament',@cnt))
   SET @cnt = @cnt + 1;
END;
insert into [dbo].[Departaments](name)
   values('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac placerat vestibulum lectus mauris ultrices eros. Suscipit tellus mauris a diam. Semper eget duis at tellus at. Placerat in egestas erat imperdiet. A cras semper auctor neque vitae tempus quam. Sit amet justo donec enim diam vulputate. Ornare lectus sit amet est placerat in egestas erat. Fringilla est ullamcorper eget nulla facilisi etiam dignissim. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elit sed vulputate mi sit amet mauris commodo. Porta lorem mollis aliquam ut porttitor. Tellus cras adipiscing enim eu turpis. Quis eleifend quam adipiscing vitae proin sagittis nisl. Non consectetur a erat nam. Risus sed vulputate odio ut enim blandit volutpat maecenas volutpat. Lorem donec massa sapien faucibus.')

SET @cnt = 0;
WHILE @cnt < 5
BEGIN
   insert into [dbo].[Facultets]
   (name, note)
   values((CONCAT('facultetName',@cnt)), (CONCAT('note',@cnt)))
   SET @cnt = @cnt + 1;
END;
   insert into [dbo].[Facultets]
   (name, note)
   values(
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac placerat vestibulum lectus mauris ultrices eros. Suscipit tellus mauris a diam. Semper eget duis at tellus at. Placerat in egestas erat imperdiet. A cras semper auctor neque vitae tempus quam. Sit amet justo donec enim diam vulputate. Ornare lectus sit amet est placerat in egestas erat. Fringilla est ullamcorper eget nulla facilisi etiam dignissim. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elit sed vulputate mi sit amet mauris commodo. Porta lorem mollis aliquam ut porttitor. Tellus cras adipiscing enim eu turpis. Quis eleifend quam adipiscing vitae proin sagittis nisl. Non consectetur a erat nam. Risus sed vulputate odio ut enim blandit volutpat maecenas volutpat. Lorem donec massa sapien faucibus.',
   'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ac placerat vestibulum lectus mauris ultrices eros. Suscipit tellus mauris a diam. Semper eget duis at tellus at. Placerat in egestas erat imperdiet. A cras semper auctor neque vitae tempus quam. Sit amet justo donec enim diam vulputate. Ornare lectus sit amet est placerat in egestas erat. Fringilla est ullamcorper eget nulla facilisi etiam dignissim. Vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt. Elit sed vulputate mi sit amet mauris commodo. Porta lorem mollis aliquam ut porttitor. Tellus cras adipiscing enim eu turpis. Quis eleifend quam adipiscing vitae proin sagittis nisl. Non consectetur a erat nam. Risus sed vulputate odio ut enim blandit volutpat maecenas volutpat. Lorem donec massa sapien faucibus.'
   )

SET @cnt = 0;
WHILE @cnt < 10
BEGIN
   insert into [dbo].[DepartamentsInFacultet]
   (departament_id, facultet_id)
   values(FLOOR(RAND()*(10)+1), FLOOR(RAND()*(5)+1))
   SET @cnt = @cnt + 1;
END;

SET @cnt = 0;
WHILE @cnt < 15
BEGIN
   insert into [dbo].[Groups]
   (name, departament_id)
   values((CONCAT('groupsName',@cnt)), FLOOR(RAND()*(5)+1))
   SET @cnt = @cnt + 1;
END;

SET @cnt = 0;
WHILE @cnt < 50
BEGIN
   insert into [dbo].[Students]
   (firstName, lastName, group_id, registrtationData, avgMark)
   values((CONCAT('firstName',@cnt)), (CONCAT('LastName',@cnt)), FLOOR(RAND()*(15)+1), GETDATE(), CAST((RAND()*(10)+1) AS decimal(4,1)))
   SET @cnt = @cnt + 1;
END;