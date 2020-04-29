create database PKOT
go
use PKOT
go

create table LoaiHang(
	MaLH int primary key identity(1,1),
	TenLH nvarchar(50),
	MoTa ntext,
	Images varchar(50)
)	
go

create	table NCC(
	MaNCC int primary key identity(1,1),
	TenNCC nvarchar(50),
	DiaChi nvarchar(100),
	SDT varchar(20),
	Email varchar(100)
)	
go

create table SanPham(
	MaSP int primary key identity(1,1),
	TenSP nvarchar(50),
	SoLuong int,
	DonGia money,
	MoTa ntext,
	GiaKM money,
	Images varchar(50),
	MaLH int references LoaiHang(MaLH),
	MaNCC int references NCC(MaNCC)
)
go

create table KhachHang(
	MaKH int primary key identity(1,1),
	TenKH nvarchar(50),
	SDT varchar(20),
	DiaChi nvarchar(50),
	Account varchar(50),
	Pass varchar(50),
	Gmail varchar(100),
	IsVip bit
)
go

create table DatHang(
	MaDH int primary key identity(1,1),
	NgayDat date,
	NgayShip date,
	TienShip money,
	MaKH int references KhachHang(MaKH)
)
go

create table Adminn(
	MaAD int identity(1,1) primary key,
	UserName varchar(50),
	Pass varchar(50),
	Email varchar(100)
)
go

create table TinTuc(
	MaTT int identity(1,1) primary key,
	NoiDung ntext,
	TieuDe nvarchar(200),
	NgayViet date,
	TacGia nvarchar(100)
)
go