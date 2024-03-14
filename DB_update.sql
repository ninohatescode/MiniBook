use master
if exists (select * from sysdatabases where name = 'BOOKSTORE')
	drop database BOOKSTORE
go
create database BOOKSTORE
go
use BOOKSTORE
go

create table Author (
	author_id int identity(1,1) not null primary key,
	author_name nvarchar (max),
	author_address nvarchar (max),
	author_mail nvarchar(max),
	author_descrip nvarchar(max)
)

create table Role (
	author_id int,
	book_id int ,
	_role nvarchar(max)
	constraint  PK_Role primary key(author_id,book_id)
)

create table Book (
	book_id int identity(1,1) primary key,
	book_name nvarchar (max),
	book_price float,
	book_quantity int,
	book_descrip nvarchar(max),
	book_image nvarchar(max),
	book_release datetime,
	book_view int,
	book_sale int,
	puslisher_id int,
	category_id int,
	)
create table Rate (
	rate_id int identity(1,1) primary key,
	book_id int,
	rate_point int,
	rate_comment nvarchar(max)
)
create table Category(
	category_id int identity(1,1) primary key,
	category_name nvarchar(max)
)
create table Publisher(
	publisher_id int identity(1,1) primary key,
	publisher_phone char(11),
	publisher_mail nvarchar(max),
	publisher_address nvarchar(max),
	publisher_name nvarchar(max)

)

create table _Order (
	order_id int identity (1,1) primary key,
	order_date datetime,
	order_total_mount float,
	order_delivery_date datetime,
	order_delivery_address nvarchar(max),
	order_phone char(11),
	order_name nvarchar(max),
	order_shipping_date datetime,
	order_form_of_delivery nvarchar(max),
	order_payment nvarchar(max),
	order_status nvarchar(max),
	customer_id int,
	Voucher varchar(10)
)
create table OrderDetail(
	order_id int,
	book_id int,
	book_quanity int,
	book_price float,
	orderdetail_total_mount float,
	constraint  PK_OrderDetail primary key(order_id,book_id)
)
create table VOUCHER(
	voucher_id varchar(10) primary key,
	voucher_discount float,
	vourcher_quantity int
)
create table Customer(
	customer_id int identity (1,1) primary key,
	customer_name nvarchar(max),
	customer_address nvarchar(max),
	customer_phone char(11),
	customer_mail nvarchar(max),
	customer_user_name varchar(max),
	customer_password varchar(max),
	customer_birthday datetime,
	customer_sex nvarchar(30),
	accuracy bit
)
create table HRM (
	hrm_user_name varchar(30) primary key,
	hrm_password varchar(max)
)

alter table Role add constraint FK_Author_Role foreign key (author_id) references Author(author_id);
alter table Role add constraint FK_Book_Role foreign key (book_id) references Book(book_id);
alter table Rate add constraint FK_Book_Rate foreign key (book_id) references Book(book_id);
alter table Book add constraint FK_Category_Book foreign key (category_id) references Category(category_id);
alter table Book add constraint FK_Publisher_Book foreign key (publisher_id) references Publisher(publisher_id);
alter table OrderDetail add constraint FK_Book_OrderDetail foreign key (book_id) references Book(book_id);
alter table OrderDetail add constraint FK_Order_OrderDetail foreign key (order_id) references _Order(order_id);
alter table _Order add constraint FK_voucher_Order foreign key (voucher) references VOUCHER(voucher_id);
alter table _Order add constraint FK_Customer_Order foreign key (customer_id) references Customer(customer_id);
