IF OBJECT_ID('014 audit_log', 'U') IS NULL
create table [014 audit_log](Id int identity, PackageName varchar(100), StartTime datetime, EndTime datetime, TimeTakenInMin int, Status
varchar(10))


insert into [014 audit_log]
select 'Package.dtsx',getdate(), null, 0,''
select @@IDENTITY

WAITFOR DELAY '00:01:10'

SELECT * FROM [014 audit_log]
-----------------------------------------

"update [014 audit_log]
set EndTime = GETDATE(),
TimeTakenInMin = datediff(minute,StartTime,getdate()),
Status = 'Success'
where Id = " + (DT_WSTR,12) @[User::Id]  + "
"