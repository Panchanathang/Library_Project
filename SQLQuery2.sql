----Login


Create table admin_login_tbl
(
username nvarchar(50) primary key,
password nvarchar(50),
full_name nvarchar(50)
)

Create table author_master_tbl
(
author_id nvarchar(10) primary key,
authour_name nvarchar(50)
)

CREATE table book_master_tbl
(
book_id nvarchar(10) primary key,
book_name nvarchar(MAX),
genre nvarchar(MAX),
author_name nvatchar(max),
publisher_name nvarchar(MAX),
publisher_date nvarchar(50),
language nvarchar(50),
edition nvarchar(50),
book_cost nchar(10),
no_of_pages nchar(10),
book_description nvarchar(MAX),
actual_stock nchar(10),
current_stock nchar(10),
book_img_link nvarchar(MAX)
)

Create table publisher_master_tbl
(
publisher_id nvarchar(10) primary key,
publisher_name nvarchar(MAX)
)


Create table book_issue_tbl
(
menber_id nvarchar(50),
member_name nvarchar(50),
book_id nvarchar(50),
book_name nvarchar(50),
issue_date nvarchar(50),
due_date nvarchar(50)
)

Create table member_master_tbl
(
full_name nvarchar(50),
dob DATE,
contact_no nvarchar(50),
email nvarchar(50),
address nvarchar(250),
city nvarchar(50),
province nvarchar(25),
Postalcode nvarchar(15),
member_id nvarchar(50) primary key,
password nvarchar(50),
account_status nvarchar(50)

)

---------------------------

Select * from member_master_tbl
-------------------------------------
CREATE procedure sp_UserLogin
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
ALTER procedure sp_UserLogin
(
@member_id nvarchar (50),
@password nvarchar (50)
)
as 
begin
set nocount on;
select full_name, member_id, password, account_status from member_master_tbl where member_id = @member_id and password = @password
end
go

--------------------------------
select * from admin_login_tbl

----------------------------

SELECT * FROM member_master_tbl








--------------------------------SIGNIN SIGNUP-------------------

Select * from member_master_tbl


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
------------------------------------
truncate table member_master_tbl


Select max(member_id) as ID from member_master_tbl

------------------

Select * from member_master_tbl where member_id = @id and email =@email

--------------

create procedure sp_CheckDuplicateMember
(
@member_id [nvarchar] (50),
@email [nvarchar] (50)
)
as 
begin
set nocount on;
Select * from member_master_tbl where member_id = @member_id and email =@email
end
go

---------------------------------------

create procedure sp_InsertSignup
(
@full_name [nvarchar] (50),
@dob [nvarchar] (50),
@contact_no [nvarchar] (50),
@email [nvarchar] (50),
@province [nvarchar] (50),
@city [nvarchar] (50),
@Postalcode [nvarchar] (50),
@address [nvarchar] (Max),
@member_id [nvarchar] (50),
@password [nvarchar] (50),
@account_status [nvarchar] (50)
)
as 
begin
Insert into member_master_tbl(full_name, dob, contact_no, email, province, city, Postalcode, address, member_id, password,account_status)
values(@full_name, @dob, @contact_no, @email, @province, @city, @Postalcode, @address, @member_id, @password, @account_status)
end
go
---------------------------------------------------------------ADD or UPDATE AUTHOR--------------------

create procedure sp_InsertAuthor
(
@id nchar(10),
@name nvarchar(50)
)
as
begin
Insert into author_master_tbl(author_id, author_name) values(@id, @name)
end
go

select * from author_master_tbl
-------------------------------------------

create procedure spGetAuthor

as 
begin
set nocount on;
select author_id, author_name from author_master_tbl
end
go


----------------------------

create Procedure spGetAuthorByID
(
@id nchar(10)
)
as 
begin
set nocount on;
Select author_id, author_name from author_master_tbl where author_id=@id
end
go

--------------------------------

