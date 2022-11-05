Create database BaitapthuchanhSQLcoban
--
--
use BaitapthuchanhSQLcoban
--
Create table NhaCungCap
(
MaNhaCC	int primary key not null,
TenNhaCC nvarchar(50) not null,
DiaChi nvarchar(50) not null,
DienThoai char(10) not null,
MaSoThue int not null
);
--
Create table LoaiDichVu
(
MaLoaiDV int primary key not null,
TenLoaiDV nvarchar(50) not null
);
--
Create table DangKyCungCap
(
MaDKCC int primary key not null,
MaNhaCC int not null,
MaloaiDV int not null,
MaDongXe int not null,
MaMP int not null,
NgayBatDauCungCap date not null,
NgayKetThucCungCap date not null,
SoLuongXeDangKy int not null
);
--
Create table DongXe
(
MaDongXe int primary key not null,
HangXe nvarchar(50) not null,
SoChoNgoi int not null
);
--
Create table MucPhi
(
MaMP int primary key not null,
DonGia int not null,
Mota nvarchar(50) not null
);
---
---
---
Select * from DongXe
--delete from DongXe where MaDongXe = 1
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(101, 'Toyota', '4')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(102, 'Volkswagen', '6')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(103, 'Honda', '5')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(104, 'Chevrolet', '6')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(105, 'Kia', '4')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(106, 'Mazda', '6')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(107, 'Mitsubishi Motors', '7')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(108, 'BMW', '4')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(109, 'Mercedes-Benz', '4')
insert into DongXe(MaDongXe, HangXe, SoChoNgoi)
values(110, 'VinFast', '9')
---
---
---
Select * from LoaiDichVu
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(10, 'Toyota')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(11, 'Volkswagen')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(12, 'Honda')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(13, 'Chevrolet')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(14, 'Kia')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(15, 'Mazda')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(16, 'Mitsubishi Motors')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(17, 'BMW')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(18, 'Mercedes-Benz')
insert into LoaiDichVu(MaLoaiDV, TenLoaiDV)
values(19, 'VinFast')
--
--
--
Select * from MucPhi
--delete  from MucPhi where MaMP = 10
insert into MucPhi(MaMP, DonGia, Mota)
values(10, 3000,'Toyota Motor Corporation, commonly known simply as Toyota, is a Japanese multinational automobile manufacturer')
insert into MucPhi(MaMP, DonGia, Mota)
values(11, 4000,'Volkswagen is an automobile manufacturer founded in 1937, headquartered in Wolfsburg, Lower Saxony, Germany. This famous car company was founded by the German Labor Front, used to be the largest car manufacturer in the world based on sales in 2016 and 2017. Volkswagen belongs to the luxury car segment and is present in Vietnam. Male since 2008')
insert into MucPhi(MaMP, DonGia, Mota)
values(12, 3002,'Honda Motor Company, Ltd., commonly referred to as Honda, is one of the famous automobile brands in the world as well as in Vietnam. Honda is an extremely famous brand, present in Vietnam since 1996 and officially licensed by the Ministry of Planning and Investment of Vietnam to manufacture and assemble cars in Vietnam in 2005.')
insert into MucPhi(MaMP, DonGia, Mota)
values(13, 3605,'Chevrolet is a famous automobile company founded on November 3, 1911 by Louis Chevrolet. In 1917 Chevrolet merged with General Motors Corporation (GM) of the United States. In 2011, General Motors Vietnam Co., Ltd. was established. General Motors Vietnam Co., Ltd. was established and distributes normal car models of this group.')
insert into MucPhi(MaMP, DonGia, Mota)
values(14, 1234,'Kia Corporation, commonly known as Kia, is a famous car manufacturer from South Korea. This is the second largest automobile company in Korea.')
insert into MucPhi(MaMP, DonGia, Mota)
values(15, 6532,'Mazda Motor Corporation is a famous Japanese car company, headquartered in Fuchu, Hiroshima. In 2015, Mazda produced 1.5 million vehicles for global distribution, of which more than 1 million were produced in Japan and the rest were produced at various factories around the world. Also in 2015, Mazda was the 15th largest car manufacturer in the world, by global output.')
insert into MucPhi(MaMP, DonGia, Mota)
values(16, 2456,'Mitsubishi Motors Corporation, commonly known as Mitsubishi Motors, is a Japanese multinational automobile manufacturer, with its headquarters located in Minato, Tokyo, Japan. In 2011, Mitsubishi Motors was the sixth largest automobile manufacturer in Japan and 19th worldwide by output. As of October 5, 2016, 34% of Mitsubishi Motors shares are owned by Nissan and become part of the Renault-Nissan-Mitsubishi Alliance.')
insert into MucPhi(MaMP, DonGia, Mota)
values(17, 4523,'Bayerische Motoren Werke AG, commonly known as BMW, is one of the famous German car manufacturers that is popular in the world as well as in Vietnam. The car company was founded in 1917. BMW is in the Top of the major car manufacturers in the world, ranked 14th in 2017 with nearly 2.3 million vehicles shipped.')
insert into MucPhi(MaMP, DonGia, Mota)
values(18, 7674,'Mercedes-Benz, commonly known as Mercedes, is a well-known, long-standing automobile brand from Germany. This car company was founded in 1926, specializing in producing luxury cars with comfortable interiors and durable engines. In 2018, Mercedes-Benz was the best-selling luxury car brand in the world, with 2.31 million vehicles produced.')
insert into MucPhi(MaMP, DonGia, Mota)
values(19, 2351,'VinFast is a famous car company in Vietnam, founded in 2017 by Mr. Pham Nhat Vuong. This is the first car brand of Vietnam to expand to the global market as well as to turn to the production of electric cars and electric motorbikes.')
---
---
---
Select * from NhaCungCap
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(10, 'TY', 'Viet Nam', '0969696969', '123')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(11, 'VW', 'Germany', '0987658432', '542')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(12, 'HD', 'Viet Nam', '0976595746', '643')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(13, 'CR', 'USA', '0987654392', '753')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(14, 'KA', 'Korea', '0987576831', '723')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(15, 'MD', 'Hiroshima', '0975328653', '423')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(16, 'MM', 'Japan', '0912376943', '542')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(17, 'BMW', 'Germany', '0987654329', '754')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(18, 'MB', 'Belgium', '0985746362', '982')
insert into NhaCungCap(MaNhaCC, TenNhaCC,DiaChi,DienThoai,MaSoThue)
values(19, 'VF', 'Viet Nam', '0987643296', '126')
---
---
---
Select * from DangKyCungCap
delete from DangKyCungCap where MaDKCC = 12

insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(10, 10, 10, 101, 10,'2002-09-06','2020-09-06',833000)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(11, 11, 11, 102, 11,'2001-02-06','2019-09-04',10000)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(12, 12, 12, 103, 12,'2003-04-07','2021-06-06',100001)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(13, 13, 13, 104, 13,'2005-09-12','2025-02-23',123454)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(18, 18, 18, 105, 18,'2010-03-12','2030-03-02',123653)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(14, 14, 14, 106, 14,'1992-06-09','2022-09-06',653321)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(15, 15, 15, 107, 15,'2007-02-04','2027-04-02',234653)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(16, 16, 16, 108, 16,'2007-07-05','2027-07-15',757585)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(17, 17, 17, 110, 17,'2002-09-06','2020-09-06',452346)
insert into DangKyCungCap(MaDKCC, MaNhaCC,MaloaiDV,MaDongXe,MaMP, NgayBatDauCungCap,NgayKetThucCungCap,SoLuongXeDangKy)
values(19, 19, 19, 109, 19,'2012-04-05','2032-10-20',879784)
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
--Câu 3: Liệt kê những dòng xe có số chỗ ngồi trên 4 chỗ
Select * from DongXe
where SoChoNgoi > 4
--Cau 4:Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp những dòng xe 
--thuộc hãng xe “Honda” với mức phí có đơn giá là 13.000 VNĐ/km hoặc những dòng xe 
--thuộc hãng xe “KIA” với mức phí có đơn giá là 18.000 VNĐ/km
select * from DongXe
select * from MucPhi
--
Select d.HangXe, m.DonGia
from MucPhi as M
inner join DongXe as D
on d.ID = m.ID
WHERE (D.HangXe = 'Honda' AND M.DonGia = 13000) OR (D.HangXe = 'Kia' AND M.DonGia = 18000)
group by d.HangXe, m.DonGia

