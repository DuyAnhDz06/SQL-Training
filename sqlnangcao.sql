go
Create database thuctap2
use thuctap2
--
Create table KHACHHANG
(
MaKH nvarchar(50) primary key not null,
TenKH nvarchar(50)not null,
Email nvarchar(50)not null,
SoDT nchar(10) not null,
DiaChi nvarchar(100) not null,
);
--
Create table CHITIETDONHANG
(
MaDH nvarchar(50) primary key not null,
MaSP  nvarchar(50)  not null,
SoLuong int not null,
TongTien int not null
);
--
Create table SANPHAM
(
MaSP nvarchar(50) primary key not null,
MaDM  nvarchar(50)  not null,
TenSP nvarchar(50)  not null,
GiaTien int not null,
SoLuong int not null,
XuatXu nvarchar(100) not null
);
--
Create table DONHANG
(
MaDH nvarchar(50) primary key not null,
MaKH nvarchar(50)  not null,
MaTT nvarchar(50)  not null,
NgayDat date not null
);
--
Create table THANHTOAN
(
MaTT nvarchar(50) primary key not null,
PhuongThucTT nvarchar(50)  not null
);
--
Create table DMSANPHAM
(
MaDM nvarchar(50) primary key not null,
TenDanhMuc nvarchar(50)  not null,
MoTa nvarchar(100)  not null
);
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
Select * from khachhang

Insert into KHACHHANG(makh, tenkh,email,sodt,diachi)
Values('KH001','Tran Van An	','antv@gmail.com','0905123564','Lang Son'	)
Insert into KHACHHANG(makh, tenkh,email,sodt,diachi)
Values('KH002','Phan Phuoc','phuocp@gmail.com','0932568984','Da Nang'	)
Insert into KHACHHANG(makh, tenkh,email,sodt,diachi)
Values('KH003','Tran Huu Anh','anhth@gmail.com','0901865232','Ha Noi'	)

Select * from DMSANPHAM

Insert into DMSANPHAM(MaDM, TenDanhMuc,MoTa)
Values('DM01','	Thoi Trang Nu','vay, ao danh cho nu')
Insert into DMSANPHAM(MaDM, TenDanhMuc,MoTa)
Values('DM02','	Thoi Trang Nam','vay, ao danh cho nu')
Insert into DMSANPHAM(MaDM, TenDanhMuc,MoTa)
Values('DM03','	Trang suc','danh cho nu va nam')

Select * from SANPHAM

Insert into SANPHAM(MaSP, MaDM,TenSP,SoLuong,GiaTien,XuatXu)
Values('SP001','DM01','Dam Maxi','200','195,000','VN')
Insert into SANPHAM(MaSP, MaDM,TenSP,SoLuong,GiaTien,XuatXu)
Values('SP002','DM01','	Tui Da Mỹ','50','3,000,000','HK')
Insert into SANPHAM(MaSP, MaDM,TenSP,SoLuong,GiaTien,XuatXu)
Values('SP003','DM02','Lac tay Uc','300','300,000','HQ')

Select * From THANHTOAN

Insert into THANHTOAN(MaTT,PhuongThucTT)
Values('TT01','Visa')
Insert into THANHTOAN(MaTT,PhuongThucTT)
Values('TT02','	Master Card')
Insert into THANHTOAN(MaTT,PhuongThucTT)
Values('TT03','JCB')

Select * from DONHANG

Insert into DONHANG(MaDH, MaKH,MaTT,NgayDat)
Values('DH001','KH002','TT01','	2014/10/20')
Insert into DONHANG(MaDH, MaKH,MaTT,NgayDat)
Values('DH002','KH002','TT01','	2015/5/15')
Insert into DONHANG(MaDH, MaKH,MaTT,NgayDat)
Values('DH003','KH001','TT03','	2015/4/20')

Select * from CHITIETDONHANG
--delete from CHITIETDONHANG where MaDH = 'dh002'
Insert into CHITIETDONHANG(MaDH, MaSP,SoLuong,TongTien)
Values('DH001','SP002','3','56,000')
Insert into CHITIETDONHANG(MaDH, MaSP,SoLuong,TongTien)
Values('DH003','SP001','10','27,444')
Insert into CHITIETDONHANG(MaDH, MaSP,SoLuong,TongTien)
Values('DH002','SP002','10','67,144')