create procedure sp_UpdateAuthor
(
@id nchar(10),
@name nvarchar(50)
)
as
begin
Update author_master_tbl set author_name = @name where author_id = @id
end
go
-------------------------------------


create procedure sp_DeleteAuthor
(
@id nchar(10)
)
as
begin
Delete from author_master_tbl where author_id = @id
end
go

------------------------------------------ADD or UPDATE PUBLISHER--------------------


select * from publisher_master_tbl
------------------------
Select Max (publisher_id) as ID from publisher_master_tbl

cREATE procedure sp_InsertPublisher
(
@id nchar(10),
@name nvarchar(max)
)
as
begin
Insert into publisher_master_tbl (publisher_id, publisher_name) values(@id , @name)
end
go

---------------------------------

select publisher_id, publisher_name from publisher_master_tbl

-------------------------------------
Create Procedure sp_getPublisher
as
begin
set nocount on;
select publisher_id, publisher_name from publisher_master_tbl order by publisher_name asc
end 
go
----------------------------------------

Create Procedure sp_getPublisherByID
(
@id nchar(10)
)
as
begin
set nocount on;
select publisher_id, publisher_name from publisher_master_tbl where publisher_id=@id
end 
go

-------------------------------

Create Procedure sp_DeletePublisherByID
(
@id nchar(10)
)
as
begin
delete from publisher_master_tbl where publisher_id =@id
end 
go


---------------------------------

CREATE procedure sp_UpdatePublisher
(
@id nchar(10),
@name nvarchar(max)
)
as
begin
update publisher_master_tbl set publisher_name = @name where publisher_id = @id
end
go

---------------------------------

------------------UPDATE MEMBER--------------------

Create Procedure sp_getMemberByID
(
@id nvarchar(50)
)
as
begin
set nocount on;
SElect full_name, dob, contact_no, email, address, city, province, Postalcode from member_master_tbl where member_id=@id
end
go

-------------------------------

Select * from member_master_tbl where member_id = @id 

-----------------------------------
Create Procedure sp_UpdateMemberStatus_ByID
(
@id nvarchar(50),
@qrType nvarchar(50)
)
as
 BEGIN
   IF @qrType ='Active'
      BEGIN
       Update member_master_tbl set account_status = 'Active' where member_id=@id
       END
    IF @qrType ='Pending'
      BEGIN
       Update member_master_tbl set account_status = 'Pending' where member_id=@id
       END
    IF @qrType ='Deactive'
      BEGIN
       Update member_master_tbl set account_status = 'Deactive' where member_id=@id
       END
    IF @qrType ='Delete'
      BEGIN
       Delete from member_master_tbl  where member_id=@id
       END
 END
go

-------------------------------------------

Create Procedure sp_getMember_AllRecords
as
begin
set nocount on;
SElect member_id, full_name, dob, contact_no, email, address, city, province, Postalcode, account_status from member_master_tbl order by member_id
end
go

-----------------------------------------------------

CREATE Procedure sp_UpdateMember_AllRecords
(
@full_name [nvarchar] (50),
@dob [nvarchar] (50),
@contact_no [nvarchar] (50),
@email [nvarchar] (50),
@address [nvarchar] (Max),
@province [nvarchar] (50),
@city [nvarchar] (50),
@Postalcode [nvarchar] (50),
@member_id [nvarchar] (50)
)
as
begin
Update member_master_tbl set full_name = @full_name, dob =@dob, contact_no = @contact_no, email = @email, address = @address, city = @city, province = @province, Postalcode = @postalcode where member_id = @member_id
end
go

---------------------------------



Create Procedure sp_DeleteMemberByID
(
@member_id int
)
as
begin
Delete from member_master_tbl where member_id=@member_id
end
go

-----------------------------

Select * from member_master_tbl

---------------------------

Select author_id, author_name from author_master_tbl

Select publisher_id, publisher_name from publisher_master_tbl

Select * from publisher_master_tbl
-----------------------------BOOK INVENTORY-----------------------

