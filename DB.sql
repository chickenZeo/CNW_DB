create database PKOT
go
use PKOT
go

create table LoaiHang(
	MaLH char(10) primary key,
	TenLH nvarchar(50),
	MoTa ntext,
	Images nvarchar(max)
)	
go

create	table NCC(
	MaNCC char(10) primary key,
	TenNCC nvarchar(50),
	DiaChi nvarchar(100),
	SDT varchar(20),
	Email varchar(100),
	Logo nvarchar(max)
)	
go

create table SanPham(
	MaSP char(10) primary key ,
	TenSP nvarchar(50),
	SoLuong int,
	DonGia money,
	MoTa ntext,
	GiaKM money,
	Images nvarchar(max),
	MaLH char(10) references LoaiHang(MaLH),
	MaNCC char(10) references NCC(MaNCC)
)
go

create table KhachHang(
	MaKH char(10) primary key ,
	TenKH nvarchar(50),
	SDT varchar(12),
	DiaChi nvarchar(50),
	Account varchar(50),
	Pass varchar(50),
	Gmail varchar(100),
	IsVip bit
)
go

create table DatHang(
	MaDH char(10) primary key,
	NgayDat date,
	NgayShip date,
	TienShip money,
	MaKH char(10) references KhachHang(MaKH) on delete cascade
)
go

create table Adminn(
	MaAD char(10) primary key,
	UserName varchar(50),
	Pass varchar(50),
	Email varchar(100)
)
go

create table TinTuc(
	MaTT char(10) primary key,
	NoiDung ntext,
	TieuDe nvarchar(200),
	NgayViet date,
	TacGia nvarchar(100)
)
go

create table BinhLuan(
	MaBL char(10) primary key,
	NoiDung ntext,
	MaSP char(10) references SanPham(MaSP), 
	MaKH char(10) references KhachHang(MaKH)
)