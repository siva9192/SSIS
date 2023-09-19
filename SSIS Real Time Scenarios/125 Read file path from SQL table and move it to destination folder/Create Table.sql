create table FileConfig(Id int identity, FilePath varchar(max), Active bit)
go

insert into FileConfig(FilePath, Active)
values('D:\Files\Emails.csv',1),
('D:\Files\Emails_20210920.csv',1),
('D:\Files\Emails_New.csv',1),
('D:\Files\Emails_Old.csv',1)

go

select FilePath from FileConfig where Active = 1