--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
/*Câu 1: Thực hiện yêu cầu sau:
Tạo một khung nhìn có tên là V_KhachHang để thấy được thông tin của tất cả các đơn hàng 
có ngày đặt hàng nhỏ hơn ngày 06/15/2015 của những khách hàng có địa chỉ là “Da Nang”.
Thông qua khung nhìn V_KhachHang thực hiện việc cập nhật ngày đặt hàng thành 06/15/2015 
đối với những khách hàng đặt hàng vào ngày 06/15/2014.*/
Select * from KHACHHANG
Select * from DONHANG


Alter View V_KhachHang AS
SELECT k.TenKH,k.DiaChi,k.Email,k.SoDT,k.MaKH,d.NgayDat  FROM KHACHHANG as K 
INNER JOIN DONHANG as D
ON k.MaKH = D.MaDH
WHERE k.DiaChi = N'Da Nang' 
AND D.NgayDat < '2015-06-15'
GO

Select * from V_KhachHang
UPDATE V_KhachHang SET NgayDat = '06/15/2015'
GO

/*Câu 2: Tạo 2 thủ tục:
Thủ tục Sp_1: Dùng để xóa thông tin của những sản phẩm có mã sản phẩm được truyền vào 
như một tham số của thủ tục. 
Thủ tục Sp_2: Dùng để bổ sung thêm bản ghi mới vào bảng CHITIETDONHANG (Sp_2 phải thực
hiện kiểm tra tính hợp lệ của dữ liệu được bổ sung là không trùng khóa chính và đảm bảo 
toàn vẹn tham chiếu đến các bảng có liên quan). */

go
Alter PROCEDURE duyanhtest_sp1
(
@donhang varchar(50) 
)
AS 
BEGIN
select * from donhang
     DELETE FROM DONHANG
	WHERE DONHANG = @donhang
END;

declare @donghang varchar(50);
  EXEC duyanhtest_sp1
  select @donghang as TEST
   


/*Câu 3: Viết 2 bẫy sự kiện (trigger) cho bảng CHITIETDONHANG theo yêu cầu sau:
Trigger_1: Khi thực hiện đăng ký mới một đơn đặt hàng cho khách hàng thì cập nhật
lại số lượng sản phẩm trong bảng sản phẩm (tức là số lượng sản phẩm còn lại sau khi đã bán).
Bẫy sự kiện chỉ xử lý 1 bản ghi.
Trigger_2: Khi cập nhập lại số lượng sản phẩm mà khách hàng đã đặt hàng, kiểm tra xem số lượng 
cập nhật có phù hợp hay không (số lượng phải lớn hơn 1 và nhỏ hơn 100). Nếu dữ liệu hợp lệ thì 
cho phép cập nhật, nếu không thì hiển thị thông báo “số lượng sản phẩm được đặt hàng phải nằm 
trong khoảng giá trị từ 1 đến 100” và thực hiện quay lui giao tác. */
go
CREATE TRIGGER Trigger_1
ON CHITIETDONHANG
FOR DELETE
AS
BEGIN
	DECLARE @sum int
	SELECT @sum = COUNT(*) FROM CHITIETDONHANG
	PRINT 'Tổng số bản ghi còn lại của bảng CHITIETDONHANG la: '+ CAST(@sum AS varchar(5))
END
GO


/*Câu 4: Tạo hàm do người dùng định nghĩa (user-defined function) để tính điểm thưởng cho khách hàng 
của tất cả các lần đặt hàng trong năm 2014, mã khách hàng sẽ được truyền vào thông qua tham số đầu vào 
của hàm. Cụ thể như sau:
Nếu tổng số tiền khách hàng đã trả cho tất cả các lần mua hàng dưới 2.000.000, thì trả về kết quả 
là khách hàng được nhận 20 điểm thưởng. 
Nếu tổng số tiền khách hàng đã trả cho tất cả các lần mua hàng từ 2.000.000 trở đi, thì trả về kết quả 
là khách hàng được nhận 50 điểm thưởng. */



/*Câu 5: Tạo thủ tục Sp_SanPham tìm những sản phẩm đã từng được khách hàng đặt mua để xóa thông tin 
về những sản phẩm đó trong bảng SANPHAM và xóa thông tin những đơn hàng có liên quan đến những sản 
phẩm đó (tức là phải xóa những bản ghi trong bảng DONHANG và CHITIETDONHANG có liên quan đến các sản phẩm*/