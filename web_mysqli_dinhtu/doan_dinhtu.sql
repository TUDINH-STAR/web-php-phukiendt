-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 30, 2022 lúc 05:49 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_dinhtu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'tuadmin', '25f9e794323b453885f5181f1b624d0b', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `id` int(11) NOT NULL,
  `tenbaiviet` varchar(255) NOT NULL,
  `tomtat` mediumtext NOT NULL,
  `noidung` longtext NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `hinhanh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`id`, `tenbaiviet`, `tomtat`, `noidung`, `id_danhmuc`, `tinhtrang`, `hinhanh`) VALUES
(5, 'Điều gì đang khiến chỉ số Sát Lực phế ở Tiền Mùa Giải 2023', '<p>Trang bị S&aacute;t Lực tại Tiền M&ugrave;a Giải 2023</p>\r\n', '<p>Ở vị tr&iacute; Đường Giữa hiện tại,&nbsp;<a href=\"https://gamek.vn/best-of-zed.html\" target=\"_blank\">Zed</a>&nbsp;l&agrave; vị tướng mạnh nhất với tỷ lệ cấm l&ecirc;n tới hơn 50%. Tuy nhi&ecirc;n, c&aacute;c trang bị S&aacute;t Lực (thứ vốn gắn liền với Zed) lại bị vị tướng n&agrave;y bỏ qua ho&agrave;n to&agrave;n. Cụ thể, những trang bị thường được l&ecirc;n cho Zed ở thời điểm hiện tại đ&oacute; l&agrave;&nbsp;<a href=\"https://gamek.vn/riu-mang-xa.html\" target=\"_blank\">R&igrave;u M&atilde;ng X&agrave;</a>, R&igrave;u Đen v&agrave; Thương Phục Hận Serylda.</p>\r\n\r\n<p>Thậm ch&iacute; ở vị tr&iacute; trang bị thứ tư, tỷ lệ mua Dạ Kiếm Dratharr chỉ bằng 1/4 so với Thương Phục Hận Serylda m&agrave; th&ocirc;i. Điều n&agrave;y xuất ph&aacute;t từ việc chỉ số S&aacute;t Lực tỏ ra cực kỳ yếu ở Tiền M&ugrave;a Giải 2023 v&agrave; bị người chơi bỏ qua ho&agrave;n to&agrave;n.</p>\r\n\r\n<p><img alt=\"\" src=\"https://gamek.mediacdn.vn/133514250583805952/2022/12/29/1-16722553173771941440953-1672285105533-16722851057251962900707.png\" style=\"height:360px; width:480px\" /></p>\r\n\r\n<p>Zed tại Tiền M&ugrave;a Giải 2023 gần như kh&ocirc;ng sử dụng trang bị S&aacute;t Lực - nguồn: Riot Games</p>\r\n\r\n<p>Về cơ bản, chỉ số S&aacute;t Lực c&oacute; t&aacute;c dụng gi&uacute;p tướng hạ gục mục ti&ecirc;u &iacute;t gi&aacute;p. Tuy nhi&ecirc;n sau đợt cập nhật chống chịu ở m&ugrave;a 12, hầu hết tướng trong&nbsp;<a href=\"https://gamek.vn/khan-gia-lpl-xep-hai-cai-ten-nay-vao-doi-hinh-nhung-nha-vo-dich-cktg-te-nhat-lich-su-lmht-178221212043110824.chn\" target=\"_blank\">LMHT</a>&nbsp;đều được tăng gi&aacute;p cơ bản kể cả Ph&aacute;p Sư hay Xạ Thủ. V&igrave; vậy chỉ số S&aacute;t Lực đ&atilde; yếu đi kh&aacute; nhiều.</p>\r\n\r\n<p>Bước tới Tiền M&ugrave;a Giải 2023, t&igrave;nh trạng n&agrave;y c&agrave;ng trở n&ecirc;n tệ hơn khi c&aacute;c trang bị Chống Chịu trở n&ecirc;n qu&aacute; mạnh. Tới những vị tr&iacute; như Đấu Sĩ, Ph&aacute;p Sư cũng tận dụng Jak&rsquo;Sho Vỏ Bọc Th&iacute;ch Nghi th&igrave; chỉ số S&aacute;t Lực c&agrave;ng trở n&ecirc;n yếu đuối hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://gamek.mediacdn.vn/133514250583805952/2022/12/29/2-16722553174051278131544-1672285108041-16722851081691955474305.png\" style=\"height:360px; width:480px\" /></p>\r\n\r\n<p>Sự phổ biến qu&aacute; mức của Jak&rsquo;Sho Vỏ Bọc Th&iacute;ch Nghi c&agrave;ng khiến c&aacute;c trang bị S&aacute;t Lực mất chỗ đứng - nguồn: Riot Games</p>\r\n\r\n<p>Hệ quả l&agrave; người chơi S&aacute;t Thủ buộc phải t&igrave;m tới những trang bị cung cấp hiệu ứng trừ gi&aacute;p hoặc xuy&ecirc;n gi&aacute;p theo phần trăm như R&igrave;u Đen hay Thương Phục Hận Serylda. C&aacute;ch l&ecirc;n đồ n&agrave;y gi&uacute;p tướng như Zed, Kha&rsquo;Zix, Talon&hellip; dọn l&iacute;nh dễ d&agrave;ng v&agrave; g&acirc;y s&aacute;t thương hiệu quả hơn kh&aacute; nhiều.</p>\r\n', 7, 1, '1672302060_zed_0-1211.png'),
(6, 'Nếu vô địch CKTG 2022, T1 sẽ có danh hiệu lịch sử', '<p>Nếu v&ocirc; địch CKTG 2022, đ&acirc;y sẽ l&agrave; danh hiệu đặc biệt nhất&nbsp;</p>\r\n', '<p>S&aacute;ng ng&agrave;y 30/10 (giờ Việt Nam), T1 đ&atilde; xuất sắc đ&aacute;nh bại JD Gaming (JDG) trong trận B&aacute;n kết của&nbsp;<a href=\"https://gamek.vn/nhung-luot-chon-tuong-di-bac-nhat-lich-su-cac-ky-chung-ket-the-gioi-178221017184642656.chn\" target=\"_blank\">Chung kết thế giới</a>&nbsp;(CKTG) 2022. Đ&acirc;y l&agrave; một chiến thắng ho&agrave;n to&agrave;n thuyết phục, nhất l&agrave; khi JDG cũng đ&atilde; thể hiện hết khả năng. Kh&ocirc;ng chỉ gi&agrave;nh v&eacute; v&agrave;o B&aacute;n kết, m&agrave;n thể hiện của Faker v&agrave; c&aacute;c đồng đội c&ograve;n mang đến một th&ocirc;ng điệp:&nbsp;<a href=\"https://gamek.vn/cung-t1-huy-diet-jdg-o-tran-ban-ket-cktg-faker-duoc-khan-gia-phong-than-178221030155545221.chn\" target=\"_blank\">T1</a>&nbsp;đến với&nbsp;<a href=\"https://gamek.vn/hlv-bengi-tiet-lo-cach-cam-chon-lam-nen-chien-thang-cua-t1-truoc-rng-tai-cktg-2022-178221030082053366.chn\" target=\"_blank\">CKTG 2022</a>&nbsp;l&agrave; để gi&agrave;nh chức v&ocirc; địch v&agrave; họ sẽ chiến đấu để đạt được điều đ&oacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://static.invenglobal.com/upload/image/2022/11/03/o1667445395989526.jpeg\" style=\"height:467px; width:700px\" /></p>\r\n\r\n<p>T1 đ&atilde; xuất sắc vượt qua JDG để tiến v&agrave;o trận Chung kết của CKTG 2022</p>\r\n\r\n<p>Trước mắt T1 sẽ l&agrave; một h&agrave;nh tr&igrave;nh cuối c&ugrave;ng nữa mang t&ecirc;n &quot;trận Chung kết&quot;. Đ&acirc;y sẽ l&agrave; trận đấu quan trọng nhất cả m&ugrave;a giải của&nbsp;<a href=\"https://gamek.vn/faker-danh-gia-suc-manh-cua-lpl-va-lck-sau-chien-thang-truoc-rng-tai-cktg-2022-178221023145607175.chn\" target=\"_blank\">Faker</a>&nbsp;v&agrave; đồng đội. Nhưng nếu c&oacute; thể gi&agrave;nh chức v&ocirc; địch CKTG 2022, đ&acirc;y sẽ l&agrave; danh hiệu mang nhiều &yacute; nghĩa nhất đối với lịch sử giải đấu v&agrave; với cả c&aacute;c tuyển thủ T1.</p>\r\n\r\n<p><strong>Chức v&ocirc; địch lần thứ tư của Faker</strong></p>\r\n\r\n<p>Trong trận CKTG 2017, hầu như tất cả mọi người đều đ&atilde; chắc chắn về chức v&ocirc; địch CKTG lần thứ 4 của Faker, nhưng cuối c&ugrave;ng đội l&ecirc;n ng&ocirc;i lại l&agrave; Samsung Galaxy (SSG). Kh&ocirc;ng chỉ kết th&uacute;c kỷ nguy&ecirc;n thống trị của SKT T1 m&agrave; trận thua n&agrave;y c&ograve;n mở ra thời kỳ tụt dốc phong độ của ch&iacute;nh Faker. Đồng thời, từ sau trận Chung kết năm 2017, Faker kh&ocirc;ng c&ograve;n đặt ch&acirc;n v&agrave;o trận Chung kết của một kỳ CKTG th&ecirc;m lần n&agrave;o nữa.</p>\r\n\r\n<p><img alt=\"\" src=\"https://kenh14cdn.com/2020/9/9/photo-1-1599609281857844072246.jpg\" style=\"height:360px; width:640px\" /></p>\r\n\r\n<p>Faker đ&atilde; chờ nửa thập kỷ để lại c&oacute; cơ hội gi&agrave;nh được chức v&ocirc; địch CKTG lần thứ 4 trong sự nghiệp</p>\r\n\r\n<p>Nhưng sau chiến thắng trước JDG, Faker v&agrave; đồng đội đ&atilde; g&oacute;p mặt ở trận Chung kết của một kỳ CKTG sau 5 năm. Nửa thập kỷ đ&atilde; tr&ocirc;i qua với nhiều thay đổi, nhưng chắc chắn quyết t&acirc;m của Faker th&igrave; vẫn ch&aacute;y bỏng. V&agrave; chiếc c&uacute;p v&ocirc; địch lần thứ tư sẽ củng cố th&ecirc;m cho sự vĩ đại của huyền thoại Faker trong l&agrave;ng&nbsp;<a href=\"https://gamek.vn/chung-ket-the-gioi-2022-la-giai-dau-quy-tu-rat-nhieu-nha-vo-dich-cua-lang-lien-minh-huyen-thoai-178220915163211452.chn\" target=\"_blank\">Li&ecirc;n Minh Huyền Thoại</a>&nbsp;(LMHT) n&oacute;i ri&ecirc;ng v&agrave; Thể thao điện tử (Esports) thế giới n&oacute;i chung.</p>\r\n', 7, 1, '1672302526_faker.jpeg'),
(7, 'Doanh số đáng thất vọng của iPhone 14', '<p>&nbsp;C&oacute; thể sẽ khiến Apple phải thay đổi v&agrave; giảm gi&aacute; iPhone 15 Plus</p>\r\n', '<p>C&aacute;c mẫu iPhone 14 v&agrave; iPhone 14 Plus c&oacute; doanh số kh&ocirc;ng tốt như những g&igrave; Apple đ&atilde; kỳ vọng, đặc biệt l&agrave; phi&ecirc;n bản iPhone 14 Plus mới. Theo b&aacute;o c&aacute;o từ c&aacute;c chuỗi cung ứng, Apple đ&atilde; phải chuyển hướng nguồn lực sản xuất sang c&aacute;c phi&ecirc;n bản iPhone 14 Pro v&agrave; 14 Pro Max. B&ecirc;n cạnh đ&oacute;, một kế hoạch mới c&oacute; thể sẽ được đưa ra để đảm bảo doanh số của c&aacute;c mẫu iPhone 15 tốt hơn.</p>\r\n\r\n<p>Apple đ&atilde; kh&ocirc;ng c&ograve;n &aacute;p dụng chiến lược quen thuộc của m&igrave;nh, đ&oacute; l&agrave; trang bị chip xử l&yacute; mới nhất cho to&agrave;n bộ d&ograve;ng iPhone mới ra mắt. Kết quả l&agrave; iPhone 14 6,1 inch v&agrave; iPhone 14 Plus 6,7 inch vẫn chỉ được trang bị con chip xử l&yacute; cũ giống như iPhone 13. V&igrave; vậy kh&ocirc;ng c&oacute; g&igrave; l&agrave; lạ khi kh&ocirc;ng c&oacute; nhiều người ti&ecirc;u d&ugrave;ng lựa chọn iPhone 14 v&agrave; 14 Plus, đặc biệt l&agrave; với mức gi&aacute; tương tự năm ngo&aacute;i.</p>\r\n\r\n<p><img alt=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2022/12/29/221020-iphone-14-plus-2-1672283510994-16722835119161816320324-1672286887486-1672286887773763750983.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>Do đ&oacute;, Apple đang l&ecirc;n kế hoạch thực hiện một số thay đổi để gi&uacute;p cải thiện doanh số của c&aacute;c mẫu iPhone 15 kh&ocirc;ng phải Pro trong năm tới.</p>\r\n\r\n<p>Điều đầu ti&ecirc;n, Apple đang xem x&eacute;t việc giảm bớt những kh&aacute;c biệt giữa phi&ecirc;n bản thường v&agrave; phi&ecirc;n bản Pro. B&aacute;o c&aacute;o của PhoneArena cho biết rằng iPhone 15 v&agrave; iPhone 15 Plus cũng sẽ c&oacute; thiết kế Dynamic Island. Ngo&agrave;i ra, iPhone 15 v&agrave; 15 Plus sẽ được trang bị camera ch&iacute;nh 48MP giống như iPhone 14 Pro.</p>\r\n\r\n<p>Thứ hai, Apple c&oacute; thể sẽ điều chỉnh gi&aacute; b&aacute;n của phi&ecirc;n bản iPhone 15 Plus. Nguồn tin r&ograve; rỉ tiết lộ rằng iPhone 15 Plus sẽ c&oacute; gi&aacute; khởi điểm từ 899 USD, c&ograve;n iPhone 15 Pro sẽ c&oacute; gi&aacute; khởi điểm từ 999 USD.</p>\r\n\r\n<p>Cuối c&ugrave;ng, Apple sẽ tạo ra sự kh&aacute;c biệt lớn hơn giữa hai phi&ecirc;n bản iPhone 15 Pro v&agrave; 15 Pro Max. Theo đ&oacute;, iPhone 15 Pro Max sẽ trở n&ecirc;n cao cấp hơn hẳn với khung bằng titan v&agrave; camera ống k&iacute;nh tiềm vọng mới. Gi&aacute; b&aacute;n của phi&ecirc;n bản iPhone 15 Pro Max cũng sẽ cao hơn so với người tiền nhiệm của m&igrave;nh.</p>\r\n\r\n<p>Như vậy, iPhone 15 v&agrave; 15 Plus sẽ được n&acirc;ng cấp nhiều hơn, c&oacute; &iacute;t sự kh&aacute;c biệt hơn so với phi&ecirc;n bản Pro. Tuy nhi&ecirc;n, phi&ecirc;n bản iPhone 15 Pro Max cao cấp nhất sẽ lại c&oacute; nhiều kh&aacute;c biệt hơn hẳn so với phi&ecirc;n bản 15 Pro. Đ&acirc;y c&oacute; thể l&agrave; một chiến lược ho&agrave;n to&agrave;n mới của Apple, nhưng lại c&oacute; phần n&agrave;o kh&aacute; giống với của Samsung.</p>\r\n', 6, 1, '1672320472_2222.png'),
(9, 'Xe điện cần dùng lốp khác xe động cơ đốt', '<p>Xe điện cần d&ugrave;ng lốp kh&aacute;c xe động cơ đốt trong, đ&acirc;y l&agrave; l&yacute; do&nbsp;</p>\r\n', '<h2>Trọng lượng, tiếng ồn, độ b&aacute;m đường v&agrave; phạm vi l&aacute;i xe ảnh hưởng đ&aacute;ng kể tới mỗi chiếc lốp m&agrave; xe điện sử dụng.</h2>\r\n\r\n<p>Một trong những lời hứa hẹn lớn nhất của xe điện l&agrave; ch&uacute;ng mang lại sự tự do tương đối lớn cho người sử dụng, khỏi việc bảo dưỡng xe li&ecirc;n tục. Bạn sẽ kh&ocirc;ng c&ograve;n phải thay dầu v&agrave; bộ lọc, bugi đ&aacute;nh lửa, hiệu chỉnh c&aacute;c chi tiết, hay với động cơ diesel l&agrave; bộ lọc hạt v&agrave; dung dịch xử l&yacute; kh&iacute; thải. Nhưng c&oacute; một thứ chắc chắn bạn sẽ phải thay thế thường xuy&ecirc;n, đ&oacute; l&agrave; thứ kết nối chiếc xe với mặt đường: những chiếc lốp. N&oacute; sử dụng kh&ocirc;ng kh&iacute; v&agrave; lu&ocirc;n bị m&agrave;i m&ograve;n.</p>\r\n\r\n<p>Th&ocirc;ng thường, lốp d&agrave;nh cho xe động cơ đốt trong (ICE) cũng sẽ vừa với b&aacute;nh xe điện (EV) của bạn, nhưng sử dụng ch&uacute;ng theo c&ugrave;ng một c&aacute;ch sẽ l&agrave; một &yacute; kiến tồi. Bởi đơn giản, c&aacute;ch thức hoạt động của hai loại xe n&agrave;y c&oacute; nhiều điểm kh&aacute;c nhau, khiến việc sử dụng loại lốp th&ocirc;ng thường tr&ecirc;n xe điện c&oacute; nguy cơ l&agrave;m lốp bị m&ograve;n nhanh hơn, gia tăng c&aacute;c vấn đề li&ecirc;n quan đến nhiệt v&agrave; mất ổn định trong việc điều hướng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2022/12/29/ev-tires-green-800x450-16723021994581536595997-1672303886763-167230388715850518221.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p><strong>Trọng lượng v&agrave; tải</strong></p>\r\n\r\n<p>Một trong những kh&aacute;c biệt cơ bản giữa xe điện v&agrave; ICE l&agrave; việc c&ugrave;ng k&iacute;ch thước hoặc ph&acirc;n kh&uacute;c, một chiếc xe điện sẽ nặng hơn một chiếc ICE. V&iacute; dụ, trọng lượng giới hạn của chiếc xe điện Mercedes-Benz EQS 450 4Matic l&agrave; 2.539 kg, trong khi đ&oacute; mẫu ICE Mercedes S500 4Matic chỉ nặng 2.091 kg. Hai mẫu xe n&agrave;y c&oacute; c&ugrave;ng loại k&iacute;ch thước v&agrave; nằm trong c&ugrave;ng một ph&acirc;n kh&uacute;c, nhưng chiếc EV nặng hơn gần 454 kg v&agrave; sự ch&ecirc;nh lệch chủ yếu đến từ hệ thống pin.</p>\r\n\r\n<p>Vấn đề ch&ecirc;nh lệch trọng lượng sẽ được nh&agrave; sản xuất cải thiện theo thời gian, nhưng trong tương lai gần, cấu tr&uacute;c cơ bản của bản th&acirc;n mỗi chiếc lốp xe phải đảm đương được nhiệm vụ hỗ trợ trọng tải nặng đến như vậy. V&igrave; vậy chỉ số tải trọng (con số cho biết tải trọng tối đa m&agrave; lốp xe c&oacute; thể hỗ trợ trong c&aacute;c điều kiện cụ thể) y&ecirc;u cầu của lốp xe điện lớn hơn xe ICE.</p>\r\n\r\n<p>Nhiều người nghĩ rằng chỉ c&oacute; hợp chất cao su hoặc polymer của lốp xe mới c&oacute; thể ảnh hưởng đến lực k&eacute;o v&agrave; độ b&aacute;m của lốp. Nhưng ngo&agrave;i c&aacute;c hợp chất n&agrave;y, kiểu gai lốp, độ s&acirc;u của c&aacute;c khối gai lốp v&agrave; thể t&iacute;ch khoảng trống giữa ch&uacute;ng g&oacute;p phần tạo n&ecirc;n những thay đổi lớn về độ cứng tổng thể v&agrave; khả năng chịu tải của lốp xe.</p>\r\n\r\n<p>Ngo&agrave;i ra, việc bộ pin nặng c&oacute; được ph&acirc;n bố đều khắp xe hay nằm ở vị tr&iacute; trung t&acirc;m cũng sẽ ảnh hưởng đến chỉ số tải y&ecirc;u cầu của lốp.</p>\r\n\r\n<p><strong>Tiếng ồn</strong></p>\r\n\r\n<p>Kh&ocirc;ng c&oacute; qu&aacute; tr&igrave;nh đốt nhi&ecirc;n liệu, n&ecirc;n xe điện c&oacute; tiếng ồn từ s&agrave;n thấp hơn đ&aacute;ng kể so với xe ICE. V&agrave; kh&ocirc;ng chỉ kh&ocirc;ng c&oacute; động cơ đốt trong, m&agrave; xe điện c&ograve;n kh&ocirc;ng c&oacute; hộp số, kh&ocirc;ng c&oacute; tiếng lạch cạch của hệ thống van, kh&ocirc;ng c&oacute; &acirc;m thanh từ ống xả hoặc đường ống nạp, thậm ch&iacute; kh&ocirc;ng c&oacute; tiếng t&iacute;ch tắc nhẹ của kim phun nhi&ecirc;n liệu &aacute;p suất cao.</p>\r\n\r\n<p>Nghe th&igrave; thấy mọi thứ c&oacute; vẻ sẽ y&ecirc;n tĩnh hơn với xe điện. Nhưng kh&ocirc;ng, tiếng ồn từ gi&oacute; v&agrave; mặt đường, vốn bị &aacute;t đi bởi tiếng ồn từ động cơ ở xe ICE, sẽ trở n&ecirc;n dễ nghe hơn ở những chiếc xe điện c&oacute; động cơ &ecirc;m &aacute;i. V&agrave; khi xe điện chạy hết tốc độ của những con đường ngoại &ocirc; hay tr&ecirc;n cao tốc, tiếng ồn sẽ chỉ tăng th&ecirc;m m&agrave; th&ocirc;i.</p>\r\n\r\n<p>Theo Rob Williams, ph&oacute; chủ tịch cấp cao của h&atilde;ng sản xuất lốp xe hiệu suất cao Hankook Tire, tiếng ồn của động cơ chiếm khoảng 50% tiếng ồn ở xe ICE, trong khi tiếng ồn tr&ecirc;n đường chiếm khoảng 30%. Mặt kh&aacute;c, trong xe điện, tiếng ồn của động cơ chỉ chiếm khoảng 15%, nhưng tiếng ồn tr&ecirc;n đường chiếm khoảng 40% v&agrave; tiếng ồn của gi&oacute; do l&aacute;i xe tốc độ cao chiếm khoảng 30%. C&aacute;c nh&agrave; sản xuất lốp xe đang nghi&ecirc;n cứu v&agrave; ph&aacute;t triển c&aacute;c kiểu gai lốp mới c&oacute; thể giảm tiếng ồn nhiều nhất c&oacute; thể nhằm giảm tiếng ồn từ mặt đường do l&aacute;i xe ở tốc độ cao g&acirc;y ra.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://genk.mediacdn.vn/139269124445442048/2022/12/29/scorpion-pirellisottozerocenter-1672302180662194711440-1672303888389-16723038885301638126413.jpg\" style=\"height:400px; width:600px\" /></p>\r\n', 6, 1, '1672320782_1.png'),
(10, 'Hai bệnh nhân bị phổi nặng do di chứng COVID-19', '<p>Cả 2 trường hợp bệnh nh&acirc;n đến Bệnh viện Đa khoa Đức Giang&nbsp;</p>\r\n', '<p>Trường hợp bệnh nh&acirc;n N.T.C (nữ, sinh năm 1955, tr&uacute; tại Dương H&agrave;, Gia L&acirc;m, H&agrave; Nội) tới Bệnh viện Đa khoa Đức Giang trong t&igrave;nh trạng đau nhức sườn phải, tức ngực, kh&oacute; thở. Kết quả chụp X-quang cho thấy nhiều dịch m&agrave;ng phổi v&agrave; c&oacute; chỉ định nhập viện điều trị.</p>\r\n\r\n<p>Ngay sau đ&oacute; bệnh nh&acirc;n được chỉ định điều trị nội khoa kết hợp chọc h&uacute;t m&agrave;ng phổi. Tuy nhi&ecirc;n, c&aacute;c triệu chứng kh&ocirc;ng thuy&ecirc;n giảm. Sau khi chụp CT phổi, kết quả cho thấy trong phổi tồn tại nhiều ổ cặn xơ h&oacute;a khiến phổi đ&ocirc;ng đặc. C&aacute;c b&aacute;c sĩ hội chẩn v&agrave; chỉ định mổ h&uacute;t ổ cặn m&agrave;ng phổi cho bệnh nh&acirc;n.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2022/12/29/photo-1-16723187006311152530576.jpeg\" target=\"_blank\"><img alt=\"Hai bệnh nhân phổi đông đặc, nhiều ổ cặn xơ hoá nghi di chứng hậu COVID-19 - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/12/29/photo-1-16723187006311152530576.jpeg\" /></a></p>\r\n\r\n<p>C&aacute;c b&aacute;c sĩ Bệnh viện Đa khoa Đức Giang tiến h&agrave;nh mổ nội soi cho bệnh nh&acirc;n.</p>\r\n\r\n<p>Trường hợp thứ 2 l&agrave; bệnh nh&acirc;n N.V.T (nam, sinh năm 1959, Long Bi&ecirc;n) bệnh nh&acirc;n kh&oacute; thở, đau tức ngực tr&aacute;i v&agrave; điều trị tại một số cơ sở y tế nhưng kh&ocirc;ng hiệu quả. Đến khi t&igrave;nh trạng suy h&ocirc; hấp, đau quặn b&ecirc;n ngực phải ng&agrave;y c&agrave;ng gia tăng, bệnh nh&acirc;n mới được người nh&agrave; đưa tới bệnh viện cấp cứu.</p>\r\n\r\n<p>Sau khi, chụp CT m&agrave;ng phổi thấy t&igrave;nh trạng đ&ocirc;ng đặc, vi&ecirc;m d&iacute;nh rất nhiều ở nhu m&ocirc; phổi, bệnh nh&acirc;n được chuyển khoa Truyền nhiễm nằm điều trị.</p>\r\n\r\n<p>Sau 1 tuần điều trị, bệnh nh&acirc;n được chụp CT ngực kiểm tra, kết quả phần phổi xẹp c&oacute; phục hồi tương đối nhưng ổ &aacute;p xe chưa được dẫn lưu ho&agrave;n to&agrave;n, c&ograve;n nhiều mủ đọng nơi l&aacute; tạng. Hiện khoa Truyền nhiễm đang hội chẩn với khoa Ngoại tổng hợp để l&ecirc;n phương &aacute;n điều trị hiệu quả nhất cho bệnh nh&acirc;n.</p>\r\n\r\n<p>Ths.Bs Nguyễn Văn L&acirc;m, Khoa Ngoại tổng hợp quyết định phẫu thuật nội soi để giải quyết triệt để &aacute;p xe phổi. Trong mổ, c&aacute;c b&aacute;c sĩ kiểm tra l&aacute; phổi tr&aacute;i hoạt động tốt, c&ograve;n phổi b&ecirc;n phải tổn thương, ph&ugrave; nề, nhiều ổ &aacute;p xe. Người bệnh được b&oacute;c sạch m&ocirc; hoại tử, l&agrave;m sạch khoang m&agrave;ng phổi, đặt ống dẫn lưu.</p>\r\n\r\n<p>Do nhiều tổn thương v&agrave; triệu chứng nặng hơn n&ecirc;n ca phẫu thuật của bệnh nh&acirc;n T phức tạp v&agrave; k&eacute;o d&agrave;i hơn so với bệnh nh&acirc;n C. Sau phẫu thuật, cả hai người bệnh tỉnh t&aacute;o, tiếp tục điều trị kh&aacute;ng sinh chống nhiễm tr&ugrave;ng, cần thời gian d&agrave;i để hồi phục.</p>\r\n\r\n<p>Đặc biệt qua khai th&aacute;c tiền sử bệnh, hai bệnh nh&acirc;n đều mắc COVID-19 trước khi c&oacute; t&igrave;nh trạng đau tức ngực. Cả hai bệnh nh&acirc;n đều kh&ocirc;ng c&oacute; biểu hiện g&igrave; m&agrave; vẫn sinh hoạt, l&agrave;m việc b&igrave;nh thường. Tới khi c&oacute; cơn đau quặn thắt b&ecirc;n ngực tr&aacute;i v&agrave; t&igrave;nh trạng kh&oacute; thở tăng dần l&ecirc;n bệnh nh&acirc;n mới đi kh&aacute;m. Ri&ecirc;ng đối với bệnh nh&acirc;n C, &ocirc;ng cho biết m&igrave;nh c&oacute; th&oacute;i quen h&uacute;t thuốc hơn 30 năm nay.</p>\r\n\r\n<p>Theo b&aacute;c sĩ L&acirc;m tổn thương phổi sau nhiễm COVID-19 l&agrave; di chứng thường gặp đối với bệnh nh&acirc;n F0, c&oacute; nhiều mức độ tổn thương kh&aacute;c nhau, nhưng phổ biến nhất l&agrave; t&igrave;nh trạng vi&ecirc;m phổi, xơ phổi, ảnh hưởng chức năng h&ocirc; hấp.</p>\r\n\r\n<p>Ri&ecirc;ng t&igrave;nh trạng phổi nhiễm tr&ugrave;ng hoại tử, tạo ra nhiều ổ &aacute;p xe b&ecirc;n trong khoang ngực đ&atilde; c&oacute; ghi nhận trong c&aacute;c b&aacute;o c&aacute;o về COVID-19 tr&ecirc;n thế giới.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 5, 1, '1672321177_2.png'),
(11, 'Thiếu niên 15 tuổi cướp iPhone 14 Pro Max ', '<p>Ng&agrave;y 29/12, C&ocirc;ng an tỉnh An Giang điều tra về h&agrave;nh vi cướp t&agrave;i sản.</p>\r\n', '<p>Ng&agrave;y 29/12, C&ocirc;ng an tỉnh An Giang cho biết, C&ocirc;ng an phường Mỹ Xuy&ecirc;n, TP Long Xuy&ecirc;n, tỉnh An Giang đ&atilde; triệu tập L&ecirc; Phước To&agrave;n (15 tuổi, ngụ x&atilde; Long Giang, huyện Chợ Mới, tỉnh An Giang) để điều tra về h&agrave;nh vi cướp t&agrave;i sản.</p>\r\n\r\n<p>To&agrave;n khai nhận, khoảng 19h ng&agrave;y 28/12, To&agrave;n li&ecirc;n hệ v&agrave; hẹn với L.T.K.M (20 tuổi, tạm tr&uacute; phường Mỹ Thới, TP Long Xuy&ecirc;n) đến nh&agrave; nghỉ thuộc kh&oacute;m Đ&ocirc;ng An 4, phường Mỹ Xuy&ecirc;n để mua b&aacute;n d&acirc;m.</p>\r\n\r\n<p><a href=\"https://kenh14cdn.com/203336854389633024/2022/12/29/photo-1-16723037244952123984903.jpg\" target=\"_blank\"><img alt=\"Hành sự xong, thiếu niên 15 tuổi kề dao cướp iPhone 14 Pro Max của gái bán dâm - Ảnh 1.\" src=\"https://kenh14cdn.com/thumb_w/620/203336854389633024/2022/12/29/photo-1-16723037244952123984903.jpg\" /></a></p>\r\n\r\n<p>Đối tượng To&agrave;n tại cơ quan c&ocirc;ng an</p>\r\n\r\n<p>&ldquo;H&agrave;nh sự&rdquo; xong, thấy M. c&oacute; điện thoại Iphone 14 Pro Max n&ecirc;n To&agrave;n nảy sinh &yacute; định chiếm đoạt. Sau đ&oacute;, đối tượng đ&atilde; d&ugrave;ng dao khống chế v&agrave; g&acirc;y thương t&iacute;ch cho M. để cướp t&agrave;i sản n&oacute;i tr&ecirc;n v&agrave; tẩu tho&aacute;t.</p>\r\n\r\n<p>G&acirc;y &aacute;n xong, To&agrave;n về chỗ l&agrave;m thu&ecirc; l&agrave; một qu&aacute;n nhậu tr&ecirc;n địa b&agrave;n phường Mỹ Phước (TP Long Xuy&ecirc;n).</p>\r\n\r\n<p>Đến khoảng 21h30 ph&uacute;t c&ugrave;ng ng&agrave;y, lực lượng C&ocirc;ng an phường Mỹ Xuy&ecirc;n đến mời To&agrave;n về trụ sở l&agrave;m việc v&agrave; thu giữ chiếc điện thoại tang vật.</p>\r\n\r\n<p>Hiện, vụ việc đang được tiếp tục điều tra, l&agrave;m r&otilde;.</p>\r\n', 5, 1, '1672321537_3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart`
--

