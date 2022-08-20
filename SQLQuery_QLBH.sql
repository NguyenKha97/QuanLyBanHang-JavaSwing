create database QLBH
use QLBH
set dateformat DMY
CREATE TABLE KHACHHANG(
	MAKH CHAR(4),
	HOTEN VARCHAR(40),
	DCHI VARCHAR(100),
	SODT VARCHAR(20),
	NGSINH SMALLDATETIME,
	NGDK SMALLDATETIME,
	DOANHSO MONEY,
	PRIMARY KEY(MAKH)
)
CREATE TABLE NHANVIEN(
	MANV CHAR(4),
	HOTEN VARCHAR(40),
	SODT VARCHAR(20),
	NGVL SMALLDATETIME,
	PRIMARY KEY (MANV)
)
CREATE TABLE SANPHAM(
	MASP CHAR(4),
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR (40),
	GIA MONEY,
	PRIMARY KEY(MASP)
)
CREATE TABLE HOADON(
	SOHD INT,
	NGHD SMALLDATETIME,
	MAKH CHAR(4) foreign key references KHACHHANG(MAKH),
	MANV CHAR(4) foreign key references NHANVIEN(MANV),
	TRIGIA MONEY,
	PRIMARY KEY(SOHD)
)
CREATE TABLE CTHD(
	SOHD INT foreign key references HOADON(SOHD),
	MASP CHAR(4) foreign key references SANPHAM(MASP) ,
	SL INT,
	CONSTRAINT PK_CTHD PRIMARY KEY (SOHD,MASP)
)

-- THEM CONSTRAINT

ALTER TABLE KHACHHANG ADD LOAIKH VARCHAR(30)

ALTER TABLE SANPHAM ADD CONSTRAINT CK_DVT CHECK(DVT IN ('CAY','HOP','QUYEN','CHUC','CAI')) 

ALTER TABLE SANPHAM ADD CONSTRAINT CK_GIA CHECK(GIA >=500)

ALTER TABLE KHACHHANG ADD CONSTRAINT CK_DOANHSO CHECK(DOANHSO > 0)


-- NHAP DU LIEU--

INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH) VALUES ('KH01', 'Nguyen Van A', '731 Tran Hung Dao, Q5, TpHCM', '08823451', '22/10/1960', '22/07/2006', '13060000', 'Vang Lai') 
--ALTER TABLE KHACHHANG DROP CONSTRAINT CK_NGDK
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH) VALUES ('KH02', 'Tran Ngoc Han', '23/5 Nguyen Trai, Q5, TpHCM','0908256478', '3/4/1974', '30/07/2006', '280000', 'Thuong Xuyen')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH03', 'Tran Ngoc Linh', '45 Nguyen Canh Chan, Q1, TpHCM', '0938776266', '12/6/1980', '05/08/2006', '3860000', 'Vip')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH04', 'Tran Minh Long', '50/34 Le Dai Hanh, Q10, TpHCM', '0917325476', '9/3/1965', '02/10/2006', '250000', 'Vang Lai')
UPDATE KHACHHANG SET LOAIKH='Vip' WHERE MAKH='KH01' 
UPDATE KHACHHANG SET LOAIKH='Thuong xuyen' WHERE MAKH='KH02'
UPDATE KHACHHANG SET LOAIKH='Thuong xuyen' WHERE MAKH='KH04'
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH) VALUES ('KH05', 'Le Minh Nhat', '34 Truong Dinh, Q3, TpHCM','08246108', '10/3/1950', '28/10/2006', '21000', 'Vang lai')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH06', 'Le Hoai Thuong', '227 Nguyen Van Cu, Q5, TpHCM', '08631738', '31/12/1981', '24/11/2006', '915000', 'Thuong xuyen')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH07', 'Nguyen Van Tam', '32/3 Tran Binh Trong, Q5, TpHCM', '0916783565', '6/4/1971', '01/12/2006', '12500', 'Vang lai')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH08', 'Phan Thi Thanh', '45/2 An Duong Vuong, Q5, TpHCM', '0938435756', '10/1/1971', '13/12/2006', '365000', 'Thuong xuyen')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH09', 'Le Ha Vinh', '873 Le Hong Phong, Q5, TpHCM', '08654763', '3/9/1979', '14/01/2007', '70000', 'Vang lai')
INSERT INTO KHACHHANG (MAKH, HOTEN, DCHI, SODT, NGSINH, NGDK, DOANHSO, LOAIKH)VALUES ('KH10', 'Ha Duy Lap', '34/34B Nguyen Trai, Q1, TpHCM', '08768904', '2/5/1983', '16/01/2007', '67500', 'Vang lai')
SELECT * FROM KHACHHANG

