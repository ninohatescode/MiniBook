use master
if exists (select * from sysdatabases where name = 'BOOKSTORE')
	drop database BOOKSTORE
go
create database BOOKSTORE
go
use BOOKSTORE
go

create table TACGIA (
	IDTG int identity(1,1) not null primary key,
	Ten nvarchar (max),
	DiaChi nvarchar (max),
	Mail nvarchar(max),
	GioiThieu nvarchar(max)
)

create table VAITRO (
	IDTG int,
	IDSach int ,
	VaiTro nvarchar(max)
	constraint  PK_VAITRO primary key(IDTG,IDSach)
)

create table SACH (
	IDSach int identity(1,1) primary key,
	TenSach nvarchar (max),
	GiaBan float,
	SoLuongKho int,
	MoTa nvarchar(max),
	AnhMinhHoa nvarchar(max),
	NgayPhatHanh datetime,
	SLXem int,
	SLBan int,
	IDNXB int,
	IDTheLoai int,
	)
create table DANHGIA (
	IDDanhGia int identity(1,1) primary key,
	IDSach int,
	Diem int,
	BinhLuan nvarchar(max)
)
create table THELOAI(
	IDTheLoai int identity(1,1) primary key,
	TenTheLoai nvarchar(max)
)
create table NXB(
	IDNXB int identity(1,1) primary key,
	SDT char(11),
	Mail nvarchar(max),
	DiaChi nvarchar(max),
	TenNXB nvarchar(max)

)
create table DONHANG(
	IDDonHang int identity (1,1) primary key,
	NgayDat datetime,
	TongTien float,
	NgayGiao datetime,
	DiaChiNhan nvarchar(max),
	SDTNhan char(11),
	TenNguoiNhan nvarchar(max),
	NgayGuiHang datetime,
	HTGiaoHang nvarchar(max),
	HTThanhToan nvarchar(max),
	TrangThai nvarchar(max),
	IDKhachHang int,
	Voucher varchar(10)
)
create table CHITIETDONHANG(
	IDDonHang int,
	IDSach int,
	SL int,
	DonGia float,
	ThanhTien float,
	constraint  PK_CHITIETDONHANG primary key(IDDonHang,IDSach)
)
create table VOUCHER(
	Ma varchar(10) primary key,
	TienGiam float,
	SLSD int
)
create table KHACHHANG(
	IDKhachHang int identity (1,1) primary key,
	Ten nvarchar(max),
	DiaChi nvarchar(max),
	SDT char(11),
	Mail nvarchar(max),
	TenDangNhap varchar(max),
	MatKhau varchar(max),
	NgaySinh datetime,
	GioiTinh nvarchar(30),
	XacThuc bit
)
create table QUANLI (
	TenTaiKhoan varchar(30) primary key,
	MatKhau varchar(max)
)

alter table VAITRO add constraint FK_TG_Vaitro foreign key (IDTG) references TACGIA(IDTG);
alter table VAITRO add constraint FK_Sach_Vaitro foreign key (IDSach) references SACH(IDSach);
alter table DANHGIA add constraint FK_Sach_DanhGia foreign key (IDSach) references SACH(IDSach);
alter table SACH add constraint FK_TheLoai_Sach foreign key (IDTheLoai) references THELOAI(IDTheLoai);
alter table SACH add constraint FK_NXB_Sach foreign key (IDNXB) references NXB(IDNXB);
alter table CHITIETDONHANG add constraint FK_Sach_Ctdh foreign key (IDSach) references SACH(IDSach);
alter table CHITIETDONHANG add constraint FK_DonHang_Ctdh foreign key (IDDonHang) references DONHANG(IDDonHang);
alter table DONHANG add constraint FK_voucher_DonHang foreign key (voucher) references VOUCHER(Ma);
alter table DONHANG add constraint FK_KhachHang_DonHang foreign key (IDKhachHang) references KHACHHANG(IDKhachHang);