--
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------
--Câu 5: Liệt kê thông tin toàn bộ nhà cung cấp được sắp xếp giảm dần theo tên nhà cung cấp và tăng dần theo mã số thuế
Select *
from NhaCungCap
order BY  MaSoThue ASC , TenNhaCC Desc
--Select MaSoThue from NhaCungCap
--ORDER BY  MaSoThue ASC
-------------------------------------------------------------------------------------------------------------------------
--Câu 6: Đếm số lần đăng ký cung cấp phương tiện tương ứng cho từng nhà cung cấp 
--với yêu cầu chỉ đếm cho những nhà cung cấp thực hiện đăng ký cung cấp có ngày bắt đầu cung cấp là “10/03/2020”
Select * from DangKyCungCap
select * from NhaCungCap

Select n.MaNhaCC,d.NgayBatDauCungCap
from DangKyCungCap as D
inner join NhaCungCap as N
on d.MaDKCC = n.MaNhaCC
where d.NgayBatDauCungCap = '2020-03-10'
group by n.MaNhaCC,d.NgayBatDauCungCap
--
SELECT MaNhaCC, COUNT(MaDKCC) AS 'Số lần đăng ký'
FROM DangKyCungCap
WHERE NgayBatDauCungCap = '2020-03-10'
GROUP BY MaNhaCC
-----------------------------------------------------------------------------------
-----------------------------------------------------------------------------------
--Câu 7: Liệt kê tên của toàn bộ các hãng xe có trong cơ sở dữ liệu với yêu cầu mỗi hãng xe chỉ được liệt kê một lần
select distinct HangXe
FROM DONGXE
-----------------------------------------------------------------------------------
/*Câu 8: Liệt kê MaDKCC, MaNhaCC, TenNhaCC, DiaChi, MaSoThue, TenLoaiDV, DonGia, HangXe, NgayBatDauCC, NgayKetThucCC 
của tất cả các lần đăng ký cung cấp phương tiện với yêu cầu những nhà cung cấp nào chưa từng thực hiện đăng ký cung cấp phương tiện 
thì cũng liệt kê thông tin những nhà cung cấp đó ra*/
select * from DangKyCungCap

SELECT K.MaDKCC, N.MaNhaCC, N.TenNhaCC, N.DiaChi, N.MaSoThue, V.TenLoaiDV, m.DonGia, x.HangXe, k.NgayBatDauCungCap, k.NgayKetThucCungCap 
FROM NhaCungCap as N
LEFT JOIN DangKyCungCap as K
ON K.MaNhaCC = N.MaNhaCC
LEFT JOIN LoaiDichVu  as V 
ON K.MaLoaiDV = V.MaLoaiDV
Left join MucPhi as M
On k.MaDKCC = m.MaMP
left join DongXe as X
On x.ID = k.ID 
Group By  K.MaDKCC, N.MaNhaCC, N.TenNhaCC, N.DiaChi, N.MaSoThue, V.TenLoaiDV, m.DonGia, x.HangXe, k.NgayBatDauCungCap, k.NgayKetThucCungCap 

/*Câu 9: Liệt kê thông tin của các nhà cung cấp đã từng đăng ký cung cấp phương tiện 
thuộc dòng xe “Celerio” hoặc từng đăng ký cung cấp phương tiện thuộc dòng xe “Fadil”*/
Select * from DangKyCungCap
select * from DongXe
select distinct *
from DangKyCungCap as D
inner join DongXe as X
on d.ID = x.ID
where x.HangXe in('Celerio','Fadil')

--Câu 10: Liệt kê thông tin của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp phương tiện lần nào cả.
SELECT * FROM NHACUNGCAP
WHERE MaNhaCC NOT IN 
	(SELECT MaNhaCC FROM DangKyCungCap)
	/*không có dữ liệu của các nhà cung cấp chưa từng thực hiện đăng ký cung cấp phương tiện lần nào cả.*/
	---------------------------------------------------------------------------------------------------------------------------

--Câu 11: Liệt kê thông tin của nhà cung cấp đăng ký cung cấp dịch vụ mà có mức phí đắt nhất.
select * from MucPhi
Select max(m.DonGia) as ' dịch vụ mà có mức phí đắt nhất'
from NhaCungCap as N
inner join MucPhi as m
on m.MaMP = n.MaNhaCC


--Câu 12: Liệt kê thông tin của nhà cung cấp đã đăng ký cung cấp nhiều dịch vụ nhất.
SELECT * FROM NHACUNGCAP
WHERE MaNhaCC NOT IN (SELECT MaNhaCC FROM DANGKYCUNGCAP)