-- NHAP DU LIEU BANG NHAN VIEN--
INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL) VALUES ('NV01', 'Nguyen Nhu Nhut', '0927345678', '13/4/2006')
INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL)VALUES ('NV02', 'Le Thi Phi Yen', '0987567390', '21/4/2006')
INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL)VALUES ('NV03', 'Nguyen Van B', '0997048382', '27/4/2006')
INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL)VALUES ('NV04', 'Ngo Thanh Tuan', '0913758498', '24/6/2006')
INSERT INTO NHANVIEN (MANV, HOTEN, SODT, NGVL)VALUES ('NV05', 'Nguyen Thi Truc Thanh', '0918590387', '20/7/2006')
SELECT * FROM NHANVIEN

-- NHAP LIEU BANG SAN PHAM--
SELECT * FROM HOADON WHERE SOHD = '1001'
INSERT INTO SANPHAM (MASP, TENSP, DVT, NUOCSX, GIA) VALUES ('BC01', 'But Chi', 'cay', 'Singapore', '3000')
INSERT INTO SANPHAM VALUES ('BC02', 'But Chi', 'cay', 'Singapore', '5000')
INSERT INTO SANPHAM VALUES ('BC03', 'But Chi', 'cay', 'Viet Nam', '3500')
INSERT INTO SANPHAM VALUES ('BC04', 'But Chi', 'hop', 'Viet Nam', '30000')
INSERT INTO SANPHAM VALUES ('BB01', 'But bi', 'cay', 'Viet Nam', '5000')
UPDATE SANPHAM SET TENSP='But chi' WHERE MASP='BC01'
UPDATE SANPHAM SET TENSP='But chi' WHERE MASP='BC02'
UPDATE SANPHAM SET TENSP='But chi' WHERE MASP='BC03'
UPDATE SANPHAM SET TENSP='But chi' WHERE MASP='BC04'
INSERT INTO SANPHAM VALUES ('BB02', 'But bi', 'cay', 'Trung Quoc', '7000')
INSERT INTO SANPHAM VALUES ('BB03', 'But bi', 'hop', 'Thai Lan', '100000')
INSERT INTO SANPHAM VALUES ('TV01', 'Tap 100 giay mong', 'quyen', 'Trung Quoc', '2500')
INSERT INTO SANPHAM VALUES ('TV02', 'Tap 200 giay mong', 'quyen', 'Trung Quoc', '4500')
INSERT INTO SANPHAM VALUES ('TV03', 'Tap 100 giay tot', 'quyen', 'Viet Nam', '3000')
INSERT INTO SANPHAM VALUES ('TV04', 'Tap 200 giay tot', 'quyen', 'Viet Nam', '5500')
INSERT INTO SANPHAM VALUES ('TV05', 'Tap 100 trang', 'chuc', 'Viet Nam', '23000')
INSERT INTO SANPHAM VALUES ('TV06', 'Tap 200 trang', 'chuc', 'Viet Nam', '53000')
INSERT INTO SANPHAM VALUES ('TV07', 'Tap 100 trang', 'chuc', 'Trung Quoc', '34000')
INSERT INTO SANPHAM VALUES ('ST01', 'So tay 500 trang', 'quyen', 'Trung Quoc', '40000')
INSERT INTO SANPHAM VALUES ('ST02', 'So tay loai 1', 'quyen', 'Viet Nam', '55000')
INSERT INTO SANPHAM VALUES ('ST03', 'So tay loai 2', 'quyen', 'Viet Nam', '51000')
INSERT INTO SANPHAM VALUES ('ST04', 'So tay', 'quyen', 'Thai Lan', '55000')
INSERT INTO SANPHAM VALUES ('ST05', 'So tay mong', 'quyen', 'Thai Lan', '20000')
INSERT INTO SANPHAM VALUES ('ST06', 'Phan viet bang', 'hop', 'Viet Nam', '5000')
INSERT INTO SANPHAM VALUES ('ST07', 'Phan khong bui', 'hop', 'Viet Nam', '7000')
INSERT INTO SANPHAM VALUES ('ST08', 'Bong bang', 'cai', 'Viet Nam', '1000')
INSERT INTO SANPHAM VALUES ('ST09', 'But long', 'cay', 'Viet Nam', '5000')
INSERT INTO SANPHAM VALUES ('ST10', 'But long', 'cay', 'Trung Quoc', '7000')
SELECT * FROM SANPHAM