CREATE Procedure sp_Insert_Up_Del_BookInventory
(
@book_id nchar(10) = null,
@book_name nvarchar(max) = null,
@genre nvarchar(max) = null,
@author_name nvarchar(max)= null,
@publisher_name nvarchar(max)= null,
@publish_date nvarchar(50)= null,
@language nvarchar(50)= null,
@edition nvarchar(50)= null,
@book_cost nchar(10)= null,
@no_of_pages nchar(10)= null,
@book_description nvarchar(max)= null,
@actual_stock nchar(10)= null,
@current_stock nchar(10)= null,
@book_img_link nvarchar(max)= null,
@statementType Nvarchar(20) = ' '
)

AS
BEGIN
    IF @statementType = 'Insert'
        BEGIN 
            Insert INTO book_master_tbl
                (book_id,
                book_name,
                genre,
                author_name,
                publisher_name,
                publisher_date,
                language,
                edition,
                book_cost,
                no_of_pages,
                book_description,
                actual_stock,
                current_stock,
                book_img_link)
                values( @book_id,
                        @book_name,
                        @genre,
                        @author_name,
                        @publisher_name,
                        @publish_date,
                        @language,
                        @edition,
                        @book_cost,
                        @no_of_pages,
                        @book_description,
                        @actual_stock,
                        @current_stock,
                        @book_img_link)
        END
    
    IF @statementType = 'Select'
        BEGIN
            SELECT book_id,
                book_name,
                genre,
                author_name,
                publisher_name,
                publisher_date,
                language,
                edition,
                book_cost,
                no_of_pages,
                book_description,
                actual_stock,
                current_stock,
                book_img_link from book_master_tbl
    END

    
    IF @statementType = 'SelectByID'
        BEGIN
            SELECT book_id,
                book_name,
                genre,
                author_name,
                publisher_name,
                publisher_date,
                language,
                edition,
                book_cost,
                no_of_pages,
                book_description,
                actual_stock,
                current_stock,
                book_img_link from book_master_tbl WHERE book_id = @book_id
    END

    IF @statementType = 'Update'
        BEGIN
            UPDATE book_master_tbl
            SET
                book_name = @book_name,
                genre = @genre,
                author_name = @author_name,
                publisher_name = @publisher_name,
                publisher_date = @publish_date,
                language = @language,
                edition = @edition,
                book_cost = @book_cost,
                no_of_pages = @no_of_pages,
                book_description = @book_description,
                actual_stock = @actual_stock,
                current_stock = @current_stock,
                book_img_link = @book_img_link
            WHERE book_id = @book_id
        END
    ELSE IF @statementType = 'Delete'
        BEGIN
            DELETE FROM book_master_tbl
            WHERE @book_id = @book_id
        END
END
GO
            
-------------------------------------
SELECT book_id as ID from book_master_tbl
SELECT max(book_id)as ID from book_master_tbl

---------------------------------------BOOK INVENTORY ---------------------

CREATE PROCEDURE spgetBookByID
(
@book_id nchar(10)
)
as
begin
         SELECT book_id,
                book_name,
                genre,
                author_name,
                publisher_name,
                publisher_date,
                language,
                edition,
                book_cost,
                no_of_pages,
                book_description,
                actual_stock,
                COALESCE(current_stock,0) as current_stock,
                book_img_link from book_master_tbl WHERE book_id = @book_id
END
GO

--------------------------------------

EXEC spgetBookByID 1

-----------------------------------

SELECT * FROM book_issue_tbl
-------------------------------BOOKISSUETABLE---------------
CREATE PROCEDURE sp_GetIssueBook

as
BEGIN
set nocount on;
SELECT member_id, member_name, book_id, book_name, issue_date, due_date from book_issue_tbl ORDER BY member_id
END
GO

--------------------------


Create Procedure sp_getMember_ByID
(
@ID nchar(10)

)
as
begin
set nocount on;
SELECT member_id, full_name, dob, contact_no, email, address, city, province, Postalcode, account_status from member_master_tbl WHERE member_id = @ID
END
GO
-------------------------------------

