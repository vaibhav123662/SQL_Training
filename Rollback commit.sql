---Rollback

begin try 
begin tran
insert into student1 values(2103,'Leena',90,101);
insert into student1 values(2104,'Rina',91,103);
commit tran;
end try
begin catch
select ERROR_MESSAGE();
rollback tran;
end catch;