-- NHAP LIEU BANG HOA DON--
INSERT INTO HOADON (SOHD, NGHD, MAKH, MANV, TRIGIA) VALUES ('1001', '23/07/2006', 'KH01', 'NV01', '320000')
INSERT INTO HOADON VALUES ('1002', '12/08/2006', 'KH01', 'NV02', '840000')
INSERT INTO HOADON VALUES ('1003', '01/09/2006', 'KH02', 'NV01', '100000')
INSERT INTO HOADON VALUES ('1004', '01/09/2006', 'KH02', 'NV01', '180000')
UPDATE HOADON SET NGHD='23/08/2006' WHERE SOHD='1003'
INSERT INTO HOADON VALUES ('1005', '20/10/2006', 'KH01', 'NV02', '3800000')
INSERT INTO HOADON VALUES ('1006', '16/10/2006', 'KH01', 'NV03', '2430000')
INSERT INTO HOADON VALUES ('1007', '28/10/2006', 'KH03', 'NV03', '3800000')
INSERT INTO HOADON VALUES ('1008', '28/10/2006', 'KH01', 'NV03', '440000')
UPDATE HOADON SET TRIGIA='510000' WHERE SOHD='1007'
INSERT INTO HOADON VALUES ('1009', '28/10/2006', 'KH03', 'NV04', '200000')
INSERT INTO HOADON VALUES ('1010', '01/11/2006', 'KH01', 'NV01', '5200000')
INSERT INTO HOADON VALUES ('1011', '04/11/2006', 'KH04', 'NV03', '250000')
INSERT INTO HOADON VALUES ('1012', '30/11/2006', 'KH05', 'NV03', '21000')
INSERT INTO HOADON VALUES ('1013', '12/12/2006', 'KH06', 'NV01', '5000')
INSERT INTO HOADON VALUES ('1014', '31/12/2006', 'KH03', 'NV02', '3150000')
INSERT INTO HOADON VALUES ('1015', '01/01/2007', 'KH06', 'NV01', '910000')
INSERT INTO HOADON VALUES ('1016', '01/01/2007', 'KH07', 'NV02', '12500')
INSERT INTO HOADON VALUES ('1017', '02/01/2007', 'KH08', 'NV03', '35000')
INSERT INTO HOADON VALUES ('1018', '13/01/2007', 'KH08', 'NV03', '330000')
INSERT INTO HOADON VALUES ('1019', '13/01/2007', 'KH01', 'NV03', '30000')
INSERT INTO HOADON VALUES ('1020', '14/01/2007', 'KH09', 'NV04', '70000')
INSERT INTO HOADON VALUES ('1021', '16/01/2007', 'KH10', 'NV03', '67500')
INSERT INTO HOADON (SOHD, NGHD, MANV, TRIGIA)VALUES ('1022', '16/01/2007', 'NV03', '7000')
INSERT INTO HOADON (SOHD, NGHD, MANV, TRIGIA)VALUES ('1023', '17/01/2007', 'NV01', '330000')
SELECT * FROM HOADON