CREATE PROCEDURE sp_CheckBookStockExist
(
@book_id nchar(10) = null

)
as
BEGIN
set nocount on;
SELECT book_id,
                book_name,
                genre,
                author_name,
                publisher_name,
                publisher_date,
                language,
                edition,
                book_cost,
                no_of_pages,
                book_description,
                actual_stock,
                current_stock,
                book_img_link FROM book_master_tbl WHERE book_id = @book_id and current_stock > 0
END
GO
---------------------------------------------
CREATE PROCEDURE sp_checkIssueexistOrnot
(
@mid nchar(10),
@bid nchar(10)
)
as
BEGIN
SELECT * FROM book_issue_tbl WHERE member_id=@mid and book_id = @bid
END
GO

------------------------------------

CREATE PROCEDURE sp_InsertBookIssue
(
@member_id nvarchar(50),
@member_name nvarchar(50),
@book_id nvarchar(50),
@book_name nvarchar(50),
@issue_date nvarchar(50),
@due_date nvarchar(50)

)
as
BEGIN
INSERT INTO book_issue_tbl (member_id, member_name, book_id, book_name, issue_date, due_date)
VALUES (@member_id, @member_name, @book_id, @book_name, @issue_date, @due_date)
END
GO
---------------------------

CREATE PROCEDURE sp_UpdateIssueBookStock    
(
@book_id nvarchar(50)

)
as
BEGIN
UPDATE book_master_tbl set current_stock = current_stock -1 WHERE book_id = @book_id
END
GO

-----------------------------------



SELECT * FROM book_master_tbl
UPDATE book_master_tbl SET current_stock = 10

SELECT * FROM book_issue_tbl

------------------------------------------

CREATE PROCEDURE sp_returnBook_Updatestock
(
@member_id nvarchar(50),
@book_id nvarchar(50)
)
AS
BEGIN
    BEGIN Transaction
    DELETE FROM book_issue_tbl WHERE member_id=@member_id and book_id = @book_id;
    UPDATE book_master_tbl set current_stock =current_stock - 1 WHERE book_id = @book_id;
    Commit Transaction
END;


-------------------------------------------

SELECT DATEDIFF(DAY, CONVERT(nvarchar, due_date, 101), convert(nvarchar, GETDATE(), 101)) AS number_of_day
FROM book_issue_tbl WHERE book_id = 102 and member_id = 1002


-------------------------


CREATE PROCEDURE sp_GetNumOfDay
(
@book_id nvarchar(50),
@member_id nvarchar(50)
)
AS
BEGIN
SELECT DATEDIFF(DAY, CONVERT(nvarchar, due_date, 101), CONVERT (nvarchar, GETDATE(), 101)) as number_of_day
FROM book_issue_tbl WHERE book_id = @book_id and member_id = @member_id
END
GO

--------------------------------PENALTY PAGE

SELECT * FROM member_master_tbl

CREATE TABLE BookPenaltyRecord
(
RecordID INT IDENTITY(1,1) PRIMARY KEY,
book_id nvarchar(50) NOT NULL, 
member_id nvarchar(50) NOT NULL, 
member_fullname nvarchar(50),
PenaltyAmount DECIMAL(10, 2) NOT NULL,
PenaltyPaymentDate DATE NOT NULL,
PenaltyStatus nvarchar(50),
email nvarchar(50),
full_address nvarchar(50),
city nvarchar(50),
province nvarchar(50),
postalcode nvarchar(50),
paymentoption nvarchar(50),
nameoncard nvarchar(50),
cardnumber nvarchar(50),
expmonth nvarchar(50),
expyear nvarchar(50),
cvv nvarchar(50)
)



ALTER PROCEDURE sp_InsertPenaltyDetails
(
@book_id nvarchar(50), 
@member_id nvarchar(50), 
@member_fullname nvarchar(50),
@PenaltyAmount DECIMAL(10, 2),
@email nvarchar(50),
@full_address nvarchar(50),
@city nvarchar(50),
@province nvarchar(50),
@postalcode nvarchar(50),
@paymentoption nvarchar(50),
@nameoncard nvarchar(50),
@cardnumber nvarchar(50),
@expmonth nvarchar(50),
@expyear nvarchar(50),
@cvv nvarchar(50)
)
AS
BEGIN

