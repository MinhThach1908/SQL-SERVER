CREATE DATABASE Assignment1
GO
USE Assignment1
GO

--ORDERS--
CREATE TABLE Orders (
    MaDonHang int PRIMARY KEY,
	MaKhachHang int,
	NgayDatHang Datetime,
	TrangThai nvarchar(50)
)
INSERT INTO Orders(MaDonHang, MaKhachHang, NgayDatHang, TrangThai) VALUES (123, 101, '04/01/24', 'Đang Tiếp Nhận Đơn')
INSERT INTO Orders(MaDonHang, MaKhachHang, NgayDatHang, TrangThai) VALUES (456, 102, '15/12/23', 'Đang Vận Chuyển')
INSERT INTO Orders(MaDonHang, MaKhachHang, NgayDatHang, TrangThai) VALUES (789, 103, '02/01/24', 'Đang Tiếp Nhận Đơn')

--CUSTOMERS--
CREATE TABLE Customers (
    MaKhachHang int PRIMARY KEY,
	TenKhachHang nvarchar(50),
	DiaChi nvarchar(100),
	SoDienThoai char(9),
	TrangThai nvarchar(50),
)
INSERT INTO Customers(MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, TrangThai) VALUES (101, 'Nguyễn Văn An', '111 Nguyễn Trãi, Thanh Xuân, Hà Nội', '987654321', 'Active')
INSERT INTO Customers(MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, TrangThai) VALUES (102, 'Lê Ngọc Tiến', 'Cổ Nhuế, Cầu Giấy', '247829401', 'V.I.P')
INSERT INTO Customers(MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, TrangThai) VALUES (103, 'Nguyễn Đăng Khoa', 'Trần Huy Liệu, Ba Đình', '087295460', 'Offline')

--ORDER DETAILS--
CREATE TABLE OrderDetails (
    MaDonHang int PRIMARY KEY,
	MaSP int,
	Gia Money,
	SoLuong int,
)


--PRODUCTS--
CREATE TABLE Products (
    MaSP int PRIMARY KEY,
	TenSP nvarchar(50),
	MoTa nvarchar(100),
	DonVi nvarchar(50),
	Gia Money,
	SoLuong int,
	TrangThai nvarchar(50),
)
INSERT INTO Products(MaSP, TenSP, MoTa, DonVi, Gia, SoLuong, TrangThai) VALUES (01, 'Máy tính T450', 'Máy nhập mới', 'Chiếc', 1000, 1, 'Còn Hàng')
INSERT INTO Products(MaSP, TenSP, MoTa, DonVi, Gia, SoLuong, TrangThai) VALUES (02, 'Điện Thoại Nokia5670', 'Điện thoại đang hot', 200, 2, 'Hết Hàng')
INSERT INTO Products(MaSP, TenSP, MoTa, DonVi, Gia, SoLuong, TrangThai) VALUES (03, 'Máy In Samsung 450', 'Máy in đang ế', 'Chiếc', 100, 1, 'Còn Hàng')
INSERT INTO Products(MaSP, TenSP, MoTa, DonVi, Gia, SoLuong, TrangThai) VALUES (04, 'TV LG OLED', 'Tivi màn hình cong độ phân giải cao', 'Chiếc', 2000, 1, 'Hết Hàng')
INSERT INTO Products(MaSP, TenSP, MoTa, DonVi, Gia, SoLuong, TrangThai) VALUES (05, 'Máy in Canon2900', 'In sắc nét không bị nhòe mực', 'Chiếc', 1500, 1, 'Còn Hàng')