-- NHAP LIEU BANG CTHD--
INSERT INTO CTHD (SOHD, MASP, SL) VALUES ('1001', 'TV02', '10')
INSERT INTO CTHD VALUES ('1001', 'ST01', '5')
INSERT INTO CTHD VALUES ('1001', 'BC01', '5')
INSERT INTO CTHD VALUES ('1001', 'BC02', '10')
INSERT INTO CTHD VALUES ('1001', 'ST08', '10')
INSERT INTO CTHD VALUES ('1002', 'BC04', '20')
INSERT INTO CTHD VALUES ('1002', 'BB01', '20')
INSERT INTO CTHD VALUES ('1002', 'BB02', '20')
INSERT INTO CTHD VALUES ('1003', 'BB03', '10')
INSERT INTO CTHD VALUES ('1004', 'TV01', '20')
INSERT INTO CTHD VALUES ('1004', 'TV02', '10')
INSERT INTO CTHD VALUES ('1004', 'TV03', '10')
INSERT INTO CTHD VALUES ('1004', 'TV04', '10')
INSERT INTO CTHD VALUES ('1005', 'TV05', '50')
INSERT INTO CTHD VALUES ('1005', 'TV06', '50')
INSERT INTO CTHD VALUES ('1006', 'TV07', '20')
INSERT INTO CTHD VALUES ('1006', 'ST01', '30')
INSERT INTO CTHD VALUES ('1006', 'ST02', '10')
INSERT INTO CTHD VALUES ('1007', 'ST03', '10')
INSERT INTO CTHD VALUES ('1008', 'ST04', '8')
INSERT INTO CTHD VALUES ('1009', 'ST05', '10')
INSERT INTO CTHD VALUES ('1010', 'TV07', '50')
INSERT INTO CTHD VALUES ('1010', 'ST07', '50')
INSERT INTO CTHD VALUES ('1010', 'ST08', '100')
INSERT INTO CTHD VALUES ('1010', 'ST04', '50')
INSERT INTO CTHD VALUES ('1010', 'TV03', '100')
INSERT INTO CTHD VALUES ('1011', 'ST06', '50')
INSERT INTO CTHD VALUES ('1012', 'ST07', '3')
INSERT INTO CTHD VALUES ('1013', 'ST08', '5')
INSERT INTO CTHD VALUES ('1014', 'BC02', '80')
INSERT INTO CTHD VALUES ('1014', 'BB02', '100')
INSERT INTO CTHD VALUES ('1014', 'BC04', '60')
INSERT INTO CTHD VALUES ('1014', 'BB01', '50')
INSERT INTO CTHD VALUES ('1015', 'BB02', '30')
INSERT INTO CTHD VALUES ('1015', 'BB03', '7')
INSERT INTO CTHD VALUES ('1016', 'TV01', '5')
INSERT INTO CTHD VALUES ('1017', 'TV02', '1')
INSERT INTO CTHD VALUES ('1017', 'TV03', '1')
INSERT INTO CTHD VALUES ('1017', 'TV04', '5')
INSERT INTO CTHD VALUES ('1018', 'ST04', '6')
INSERT INTO CTHD VALUES ('1019', 'ST05', '1')
INSERT INTO CTHD VALUES ('1019', 'ST06', '2')
INSERT INTO CTHD VALUES ('1020', 'ST07', '10')
INSERT INTO CTHD VALUES ('1021', 'ST08', '5')
INSERT INTO CTHD VALUES ('1021', 'TV01', '7')
INSERT INTO CTHD VALUES ('1021', 'TV02', '10')
INSERT INTO CTHD VALUES ('1022', 'ST07', '1')
INSERT INTO CTHD VALUES ('1023', 'ST04', '6')
SELECT * FROM CTHD

--chinh sua tat ca cac bang, them cot xoa
ALTER TABLE KHACHHANG ADD XOA TINYINT
ALTER TABLE NHANVIEN ADD XOA TINYINT
ALTER TABLE SANPHAM ADD XOA TINYINT
ALTER TABLE HOADON ADD XOA TINYINT
ALTER TABLE CTHD ADD XOA TINYINT

UPDATE KHACHHANG SET XOA = '0'
UPDATE NHANVIEN SET XOA = '0'
UPDATE SANPHAM SET XOA = '0'
UPDATE HOADON SET XOA = '0'
UPDATE CTHD SET XOA = '0'

INSERT INTO NHANVIEN VALUES ('ADMN', 'Admin', '12345', '1/1/2000', '2')
SELECT * FROM NHANVIEN
CREATE TABLE DANGNHAP(
	MANV CHAR(4) foreign key references NHANVIEN(MANV),
	USERNAME VARCHAR(20),
	PASSWORD VARCHAR(40),
	XOA INT,
	PRIMARY KEY (USERNAME)
)
INSERT INTO DANGNHAP VALUES ('ADMN','admin', 'admin', '0')
INSERT INTO DANGNHAP VALUES ('NV01', 'nv01', 'nv01', '0')
INSERT INTO DANGNHAP VALUES ('NV02', 'nv02', 'nv02', '0')
INSERT INTO DANGNHAP VALUES ('NV03', 'nv03', 'nv03', '0')
INSERT INTO DANGNHAP VALUES ('NV04', 'nv04', 'nv04', '0')
INSERT INTO DANGNHAP VALUES ('NV05', 'nv05', 'nv05', '0')
ALTER TABLE DANGNHAP Add GHICHU VARCHAR(10)
update DANGNHAP SET GHICHU = '123456' where MANV = 'ADMN'
select * from DANGNHAP

--query nh�p---------------------------

DELETE KHACHHANG Where XOA =1
DELETE NHANVIEN Where XOA = 1
DELETE SANPHAM Where XOA = 1
DELETE HOADON Where XOA = 1
DELETE CTHD Where XOA = 1


update KHACHHANG set DOANHSO = '70000' where MAKH = 'KH09'

DROP TABLE DANGNHAP

DELETE from KHACHHANG WHERE MAKH = 'KH11'
DELETE from CTHD WHERE SOHD = '1024'
DELETE from SANPHAM WHERE MASP = 'a'