INSERT INTO BookPenaltyRecord 

(book_id, member_id ,member_fullname, PenaltyAmount, PenaltyPaymentDate, 
PenaltyStatus, email , full_address, city, province, postalcode, paymentoption, nameoncard, cardnumber,
expmonth, expyear, cvv) 

Values

(@book_id, @member_id, @member_fullname, @PenaltyAmount, GETDATE(), 'paid' , @email ,
@full_address, @city, @province, @postalcode, @paymentoption, @nameoncard, @cardnumber, @expmonth, 
@expyear, @cvv)


END
GO

----------------------------------USER PROFILE
SELECT * FROM member_master_tbl

CREATE PROCEDURE sp_getMemberProfileByID
(
@member_id nvarchar(50)
)
AS
BEGIN
SELECT member_id, full_name, dob, contact_no, email, address, city, 
province,  Postalcode,  password, account_status from
member_master_tbl WHERE member_id = @member_id and 
account_status = 'Active'
END
GO
----
SELECT * FROM member_master_tbl
CREATE Procedure sp_UpdateMember_Profile
(
@full_name nvarchar (50),
@dob nvarchar (50),
@contact_no nvarchar (50),
@email nvarchar (50),
@address nvarchar (Max),
@city nvarchar (50),
@province nvarchar (50),
@Postalcode nvarchar (50),
@member_id nvarchar (50),
@password nvarchar (50)
)
as
begin
Update member_master_tbl set full_name = @full_name, dob =@dob, contact_no = @contact_no, email = @email, address = @address, city = @city, province = @province, Postalcode = @Postalcode, password=@password WHERE member_id = @member_id
end
go


---

SELECT * FROM book_issue_tbl

CREATE PROCEDURE sp_GetUserIssueBookDetails
(
@mid nvarchar(50)
)
AS
BEGIN
set nocount on
SELECT member_id, member_name, book_id, book_name, issue_date, due_date from book_issue_tbl WHERE member_id = @mid
END
GO

----
SELECT  count(*)as Issubook from book_issue_tbl where member_id=@mid

select sum(penaltyamount)as tot from BookPenaltyRecord where member_id=@mid

------------------------

SELECT * FROM BookPenaltyRecord

CREATE PROCEDURE sp_PenaltyDetails
(
@member_id nvarchar(50)
)
AS
BEGIN
SELECT t1.member_fullname, t1.book_id, t2.book_name, t1.PenaltyAmount, t1.PenaltyPaymentDate, t1.PenaltyStatus from BookPenaltyRecord AS t1 
INNER JOIN book_master_tbl as t2 on t1.book_id = t2.book_id
WHERE member_id = @member_id
END
GO
------------------------------------------

SELECT Count(*)  as Issuebook FROM book_issue_tbl
WHERE member_id = 1001


SELECT Count(*)  as Issuebook FROM book_issue_tbl
WHERE member_id = @mid

SELECT Count(*) as Totalbook FROM book_master_tbl

select sum(penaltyamount) as tot from BookPenaltyRecord where member_id= 1001
--------------------
---------------------------REPORT ADMIN



CREATE PROCEDURE sp_GetAllIssueBookDetails_ForAdmin

AS
BEGIN
set nocount on
SELECT member_id, member_name, book_id, book_name, issue_date, due_date from book_issue_tbl
END
GO



ALTER PROCEDURE sp_PenaltyDetails_forAdmin

AS
BEGIN
SELECT t1.member_fullname, t1.book_id, t2.book_name, t1.PenaltyAmount, t1.PenaltyPaymentDate, t1.PenaltyStatus from BookPenaltyRecord AS t1 
INNER JOIN book_master_tbl as t2 on t1.book_id = t2.book_id
END
GO
--

