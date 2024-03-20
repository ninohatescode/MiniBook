insert into QUANLI(TenTaiKhoan,MatKhau)
values
('admin','admin')

SET IDENTITY_INSERT THELOAI ON;
insert into THELOAI(IDTheLoai, TenTheLoai)
values
(1, N'Kỹ năng sống'),
(2, N'Rèn luyện nhân cách'),
(3, N'Tâm lý'),
(4, N'Sách cho tuổi mới lớn')
SET IDENTITY_INSERT THELOAI OFF;

SET IDENTITY_INSERT NXB ON;
insert into NXB(IDNXB, SDT, Mail, DiaChi, TenNXB)
values
(1, '02437734544', 'chinhanhhanoi@nxbtre.com.vn', N'Số 21, Dãy A11, Khu Đầm Trấu, Phường Bạch Đằng, Quận Hai Bà Trưng, Hà Nội ', N'Nhà xuất bản Trẻ'),
(2, '02439428653', 'info@nxbkimdong.com.vn ', N'55 Quang Trung, Hà Nội, Việt Nam ', N'Nhà xuất bản Kim Đồng'),
(3, '02838256804', 'nstonhop@gmail.com', N'62 Nguyễn Thị Minh Khai, Phường Đa Kao, Quận 1, TP. HCM', N'Nhà xuất bản Tổng hợp thành phố Hồ Chí Minh'),
(4, '02438222135', 'nhaxuatbanhnv@gmail.com', N'số 65 Nguyễn Du, Quận Hai Bà Trưng, Hà Nội', N'Nhà xuất bản Hội Nhà văn'),
(5, '02438221581', 'phathanh@nxbctqg.vn', N'6/86 Duy tân, Cầu Giấy, Hà Nội', N'Nhà xuất bản Chính trị quốc gia Sự thật')
SET IDENTITY_INSERT NXB OFF;

SET IDENTITY_INSERT TACGIA ON;
insert into TACGIA(IDTG, Ten, DiaChi, Mail, GioiThieu)
values
(1, N'Lê Đỗ Quỳnh Hương', N'Long An', 'ledoquynhhuong@gmail.com', N'MC, Thạc sĩ âm nhạc, Tác giả sách và là một diễn giả.'),
(2, N'Minh Niệm', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(3, N'Trác Nhã', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(4, N'Adam Grant', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(5, N'Tuệ Minh', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(6, N'Lya Luft', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(7, N'Dương Minh Hào', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(8, N'Virender Kapoor', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(9, N'Diệp Hồng Vũ', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(10, N'Wladislaw Jachtchenko', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(11, N'Giác Minh Luật', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(12, N'Nguyên Anh', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(13, N'Trương Cần', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(14, N'Matt Crossick', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(15, N'Lê Quang', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách'),
(16, N'Đào Nhiên Nhiên', N'Thành phố Hồ Chí Minh', 'minhniem@gmail.com', N'Tác giả viết sách')
SET IDENTITY_INSERT TACGIA OFF;

insert into VAITRO(IDTG, IDSach, VaiTro)
values
(1,1, N'Tác giả'),
(2,2, N'Tác giả'),
(3,3, N'Tác giả'),
(4,4, N'Tác giả'),
(5,5, N'Tác giả'),
(6,6, N'Tác giả'),
(7,7, N'Tác giả'),
(8,8, N'Tác giả'),
(9,9, N'Tác giả'),
(10,10, N'Tác giả'),
(11,11, N'Tác giả'),
(12,12, N'Tác giả'),
(13,13, N'Tác giả'),
(14,14, N'Tác giả'),
(15,15, N'Tác giả'),
(16,16, N'Tác giả')

SET IDENTITY_INSERT SACH ON;
insert into SACH(IDSach, TenSach, GiaBan, SoLuongKho, MoTa, AnhMinhHoa, NgayPhatHanh, SLXem, SLBan, IDNXB, IDTheLoai)
values
(1, N'Thay Đổi Cuộc Sống Với Nhân Số Học', 148000, 100, N'Sách về thần số học', 'thaydoicuocsongvoinhansohoc.jpg','2023', 100, 12, 2, 1),
(2, N'Hiểu Về Trái Tim',140000,100, N'Sách về nhận thức','hieuvetraitim.jpg', '2023', 100, 12, 2, 1),
(3, N'Khéo Ăn Nói Sẽ Có Được Thiên Hạ',78000,100, N'sách về cách ăn nói','kheoannoisecoduocthienha.jpg','2023',100,12,2,1),
(4, N'Dám Nghĩ Lại', 100000, 100, N'Sách về suy nghĩ', 'damnghilai.jpg', '2023', 100,12,2,1),
(5, N'Thói Quen Tốt Của Những Đứa Trẻ Chăm Ngoan', 57000, 100, N'Sách về thói quen', 'thoiquentotcuanhungduatrechamngoan.jpg', '2023',100, 12, 2,2 ),
(6, N'Lẽ Được Mất: Cuốn Sách Hóa Giải Những Khổ Đau Của Bạn!', 57000, 100, N'Sách về hên xui', 'leduocmatcuonsachhoagiainhungdaukhocuaban.jpg', '2023', 100, 12, 2, 2),
(7, N'Tủ Sách Rèn Luyện Nhân Cách Sống', 40000, 100, N'Sách về nhân cách sống', 'tusachrenluyennhancachsong.jpg','2023', 100,12,2,2),
(8, N'PQ Chỉ Số Đam Mê',64000,100, N'Sách về chỉ số đam mê', 'pqchisodamme.jpg', '2023',100,12,2,2),
(9, N'Tâm lý học tội phạm',87000,100, N'Sách về tâm lý', 'tamlyhoctoipham.jpg', '2023',100,12,2,3),
(10, N'Thuật Thao Túng - Góc Tối Ẩn Sau Mỗi Câu Nói',111000,100, N'Sách về thao túng tâm lý', 'thuatthaotunggoctoiansaumoicaunoi.jpg', '2023',100,12,2,3),
(11, N'Vẻ Đẹp Của Sự Cô Đơn',108000,100, N'Sách về vẻ đẹp cuộc sống', 'vedepcuasucodon.jpg', '2023',100,12,2,3),
(12, N'Đứa Trẻ Hiểu Chuyện Thường Không Có Kẹo Ăn',118000,100, N'Sách về ...', 'duatrehieuchuyenthuongkhongcokeoan.jpg', '2023',100,12,2,3),
(13, N'Cha Mẹ Không Phải Người Đầy Tớ Của Tôi',46000,100, N'Sách về tình mẫu tử', 'chamekhongphainguoidaytocuatoi.jpg', '2023',100,12,2,4),
(14, N'Giải Ngố Cho Con Trai',57000,100, N'Sách về giải ngố', 'giaingochocontrai.jpg', '2023',100,12,2,4),
(15, N'Kỹ Năng Sống - Cách Để Trở Thành - Cách Để Tự Bảo Vệ Mình',52000,100, N'Sách về kỹ năng sống', 'kynangsongcachdetrothanhcachdetubaoveminh.jpg', '2023',100,12,2,4),
(16, N'Nhật Ký Trưởng Thành Của Đứa Con Ngoan - Con Học Cách Ứng Xử',42000,100, N'Sách về học cách ứng xử', 'nhatkytruongthanhcuaduaconngoan.jpg', '2023',100,12,2,4)
SET IDENTITY_INSERT SACH OFF;
