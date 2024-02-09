Create procedure sp_UserLogin
(
@member_id [nvarchar] (50),
@password[nvarchar] (50)
)
as 
begin
set nocount on;
select full_name, member_id, password, account_status from member_master_tbl where member_id = @member_id and password = @password
end
go
----------------------------------
Select * from admin_login_tbl

------------------------------------------
Create procedure sp_AdminLogin
(
@username [nvarchar] (50),
@password[nvarchar] (50)
)
as 
begin
set nocount on;
select username, password, full_name from admin_login_tbl where username = @username and password = @password
end
go
-------------------------------
---Procedure
Select * from member_master_tbl
Create procedure sp_UserLogin
(
@member_id [nvarchar](50),
@password [nvarchar] (50)
)
as
begin 
set nocount on;
select full_name, member_id, password, account_status from member_master_tbl  where member_id = @member_id and password = @password
end
go
-----------------------
Create procedure sp_UserLogin
(
@member_id [nvarchar] (50),
@password[nvarchar] (50)
)
as 
begin
set nocount on;
select full_name, member_id, password, account_status from member_master_tbl where member_id = @member_id and password = @password
end
go

--------------------------------
select * from admin_login_tbl