INSERT INTO `tbl_cart` (`id_cart`, `id_khachhang`, `code_cart`, `cart_status`, `cart_date`) VALUES
(56, 11, '6575', 1, ''),
(57, 12, '2098', 1, '2022-12-30 16:14:15'),
(58, 12, '6731', 1, '2022-12-30 18:09:00'),
(59, 14, '8211', 0, '2022-12-30 18:13:27'),
(60, 14, '1859', 0, '2022-12-30 18:22:35'),
(61, 14, '6484', 0, '2022-12-30 18:28:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_cart_details`
--

INSERT INTO `tbl_cart_details` (`id_cart_details`, `code_cart`, `id_sanpham`, `soluongmua`) VALUES
(21, '6575', 15, 1),
(22, '6575', 8, 1),
(23, '2098', 12, 1),
(24, '2098', 10, 1),
(25, '6731', 13, 2),
(26, '6731', 7, 2),
(27, '8211', 9, 1),
(28, '8211', 7, 1),
(29, '1859', 8, 1),
(30, '1859', 12, 1),
(31, '6484', 14, 1),
(32, '6484', 15, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(7, 'Trần Đình Tú', '0', '0495948598', '835dda2371cb396fc0681d620127c14b', 'ẤP 1 LONG THỌ'),
(10, 'Bảo Như ', 'baonhu@gmail.com', '702 Hồng Bàng Phường', '835dda2371cb396fc0681d620127c14b', '093403940'),
(11, 'Minh Triết', 'triet@gmail.com', 'Long Thọ ấp 1', '25f9e794323b453885f5181f1b624d0b', '029323932'),
(12, 'Vũ Hoàng', 'hoang@gmail.com', 'Long Thọ ấp 1', '25f9e794323b453885f5181f1b624d0b', '0239232323'),
(13, 'Trần Đình Tú', 'dinhtu809@gmail.com', 'Long Thọ ấp 1', '25f9e794323b453885f5181f1b624d0b', '0388710253'),
(14, 'Vũ Hoàng lol', 'dvh0826@gmail.com', 'Huỳnh Tấn Phát Quận 7', '25f9e794323b453885f5181f1b624d0b', '0349203420');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Ốp lưng đẹp', 1),
(2, 'Sạc dự phòng', 4),
(4, 'Kính cường lực', 4),
(5, 'Phụ kiện trang trí', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmucbaiviet`
--

CREATE TABLE `tbl_danhmucbaiviet` (
  `id_baiviet` int(11) NOT NULL,
  `tendanhmuc_baiviet` varchar(255) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmucbaiviet`
--

INSERT INTO `tbl_danhmucbaiviet` (`id_baiviet`, `tendanhmuc_baiviet`, `thutu`) VALUES
(5, 'Tin xã hội', 2),
(6, 'Tin Công Nghệ', 2),
(7, 'Tin game', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ul>\r\n	<li>\r\n	<h2>Số điện thoại : 0388710253 Suy K Team&nbsp;</h2>\r\n	</li>\r\n	<li>\r\n	<h2>Zalo: 0967859972&nbsp;Suy K Team&nbsp;</h2>\r\n	</li>\r\n	<li>\r\n	<h2>Facebook:<a href=\"https://www.facebook.com/tdt01/\">&nbsp;https://www.facebook.com/tdt01/</a></h2>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;😁 Mong c&aacute;c bạn ủng hộ nhiệt t&igrave;nh cho cửa h&agrave;ng 😆</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://vietphone.vn/images/banner%20phukien.jpg\" style=\"height:292px; width:900px\" /></p>\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` tinytext NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(6, 'Kính cường lực iPhone Kingkong WTP-014 ', '002', '50000', 10, '1672297495_502f318592d685ecbfd3a322baefef24.jpg', '<p>T&ecirc;n sản phẩm: K&iacute;nh cường lực iPhone Kingkong WTP-014</p>\r\n\r\n<p>H&atilde;ng:WK</p>\r\n\r\n<p>Model:&nbsp;&nbsp;WTP-014</p>\r\n', '<h2><strong>K&iacute;nh cường lực iPhone Kingkong WTP-014 cho iPhone 7 Plus, iPhone 8 Plus, iPhone X/XR/XS/XS Max, v&agrave; iPhone 11 với m&agrave;n h&igrave;nh 9D si&ecirc;u cứng, si&ecirc;u nhạy l&agrave; giải ph&aacute;p tối ưu bảo vệ an to&agrave;n v&agrave; vẻ đẹp cho m&agrave;n h&igrave;nh điện thoại của bạn, tr&aacute;nh khỏi trầy xước do va đập.</strong></h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Mặc d&ugrave; những d&ograve;ng iPhone đời mới đều được Apple trang bị m&agrave;n h&igrave;nh k&iacute;nh c&oacute; độ chống trầy xước, nứt vỡ cao hơn trước. Tuy nhi&ecirc;n, n&oacute; kh&ocirc;ng thể n&agrave;o chịu được những t&aacute;c động mạnh từ b&ecirc;n ngo&agrave;i. Ch&iacute;nh v&igrave; vậy, trang bị k&iacute;nh cường lực ch&iacute;nh l&agrave; phương &aacute;n tốt nhất để bảo vệ m&agrave;n h&igrave;nh iPhone v&agrave; giữ nguy&ecirc;n vẻ đẹp của m&aacute;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/kinhcuongluc/wtp-014/bai-viet/kinh-cuong-luc-iphone-kingkong-wtp-014-2-14102019.png\" style=\"height:460px; width:710px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Đảm bảo độ n&eacute;t cao như nguy&ecirc;n bản</strong></p>\r\n\r\n<p>K&iacute;nh đạt được độ trong suốt tuyệt đối, kh&ocirc;ng bị &aacute;m xanh, cho ra h&igrave;nh ảnh ch&acirc;n thực hết sức c&oacute; thể. Trải nghiệm khi d&ugrave;ng iPhone th&ocirc;ng qua k&iacute;nh vẫn kh&ocirc;ng c&oacute; g&igrave; thay đổi.</p>\r\n\r\n<h3><strong>Cảm ứng nhạy b&eacute;n</strong></h3>\r\n\r\n<p>Mặc d&ugrave; chỉ d&agrave;y 0.25mm, nhưng tấm bảo vệ m&agrave;n h&igrave;nh bằng k&iacute;nh cường lực WTP-014 vẫn cho khả năng nhạy b&eacute;n v&agrave; hoạt động tốt với iPhone 3D Touch. Bề mặt si&ecirc;u mịn, kh&ocirc;ng r&iacute;t, dễ d&agrave;ng kiểm so&aacute;t cảm ứng ch&iacute;nh x&aacute;c v&agrave; phản hồi cũng như thao t&aacute;c chạm thoải m&aacute;i.</p>\r\n\r\n<p><strong>Chống v&acirc;n tay v&agrave; bụi bẩn</strong></p>\r\n\r\n<p>K&iacute;nh cường lực iPhone WTP-014 l&agrave;m bằng k&iacute;nh cường lực cao cấp được t&ocirc;i luyện trong nhiều giờ. Bề mặt độ cứng 9H kết hợp với lớp phủ Oleophobic hoạt động cực kỳ tốt trong khả năng chống v&acirc;n tay v&agrave; trầy xước.</p>\r\n\r\n<p><img alt=\"\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/kinhcuongluc/wtp-014/bai-viet/kinh-cuong-luc-iphone-kingkong-wtp-014-4-14102019.png\" style=\"height:460px; width:710px\" /></p>\r\n', 1, 4),
(7, 'Ốp lưng iphone dễ thương', '002', '200000', 10, '1672299246_op-lung-dien-thoai-cap-doi-49.1.jpg', '<p>T&ecirc;n sản phẩm:Ốp trong chống sốc chống ố WK&nbsp;</p>\r\n\r\n<p>Thương hiệu:&nbsp;WK</p>\r\n\r\n<p>K&iacute;ch thước:6.1inch</p>\r\n', '<h3><strong>Ốp lưng chống sốc bảo vệ tối đa</strong></h3>\r\n\r\n<p>Ốp lưng iPhone 13 Pro của WK c&oacute; khả năng chống &ldquo;đỉnh ch&oacute;p&rdquo; với thiết kế 4 t&uacute;i kh&iacute; đặt ở 4 g&oacute;c sản phẩm. Thiết kế n&agrave;y gi&uacute;p giảm nguy cơ t&aacute;c động l&ecirc;n m&aacute;y, bởi 4 g&oacute;c l&agrave; điểm thường tiếp x&uacute;c với mặt đất đầu ti&ecirc;n mỗi khi rơi xuống.</p>\r\n\r\n<p><img alt=\"Ốp trong chống sốc - chống ố iPhone 13 Pro WK 2\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/oplung/op-trong-wk-ip13-pro/bai-viet/op-trong-wk-ip13-pro-6-1-2-10112021.JPG\" /></p>\r\n\r\n<p>Phần viền ốp v&agrave; phần cụm camera được l&agrave;m cao hơn hẳn nhằm tạo khoảng c&aacute;ch an to&agrave;n nhất để m&agrave;n h&igrave;nh v&agrave; camera kh&ocirc;ng bị tiếp x&uacute;c nhiều g&acirc;y trầy xước. Ch&iacute;nh v&igrave; vậy, người d&ugrave;ng c&oacute; thể đặt điện thoại &uacute;p xuống hay ngửa l&ecirc;n tr&ecirc;n b&agrave;n, bỏ t&uacute;i hay bất cứ bề mặt phẳng n&agrave;o cũng y&ecirc;n t&acirc;m tha hồ sử dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Thiết kế trong suốt, hiện đại</strong></h3>\r\n\r\n<p>Sở hữu một chiếc iPhone cao cấp v&agrave; đắt tiền như iPhone 13 Pro người d&ugrave;ng rất muốn khoe trọn vẻ đẹp của mặt lưng m&aacute;y. Nếu kh&ocirc;ng d&ugrave;ng ốp th&igrave; lưng m&aacute;y rất dễ trầy xước v&igrave; vậy Ốp trong WK ch&iacute;nh l&agrave; lựa chọn ph&ugrave; hợp nhất d&agrave;nh cho bạn.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 1),
(8, 'Kính Cường Lực Sharp R3', '003', '30000', 10, '1672296278_Kinh-cuong-luc-dien-thoai-Sharp-R3.png', '<p>T&ecirc;n sản phẩm:&nbsp;K&iacute;nh cường lực GL-16</p>\r\n\r\n<p>Thương hiệu:&nbsp;WK</p>\r\n\r\n<p>K&iacute;ch thước:&nbsp;6.1inch</p>\r\n\r\n<p>M&agrave;u:&nbsp;Trong suốt</p>\r\n', '<ul>\r\n	<li>Giúp bảo v&ecirc;̣ mặt màn hình đi&ecirc;̣n thoại kh&ocirc;ng bị tr&acirc;̀y xước, giảm rủi ro vỡ nứt màn hình trong quá trình sử dụng.</li>\r\n	<li>Miếng d&aacute;n k&iacute;nh cường lực Google Pixel c&oacute; độ cứng l&ecirc;n tới 9H. (gấp 20 lần tấm PET film sử dụng trong tấm d&aacute;n th&ocirc;ng thường)<img alt=\"\" src=\"https://sonpixel.vn/wp-content/uploads/2022/08/Kinh-cuong-luc-Google-Pixel.png\" style=\"height:450px; width:800px\" /></li>\r\n</ul>\r\n', 1, 4),
(9, 'Kính Cường Lực Google Pixel 2/2XL', '004', '25000', 10, '1672296688_79f8efca72e268222067a233738d4bf5.jpg', '<p>T&ecirc;n sản phẩm:&nbsp;&nbsp;K&iacute;nh cường lực&nbsp; GL-15</p>\r\n\r\n<p>Model:&nbsp;GL-15</p>\r\n\r\n<p>Độ cứng:&nbsp;9H</p>\r\n', '<ul>\r\n	<li><img alt=\"\" src=\"https://sonpixel.vn/wp-content/uploads/2022/08/Kinh-cuong-luc-Google-Pixel.png\" style=\"height:450px; width:800px\" />Giúp bảo v&ecirc;̣ mặt màn hình đi&ecirc;̣n thoại kh&ocirc;ng bị tr&acirc;̀y xước, giảm rủi ro vỡ nứt màn hình trong quá trình sử dụng.</li>\r\n	<li>Miếng d&aacute;n k&iacute;nh cường lực Google Pixel c&oacute; độ cứng l&ecirc;n tới 9H. (gấp 20 lần tấm PET film sử dụng trong tấm d&aacute;n th&ocirc;ng thường)</li>\r\n</ul>\r\n', 1, 4),
(10, 'Dây Đeo Điện Thoại', '001', '19000', 10, '1672300168_30076357167304-1479331800.jpg', '<p>T&ecirc;n sản phẩm: D&acirc;y Đeo Điện Thoại</p>\r\n\r\n<p>💕Loại: D&acirc;y buộc điện thoại</p>\r\n\r\n<p>💕M&agrave;u: Y1-Y50</p>\r\n\r\n<p>💜Lưu &Yacute;: Xin lưu &yacute; rằng sự kh&aacute;c biệt m&agrave;u sắc nhẹ n&ecirc;', '<p>💕Loại: D&acirc;y buộc điện thoại</p>\r\n\r\n<p>💕M&agrave;u: Y1-Y50</p>\r\n\r\n<p>💜Lưu &Yacute;: Xin lưu &yacute; rằng sự kh&aacute;c biệt m&agrave;u sắc nhẹ n&ecirc;n được chấp nhận do &aacute;nh s&aacute;ng v&agrave; m&agrave;n h&igrave;nh</p>\r\n', 1, 5),
(12, 'Kính cường lực iPhone 12 Pro Remax GL-16', '001', '50000', 5, '1672298056_tải xuống.jpg', '<p>T&ecirc;n sản phẩm:&nbsp;K&iacute;nh cường lực iPhone 12 Pro Remax GL-16</p>\r\n\r\n<p>K&iacute;ch thước:6.1inch</p>\r\n\r\n<p>Ph&ugrave; hợp:&nbsp;iPhone 12 Pro</p>\r\n', '<h2><strong>K&iacute;nh cường lực iPhone 12 Pro Remax GL-16 gi&uacute;p bảo vệ m&agrave;n h&igrave;nh điện thoại chống nứt vỡ, trầy xước khi va đập, cho h&igrave;nh ảnh sắc n&eacute;t c&ugrave;ng khả năng chống nước v&agrave; b&aacute;m bụi đỉnh cao</strong></h2>\r\n\r\n<p><img alt=\"Kính cường lực iPhone 12 Pro Remax GL-16 1\" src=\"https://manager.remaxvietnam.vn/asset/images/SanPham/phukiendienthoai/kinhcuongluc/GL-16-ip12-pro/bai-viet/kinh-cuong-luc-remax-gl-16-iphone-12-pro-6-1-1-12112021.JPG\" /><img alt=\"\" src=\"https://i0.wp.com/cachsuaiphone.com/wp-content/uploads/2018/12/C%C6%B0%E1%BB%9Dng-l%E1%BB%B1c-Remax-ch%C3%ADnh-h%C3%A3ng-e1545934522765.jpg?fit=600%2C800&amp;ssl=1\" style=\"height:800px; width:600px\" /></p>\r\n\r\n<h3><strong>Độ cứng 9H chống trầy xước, nứt vỡ</strong></h3>\r\n\r\n<p>Remax GL-16 l&agrave; một sản phẩm&nbsp;<a href=\"https://remaxvietnam.vn/kinh-cuong-luc\">k&iacute;nh cường lực</a>&nbsp;mới nhất từ thương hiệu Remax sản xuất d&agrave;nh cho iPhone 12 Pro. K&iacute;nh được ho&agrave;n thiện từ 7 lớp vật liệu si&ecirc;u mỏng bao gồm Lớp phủ Oleophobic, sửa chữa c&aacute;c vết trầy xước, nhận dạng v&acirc;n tay, điều khiển cảm ứng, chống ch&aacute;y nổ, lớp nền v&agrave; lớp keo d&aacute;n tạo n&ecirc;n một sản phẩm chất lượng cao với độ cứng l&ecirc;n đến 9H. Đ&acirc;y l&agrave; độ cứng rất lớn cho sức mạnh độ bền bỉ gấp nhiều lần so với những chiếc k&iacute;nh th&ocirc;ng thường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, 4),
(13, 'Ốp lưng cute 2022', '001', '25000', 10, '1671249535_oplung.png', '<p>T&ecirc;n sản phẩm: Ốp lưng iphone cute</p>\r\n\r\n<ul>\r\n	<li>Chất liệu</li>\r\n	<li>Nhựa, silicon, TPU</li>\r\n	<li>Thương hiệu điện thoại tương th&iacute;ch</li>\r\n	<li>Others</li>\r\n	<li>T&iacute;nh năng vỏ, ốp</li>\r\n	<li>chống ', '<p>&bull;&nbsp;Ốp lưng&nbsp;nhựa trong&nbsp;với thiết kế đơn giản nhưng kh&ocirc;ng k&eacute;m phần sang trọng.</p>\r\n\r\n<p>&bull;&nbsp;Thiết kế &ocirc;m s&aacute;t th&acirc;n m&aacute;y bảo vệ cho điện thoại&nbsp;iPhone&nbsp;</p>\r\n\r\n<p>&bull;&nbsp;Tương th&iacute;ch sạc kh&ocirc;ng d&acirc;y&nbsp;MagSafe&nbsp;tiện lợi, kh&ocirc;ng cần th&aacute;o ốp khi sạc.</p>\r\n\r\n<p>&bull;&nbsp;Dễ d&agrave;ng sử dụng c&aacute;c ph&iacute;m chức năng tr&ecirc;n m&aacute;y.</p>\r\n\r\n<p>&bull;&nbsp;Ốp lưng Apple&nbsp;si&ecirc;u mỏng nhẹ, dễ d&agrave;ng uốn cong.</p>\r\n\r\n<p>&bull;&nbsp;<strong>Lưu &yacute;: Thanh to&aacute;n trước khi mở seal.</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/60/290314/op-lung-magsafe-iphone-14-plus-nhua-trong-apple-mpu43-1.jpg\" style=\"height:267px; width:400px\" /></strong></p>\r\n', 1, 1),
(14, 'MÓC KHÓA HÌNH CON VẬT CUTE', '002', '9000', 10, '1672300732_Móc-khóa-con-vật-cute-5.jpg', '<p>T&ecirc;n sản phẩm: M&Oacute;C KH&Oacute;A H&Igrave;NH CON VẬT CUTE</p>\r\n\r\n<p>Chất liệu: rubber</p>\r\n\r\n<p>Mẫu m&atilde;: đa dạng</p>\r\n', '<h1>GIỚI THIỆU</h1>\r\n\r\n<h1>Thị trường m&oacute;c kh&oacute;a với v&ocirc; v&agrave;n mẫu m&atilde; v&agrave; m&agrave;u sắc đa dạng để bạn lựa chọn. Những mẫu m&oacute;c kh&oacute;a từ rubber, đơn giản, tone m&agrave;u nhẹ nh&agrave;ng đang được ch&agrave;o đ&oacute;n bởi sự đơn giản trong thiết kế.</h1>\r\n\r\n<h1>C&ugrave;ng theo ch&acirc;n A Mẫn kh&aacute;m ph&aacute; ngay mẫu m&oacute;c h&igrave;nh cute &ndash; đang được ch&agrave;o đ&oacute;n.</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/11/M%C3%93C-KH%C3%93A-H%C3%8CNH-CON-V%E1%BA%ACT-CUTE-3.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>ĐẶC ĐIỂM NỔI BẬT</h1>\r\n\r\n<h1>Được l&agrave;m từ chất liệu rubber, thiết kế m&agrave;u nguy&ecirc;n khối</h1>\r\n\r\n<p><img alt=\"\" src=\"https://amansaigon.com/wp-content/uploads/2021/11/M%C3%93C-KH%C3%93A-H%C3%8CNH-CON-V%E1%BA%ACT-CUTE-5.jpg\" style=\"height:720px; width:720px\" /></p>\r\n\r\n<h1>Tone m&agrave;u được lấy cảm hứng thiết kế chủ đạo theo tone tươi s&aacute;ng nhưng kh&ocirc;ng ch&oacute;i&nbsp;mắt, hợp thời trang, đơn giản</h1>\r\n', 1, 5),
(15, 'Pin sạc dự phòng không dây Polymer ', '001', '550000', 10, '1672301201_c4ede7e619c2796df938041ef35b910e.jpg', '<p>T&ecirc;n sản phẩm : Sạc dự ph&ograve;ng Polymer</p>\r\n\r\n<ul>\r\n	<li>Dung lượng pin: 10.000 mAh</li>\r\n	<li>K&iacute;ch thước: D&agrave;i 13.8 cm - Rộng 7 cm - D&agrave;y 1.8 cm</li>\r\n	<li>Khối lượng: 230g</li>\r\n</ul>\r\n', '<h3>Tạo thiện cảm mạnh nhờ thiết kế sang trọng, đường n&eacute;t chi tiết đ&aacute;ng ngạc nhi&ecirc;n</h3>\r\n\r\n<ul>\r\n	<li>Mặt trước của&nbsp;<a href=\"https://www.thegioididong.com/sac-dtdd\" target=\"_blank\">pin sạc dự ph&ograve;ng</a>&nbsp;bọc chất liệu Fabric cho cảm gi&aacute;c cực thoải m&aacute;i khi cầm nắm, hơn nữa bề mặt n&agrave;y hạn chế trầy xước, b&aacute;m v&acirc;n tay cho sản phẩm đẹp mới l&acirc;u hơn.&nbsp;</li>\r\n</ul>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043220-113240.jpg\" onclick=\"return false;\"><img alt=\"Pin sạc dự phòng Polymer 10.000mAh không dây Type C PD QC3.0 Xmobile PowerLite P106WD Đen - Tạo thiện cảm mạnh nhờ thiết kế sang trọng\" src=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043220-113240.jpg\" /></a></p>\r\n\r\n<h3>Cho tốc độ sạc cao, an to&agrave;n với c&ocirc;ng nghệ sạc nhanh&nbsp;Power Delivery v&agrave;&nbsp;Quick Charge 3.0&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>Chỉ c&oacute; 2 cổng sạc đơn giản nhưng sở hữu sức mạnh v&ocirc; c&ugrave;ng ấn tượng với cổng Type C được t&iacute;ch hợp c&ocirc;ng nghệ&nbsp;Power Delivery cho cả 2 chiều sạc v&agrave;o v&agrave; sạc ra, cổng sạc ra USB ứng dụng Quick Charge 3.0. C&aacute;c c&ocirc;ng nghệ n&agrave;y cho t&aacute;c dụng tối ưu d&ograve;ng điện, khả năng tương th&iacute;ch với c&aacute;c thiết bị kh&aacute;c nhau gi&uacute;p kết nối, sạc nhanh v&agrave; đảm bảo an to&agrave;n hơn.</li>\r\n	<li>Linh hoạt nạp năng lượng hơn với sạc dự ph&ograve;ng hỗ trợ c&ocirc;ng nghệ sạc kh&ocirc;ng d&acirc;y chuẩn Qi th&ocirc;ng minh.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043320-113310.jpg\" onclick=\"return false;\"><img alt=\"Pin sạc dự phòng Polymer 10.000mAh không dây Type C PD QC3.0 Xmobile PowerLite P106WD Đen - Cho tốc độ sạc cao\" src=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043320-113310.jpg\" /></a><a href=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043220-113252.jpg\" onclick=\"return false;\"><img alt=\"Pin sạc dự phòng Polymer 10.000mAh không dây Type C PD QC3.0 Xmobile PowerLite P106WD Đen - Cổng sạc thông dụng\" src=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043220-113252.jpg\" /></a></p>\r\n\r\n<h3>T&iacute;ch trữ năng lượng lớn, hiệu suất sạc 65%</h3>\r\n\r\n<ul>\r\n	<li>Xmobile PowerLite P106WD c&oacute;&nbsp;<a href=\"https://www.thegioididong.com/sac-dtdd-10000mah\" target=\"_blank\">dung lượng pin sạc dự ph&ograve;ng 10.000 mAh</a>&nbsp;đ&aacute;p ứng nhu cầu sạc nhiều lần cho nhiều loại&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">điện thoại</a>,&nbsp;<a href=\"https://www.thegioididong.com/may-tinh-bang\" target=\"_blank\">m&aacute;y t&iacute;nh bảng</a>, đặc biệt hữu dụng khi bạn cần duy tr&igrave; năng lượng cho c&aacute;c thiết bị y&ecirc;u th&iacute;ch khi đi cắm trại, du lịch, c&ocirc;ng t&aacute;c hay đến những nơi bất tiện cho việc sạc pin với nguồn điện trực tiếp.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043320-113304.jpg\" onclick=\"return false;\"><img alt=\"Pin sạc dự phòng Polymer 10.000mAh không dây Type C PD QC3.0 Xmobile PowerLite P106WD Đen - Tích trữ năng lượng lớn, hiệu suất sạc 65%\" src=\"https://cdn.tgdd.vn/Products/Images/57/229275/sac-du-phong-10000mah-khong-day-xmobile-p106wd-043320-113304.jpg\" /></a></p>\r\n', 1, 2),
(16, 'Pin sạc dự phòng Không dây Magnetic', '002', '750000', 10, '1672301700_87aacedfc009418eb9ec2b9505db85cd.jpeg', '<p>T&ecirc;n sản phẩm :&nbsp;Pin sạc dự ph&ograve;ng Polymer 5000mAh Kh&ocirc;ng d&acirc;y Magnetic Type C HyperJuice</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nguồn ra: Type C: 5V - 2.4ASạc kh&ocirc;ng d&acirc;y: 5W - 7.5W - 10W</p>\r\n	</li>\r\n	<li>\r\n	<p>Nguồn', '<h3>Pin sạc dự ph&ograve;ng Polymer 5000mAh Kh&ocirc;ng d&acirc;y Magnetic Type C HyperJuice HJ-WL61TC&nbsp;với thiết kế nhỏ gọn v&agrave; tiện dụng, dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh ra ngo&agrave;i để sạc khi di chuyển.</h3>\r\n\r\n<h3>&bull;&nbsp;Sạc kh&ocirc;ng d&acirc;y&nbsp;với phụ kiện từ t&iacute;nh an to&agrave;n.</h3>\r\n\r\n<h3>&bull;&nbsp;Sạc dự ph&ograve;ng&nbsp;Hyper&nbsp;c&oacute; thể sạc c&ugrave;ng l&uacute;c 2 thiết bị (kh&ocirc;ng d&acirc;y + USB-C), để bạn tiết kiệm được thời gian chờ đợi.</h3>\r\n\r\n<h3>&bull;&nbsp;Hỗ trợ sạc kh&ocirc;ng d&acirc;y th&ocirc;ng qua ngay cả khi pin hết dung lượng. Sạc đầy pin cho iPhone/smartphone trước, sau đ&oacute; l&agrave; HyperJuice Magnectic Wireless 5000 mAh.</h3>\r\n\r\n<h3>&bull;&nbsp;HyperJuice Magnetic Wireless 5000 mAh sử dụng lithium-polymer 5000 mAh chất lượng cao với đ&egrave;n LED chỉ b&aacute;o mức pin.</h3>\r\n', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_thongke`
--

CREATE TABLE `tbl_thongke` (
  `id` int(11) NOT NULL,
  `ngaydat` varchar(30) NOT NULL,
  `donhang` int(11) NOT NULL,
  `doanhthu` varchar(100) NOT NULL,
  `soluongban` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_thongke`
--

INSERT INTO `tbl_thongke` (`id`, `ngaydat`, `donhang`, `doanhthu`, `soluongban`) VALUES
(5, '2020-09-01', 2, '600000', 9),
(6, '2020-09-02', 8, '500000', 10),
(7, '2020-09-03', 7, '700000', 12),
(8, '2020-09-04', 23, '1000000', 11),
(9, '2020-09-05', 20, '300000', 4),
(10, '2022-12-30', 7, '400000', 5),
(12, '2022-12-29', 1, '225000', 2),
(13, '2022-05-30', 1, '154205', 2),
(14, '2022-06-30', 1, '154200', 2),
(15, '2022-10-01', 1, '154200', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Chỉ mục cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- Chỉ mục cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmucbaiviet`
--
ALTER TABLE `tbl_danhmucbaiviet`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_thongke`
--
ALTER TABLE `tbl_thongke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
