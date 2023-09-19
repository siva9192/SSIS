IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA = 'dbo' AND  TABLE_NAME = 'temp_email'))
drop table temp_email
go
select Id, NTILE(100) over (order by Id) as Part into temp_Email from Email
go
create index ix_id on temp_email(id)
go
create index ix_Part on temp_email(Part)
go
