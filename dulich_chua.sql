-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2024 at 05:53 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dulich_chua`
--

-- --------------------------------------------------------

--
-- Table structure for table `chua`
--

CREATE TABLE `chua` (
  `ChuaID` int(11) NOT NULL,
  `TenChua` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `DiaChi` text DEFAULT NULL,
  `AnhChua` varchar(255) DEFAULT NULL,
  `ThongTinLienHe` varchar(255) DEFAULT NULL,
  `TheLoaiChuaID` int(11) DEFAULT NULL,
  `KhuVucID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chua`
--

INSERT INTO `chua` (`ChuaID`, `TenChua`, `MoTa`, `DiaChi`, `AnhChua`, `ThongTinLienHe`, `TheLoaiChuaID`, `KhuVucID`) VALUES
(1, 'Chùa Âng', 'Đây là một trong những ngôi chùa tiêu biểu trong hệ thống 141 ngôi chùa Khmer ở Trà Vinh [1]. Theo Bảng Di tích lịch sử chùa Âng, thì chùa có từ năm 990... Đến năm 1695, ngôi chính điện được xây dựng lại bằng lá tre. Năm 1842, chùa được xây dựng lại bằng gỗ quý (rui, mè và 60 cây cột), lợp ngói và tường xây. Sau đó, chùa còn được trùng tu vài lần nữa [2].\r\n\r\nChùa nằm cách trung tâm thành phố Trà Vinh khoảng 5 km, nằm trong khuôn viên thắng cảnh Ao Bà Om, và đối diện với Bảo tàng Văn hóa dân tộc Khmer của tỉnh. Chùa nằm trong khuôn viên có diện tích khoảng 4 ha, có hào nước sâu bao bọc, và được xây dựng theo lối kiến trúc trang trí chùa Khmer Nam Bộ.', 'Hiện tọa lạc bên Quốc lộ 53 thuộc khóm 4, phường 8, thành phố Trà Vinh, tỉnh Trà Vinh, Việt Nam.', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/4/20/1035958/DSC02970.jpg', 'Liên hệ ', 2, 1),
(2, 'Chùa Samrong Ek', 'Theo các vị bô lão trong vùng truyền lại thì chùa Sam Rông Ek được xây dựng vào năm 1642. Một số tài liệu lại cho rằng chùa được xây từ năm 1373. Trải qua bao thăng trầm của thời gian, chịu sự tác động của thiên tai và chiến tranh nên chùa hư hỏng nhiều. \r\n\r\nNăm 1850 chùa được xây lại trên nền đất cũ. Năm 1944 ngôi chính điện được trùng tu và sửa sang lại trang trọng, uy nghi. Đến năm 1964 trường học Pali dành cho chư tăng được xây dựng. Ngôi trường khá rộng rãi, là nơi để các chư tăng học tập, tu dưỡng. Năm 1993 giảng đường được xây dựng. \r\n\r\nNhững năm gần đây chùa Sam Rông Ek được tu bổ, trở thành nơi sinh hoạt văn hóa tâm linh cho người dân địa phương. Mặt khác chùa còn là nơi để du khách thập phương đến chiêm bái, vãn cảnh, tìm hiểu nét văn hóa của người dân Khmer.', 'phường 8, thị xã Trà Vinh, tỉnh Trà Vinh.', 'https://i.ytimg.com/vi/eCQ949zBlfg/maxresdefault.jpg', 'Liên hệ', 2, 1),
(3, 'Chùa Liên Thanh', 'Mô tả', '163 Nguyễn Thị Minh Khai, Phường 7, Trà Vinh', 'https://storage-phatsuonline.s3.ap-southeast-1.amazonaws.com/files/2020/06/tra-vinh-phat-giao-tinh-khai-giang-khoa-an-cu-kiet-ha-pl-2564-dl-2020-246550-27.jpg', 'Liên hệ: 0932909199', 1, 1),
(4, 'Tịnh xá Ngọc Vân', 'Tịnh xá được Tổ sư Minh Đăng Quang sáng lập vào năm 1952. Trụ trì hiện nay là Thượng tọa Thích Giác Khang.\r\n\r\nKiến trúc tịnh xá đơn giản, xây hình bát giác, tượng trưng Bát chánh đạo – theo truyền thống xây dựng của hệ phái Khất sĩ, vách ván, mái lợp tôn theo lối chồng diêm. Chính giữa thờ tượng đức Bổn sư Thích Ca trong tháp tam cấp, phía sau, thờ di ảnh Tổ sư Minh Đăng Quang.', 'số 260 đường Nguyễn Thị Minh Khai, phường 7, thị xã Trà Vinh, tỉnh Trà Vinh.', 'https://i.ytimg.com/vi/gy0phzYz7qw/maxresdefault.jpg', 'Liên hệ', 1, 1),
(5, 'Chùa Hang (Kompông Chrây)', 'Chùa Hang, tiếng Khmer gọi là Kompông Chrây là ngôi chùa Phật giáo Nam tông Khmer nổi tiếng, tọa lạc tại khóm 3, thị trấn Châu Thành, cách trung tâm thành phố Trà Vinh hơn 5 km về hướng nam, theo quốc lộ 54.\r\nKhởi nguyên, ngôi chùa này quay mặt về hướng đông, nhìn ra dòng sông Long Bình, nơi có bến ghe xuồng gần bên gốc đa để bà con phum sóc tiện lên chùa nghe kinh, lễ Phật nên có tên Wat Kompong Ch’rây (Chùa Bến Cây Đa). Chùa được thành lập năm 1637 và đã trải qua 22 đời sư trụ trì. Năm 1968 trong sự kiện Tết Mậu Thân, chùa bị bom đạn tàn phá nặng nề. Năm 1977, sư Thạch Suông (nay là sư trụ trì đời thứ 23) trở về, và vận động phục dựng lại chùa. Từ đó đến nay, qua nhiều lần trùng tu, ngôi chùa trở nên khang trang và bề thế.', 'khóm 3, thị trấn Châu Thành, Tỉnh Trà Vinh', 'https://upload.wikimedia.org/wikipedia/commons/0/01/C%E1%BB%95ng_ch%C3%B9a_Hang_%28Tr%C3%A0_Vinh%29.jpg', 'Liên hệ: ', 2, 2),
(6, 'Chùa Chằm Ca', 'Chùa Chằm Ca hay còn được gọi là Wat Chom Ka, có pháp danh: Campaangrajay, được xây dựng năm 1642, trong khuôn viên rộng 10.000 mét vuông, tọa lạc tại ấp Tân Ngãi, xã Lương Hòa, huyện Châu Thành, tỉnh Trà Vinh.', 'Ấp Tân Ngãi, xã Lương Hòa, huyện Châu Thành, tỉnh Trà Vinh.', 'https://www.thegioicombo.vn/uploads/CA-MAU/CHUA-KHMER-MONIVONGSA-BOPHARAM-/BLOG/hinh-1.jpg', 'Liên hệ', 2, 2),
(7, 'Tịnh thất Ngọc Liên', 'Mô tả', 'ấp Phú Nhiêu, xã Mỹ Chánh, huyện Châu Thành, Trà Vinh, Việt Nam, ', 'https://www.lovebigisland.com/wp-content/uploads/wood-valley-temple-google-1-400x271.jpg', 'Liên hệ', 1, 2),
(8, 'Chùa Thanh Quang', 'Mô tả', 'ấp Thanh Nguyên B, xã Mỹ Chánh, huyện Châu Thành, tỉnh Trà Vinh', 'https://vuonhoaphatgiao.com/uploads/noidung/images/tu_vien/THANH-QUANG2.JPG', 'Liên hệ', 1, 2),
(9, 'Chùa Khmer Phương Thạnh Pisay', 'Chùa Pysey Varapram được xây dựng vào cuối thế kỷ thứ XVII và đã qua 11 đời sư trụ trì. Trong các cuộc kháng chiến bảo vệ Tổ quốc, ngôi chùa này không những là nơi để đồng bào, sư sãi Khmer hành đạo, mà còn nuôi giấu các đồng chí lãnh đạo cách mạng ở địa phương.', 'Phương Thạnh, Càng Long, Trà Vinh, Việt Nam', 'https://banquanlyditichtravinh.vn/media/2020/05/dsc_0205.jpeg', 'Liên hệ', 2, 3),
(10, 'Chùa Khmer Lưu Tư', 'Chùa Khmer Lưu Tư là một ngôi chùa xưa nằm ở xã Tân Hiệp, huyện Tiểu Cần, tỉnh Trà Vinh, Vietnam. Đây là một trong những ngôi chùa có niên đại lâu đời nhất và được tôn vinh là một di tích văn hóa lịch sử của tỉnh Trà Vinh.', 'ĐH6, Huyền Hội, Càng Long, Trà Vinh, Việt Nam', 'https://i.ytimg.com/vi/rmlYZu0zcBw/maxresdefault.jpg', 'Liên hệ', 2, 3),
(11, 'Chùa Khánh Thạnh', 'Tại buổi lễ, sau khi tuyên bố lý do và thành phần tham dự, Đại đức Thích Huệ Hoàng – đại diện cho chư Tôn đức và Phật tử chùa Khánh Thạnh có đôi lời cảm niệm ngày Vu lan Báo hiếu, trước khi dâng pháp y cúng dường lên chư Tôn đức chứng minh.', 'Ấp Sơn Trắng, Càng Long, Trà Vinh, Việt Nam', 'https://phatgiaodoisong.vn/wp-content/uploads/2022/08/LE-VU-LAN-CHUA-KHANH-MINH-2022-1.jpg', 'Liên hệ', 1, 3),
(12, 'Chùa Long Bửu', 'Chùa Long Bửu là một trong những ngôi chùa cổ, với kiến trúc độc và lạ, có rất nhiều du khách đến mỗi năm. Ngôi chùa như “thành viên” trên chính mảnh đất đang đứng. Chùa Long Bửu, nhắc nhở những giá trị đẹp về tín ngưỡng Phật Giáo và tín ngưỡng trong mỗi người.', 'Nhị Long, Càng Long, Trà Vinh, Việt Nam', 'https://www.thegioiphatgiao.net/media/com_mtree/images/listings/m/1329.jpg', 'Liên hệ', 1, 3),
(13, 'Chùa Cầu Tre', 'Mô tả', 'Long Thới, Tiểu Cần, Trà Vinh, Việt Nam', 'https://photos.wikimapia.org/p/00/03/96/55/53_full.jpg', 'Liên hệ', 2, 4),
(14, 'Chùa Ô Đùng', 'Wat Com Pong Đôn hay còn được gọi là chùa Ô Đùng có pháp danh: Bohdivansa Kambantum, được xây dựng năm 1719 trong khuôn viên rộng 22.920 mét vuông, tọa lạc tại ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh.', 'QL60, Hiếu Tử, Tiểu Cần, Trà Vinh, Việt Nam', 'https://image.giacngo.vn/w770/Uploaded/2023/qdhwqmrnd/2021_03_05/z2361392500791-dd617f6b7a0ffa821cc61301a7fa9408-2089.jpg', 'Liên hệ', 2, 4),
(15, 'Chùa Phổ Quang', 'Chùa Phổ Quang Long Thới Tiểu Cần Trà Vinh là một địa điểm được sắp xếp trong danh mục Chùa Phật và Chùa Phổ Quang Long Thới Tiểu Cần Trà Vinh nằm ở địa chỉ Long Thới Tiểu Cần Trà Vinh, Cau Tre. Ngoài ra bạn cũng có thể tìm kiếm thông tin của doanh nghiệp trong khu vực từ các liên kết. Đây là một trang web rất hữu ích giúp bạn tìm kiếm thông tin chi tiết của một địa điểm và chỉ dẫn đường đi đến Chùa Phổ Quang Long Thới Tiểu Cần Trà Vinh.', 'QL60, Long Thới, Tiểu Cần, Trà Vinh, Việt Nam', 'https://i.ytimg.com/vi/k5WQ0m6iB5c/maxresdefault.jpg', 'Liên hệ', 1, 4),
(16, 'Chùa Long Sơn', 'Chùa Long Sơn là một địa điểm được sắp xếp trong danh mục Trung Tâm Tôn Giáo và Chùa Long Sơn nằm ở địa chỉ Tieu Can, Trà Vinh. Ngoài ra bạn cũng có thể tìm kiếm thông tin của doanh nghiệp trong khu vực từ các liên kết. Đây là một trang web rất hữu ích giúp bạn tìm kiếm thông tin chi tiết của một địa điểm và chỉ dẫn đường đi đến Chùa Long Sơn.', 'Khóm 1, Tiểu Cần, Trà Vinh, Việt Nam', 'https://kientrucnamthanhphat.com/uploads/nha-go-2022/a-nhago/67-chua-longson/4.jpg', 'Liên hệ', 1, 4),
(17, 'Chùa Cò', 'Theo quốc lộ 54 đến huyện Trà Cú, đi tiếp về phía cảng Định An (sông Hậu), tới cổng chào của xã Đại An, rẽ vào tay trái du khách sẽ gặp tam quan chùa Nodol bề thế với hoa văn, họa tiết sặc sở. Qua cổng, theo con đường đất xuyên giữa hai bờ tre, bạch đàn, me tây, du khách rẽ vào một cổng nữa sẽ lọt vào khu vực chùa Cò. Từ đây, ta sẽ nhìn thấy rất nhiều chim, cò sải cánh bay lượn trên những mái ngói, những vòm cây, những đỉnh tháp thâm nghiêm cổ kính.', 'Đại An, Trà Cú, Trà Vinh, Việt Nam', 'https://media-cdn-v2.laodong.vn/Storage/NewsPortal/2022/10/18/1106564/Chua-Vam-Ray-Du-Lich.jpg', 'Liên hệ', 2, 5),
(18, 'Chùa Vàm Ray', 'Chùa Vàm Ray (chùa Compongpdhipruhs Bonraichas) khởi công phục dựng và cải tạo từ ngày 3 tháng 5 năm 2004 đến ngày 3 tháng 3 năm 2008 thì hoàn thành, và được chính thức khánh thành ngày 22 tháng 5 năm 2010.', 'Hàm Giang, Trà Cú Trà Vinh, Duong di Ben Ba, Hàm Tân, Trà Cú, Trà Vinh, Việt Nam', 'https://dulichtravinh.com.vn/wp-content/uploads/2021/08/3-Chua-Vam-Ray-XTDLTV-scaled.jpg', 'Liên hệ', 2, 5),
(19, 'Chùa Liên Phước', 'Trên tinh thần tuân thủ quy định phòng dịch Covid-19, chương trình mừng Tết năm nay của chùa Liên Phước đặc biệt hơn mọi năm khi có thêm 15 xe lăn dành tặng đến những người cao tuổi gặp khó khăn trong việc đi lại, cho những cô chú không may bị khuyết tật và có hoàn cảnh mưu sinh khốn khó.', 'Đôn Xuân, Trà Cú, Trà Vinh, Việt Nam', 'https://i.ytimg.com/vi/OaAA_bzDOSs/sddefault.jpg', 'Liên hệ', 1, 5),
(20, 'Chùa Liên Thành', 'Chứng minh và tham dự buổi lễ có TT.Thích Nguyên Ngọc – Phó trưởng BTS PG tỉnh, Phó Trưởng Ban TT BTS PG huyện Trà Cú; TT. Thích Minh Nhựt – Phó BTS PG tỉnh; ĐĐ.Thích Tâm Khiết – Chánh Thư ký BTS PG tỉnh cùng chư Tôn đức Tăng, Ni BTS PG tỉnh, trụ trì các cơ sở tự viện trên địa bàn và đông đảo Phật tử đồng tham dự.', 'Long Hiệp, Trà Cú, Trà Vinh, Việt Nam', 'https://cms.btgcp.gov.vn/upload-img/userfiles/images/image-20210511141752-2.png', 'Liên hệ', 1, 5),
(21, 'Chùa Ô Tưng', 'Chùa Ô Tưng là một địa điểm được sắp xếp trong danh mục Điểm Ưa Thích và Chùa Ô Tưng nằm ở địa chỉ Châu Điền, Cầu Kè, Trà Vinh. Ngoài ra bạn cũng có thể tìm kiếm thông tin của doanh nghiệp trong khu vực từ các liên kết. Đây là một trang web rất hữu ích giúp bạn tìm kiếm thông tin chi tiết của một địa điểm và chỉ dẫn đường đi đến Chùa Ô Tưng.', 'Châu Điền, Cầu Kè, Trà Vinh, Việt Nam', 'https://www.vietfuntravel.com.vn/image/data/Blog/chia-se/chua-o-tra-vinh/chua-o-tra-vinh-h3.jpg', 'Liên hệ', 2, 6),
(22, 'Chùa Ô Mịch', 'Chùa Ô Mịch được xây dựng vào những năm giữa thế kỷ XVI. Trong những năm chiến tranh, ngôi chùa là công trình kiến trúc kiên cố duy nhất của ba ấp Ô Mịch, Sóc Ruộng, Rùm Sóc và nơi đây không chỉ là trung tâm sinh hoạt tôn giáo, văn hóa của nhân nhân trong vùng, mà còn là địa điểm nuôi chứa cán bộ cách mạng, là nơi tổ chức các phong trào đấu tranh chính trị và là vùng căn cứ của Huyện ủy Cầu Kè.', 'Châu Điền, Cầu Kè, Trà Vinh, Việt Nam', 'https://banquanlyditichtravinh.vn/media/2020/05/5.jpeg', 'Liên hệ', 2, 6),
(23, 'Chùa Hòa Bình', 'Chùa Hòa Bình tọa lạc tại số 44 Nguyễn Văn Trỗi, Khóm 1, Thị trấn Cầu Kè, Huyện Cầu Kè, Tỉnh Trà Vinh. Trải qua những năm tháng chiến tranh, ngôi chùa vẫn giữ được nét uy nghiêm vốn có . Đến với chùa Hòa Bình du khách sẽ được chiêm bái vẻ đẹp cổ kính của cổ tự miền Bắc pha chút hiện đại, trang nghiêm của Chùa miền Nam.', 'TT. Cầu Kè, Cầu Kè, Trà Vinh, Việt Nam', 'https://storage-phatsuonline.s3.ap-southeast-1.amazonaws.com/files/2020/07/tra-vinh-chua-hoa-binh-trang-nghiem-to-chuc-dai-le-vu-lan-bao-hieu-dang-cung-phap-y-266211-7.jpg', 'Liên hệ', 1, 6),
(24, 'Chùa Vạn Hòa', 'Chùa Vạn Hòa ( Chùa Phật ) là một địa điểm được sắp xếp trong danh mục Điểm Ưa Thích và Chùa Vạn Hòa ( Chùa Phật ) nằm ở địa chỉ Cầu Kè, Trà Vinh. Ngoài ra bạn cũng có thể tìm kiếm thông tin của doanh nghiệp trong khu vực từ các liên kết. Đây là một trang web rất hữu ích giúp bạn tìm kiếm thông tin chi tiết của một địa điểm và chỉ dẫn đường đi đến Chùa Vạn Hòa ( Chùa Phật ).', 'TT. Cầu Kè, Cầu Kè, Trà Vinh, Việt Nam', 'https://i.ytimg.com/vi/_0e4-rcCoc0/sddefault.jpg', 'Liên hệ', 1, 6),
(25, 'Chùa La Bang', 'Chùa La Bang hay Wat Sla Bang có pháp danh: Surindarajabriksa, được xây dựng năm 1856 trong khuôn viên rộng 45.000 mét vuông, tọa lạc tại ấp La Bang, xã Đôn Châu, huyện Trà Cú, tỉnh Trà Vinh.', 'Xã Ngũ Lạc Huyện Duyên Hải Tỉnh Trà Vinh, TL 914, Đôn Châu, Trà Cú, Trà Vinh, Việt Nam', 'https://www.heritagevietnamairlines.com/wp-content/uploads/2020/05/Chua_Co-4_compressed-1024x681.jpg', 'Liên hệ', 2, 7),
(26, 'Chùa Bà Giam', 'Chùa Uttamabhirìràjamandìr (chùa Bà Giam), tọa lạc ấp Bà Giam B, xã Đôn Xuân, huyện Duyên Hải được xây dựng vào năm 1679 (PL. 2223). Trụ trì đầu tiên là Sư cả Thạch Cộng, đến nay chùa đã trải qua 06 đời Trụ trì. Trong những năm kháng chiến, chùa là cơ sở hoạt động cách mạng, tổ chức nuôi, bảo vệ cán bộ cách mạng, tham gia các cuộc đấu tranh chính trị.', 'Đôn Xuân, Duyên Hải, Trà Vinh 94000, Việt Nam', 'https://images.foody.vn/video/g68/671965/s630x354/foody-upload-api-foody-20-637339634260477765-200825144345.jpg', 'Liên hệ', 2, 7),
(27, 'Chùa Phước Long', 'Chùa Phước Long là một địa điểm được sắp xếp trong danh mục Điểm Ưa Thích và Chùa Phước Long nằm ở địa chỉ Bà Huyện Thanh Quan, Duyên Hải, Trà Vinh. Ngoài ra bạn cũng có thể tìm kiếm thông tin của doanh nghiệp trong khu vực từ các liên kết. Đây là một trang web rất hữu ích giúp bạn tìm kiếm thông tin chi tiết của một địa điểm và chỉ dẫn đường đi đến Chùa Phước Long.', '76 Đường 2 Tháng 9, TT. Duyên Hải, Duyên Hải, Trà Vinh, Việt Nam', 'https://img.dantocmiennui.vn/t460/Uploaddtmn/2015/10/13/sb1858-6-2-1.jpg', 'Liên hệ', 1, 7),
(28, 'Chùa Long Vĩnh', 'Sau năm 1981, Long Vĩnh là một xã thuộc huyện Duyên Hải.\r\nNgày 27 tháng 3 năm 1985, Hội đồng Chính phủ ban hành Quyết định 86-HĐBT[1] về việc thành lập xã Đông Hải trên cơ sở điều chỉnh các ấp Hồ Tàu, Rạch Cái Cỏ, Phước Thiện và Vĩnh Lợi thuộc xã Long Vĩnh.\r\nSau khi điều chỉnh địa giới, xã Long Vĩnh còn 8 ấp: Xẻo Bông, Kinh Đào, Cái Cối, Thốt Lốt, Vũng Tàu, Xóm Chùa, Cái Cỏ, La Ghi.', 'Phường 2, Duyên Hải, Trà Vinh, Việt Nam', 'https://lh3.googleusercontent.com/p/AF1QipMklAqmWAMm8o3mMfoXVGbnwbFGqox7gGNXPsHa=s680-w680-h510', 'Liên hệ', 1, 7),
(29, 'Chùa Khmer Căn Nôm', 'Chùa Can Snom (Bodhisayàràma) được xây dựng năm nào, tuy nhiên theo lời kể của sư cả Thạch Ngọc Thành và Ban Quản trị thì chùa được di dời và tạo lập lần thứ ba vào năm 1747. Chùa nằm cách thị trấn Cầu Ngang khoảng 10 km về hướng tây, cách thành phố Trà Vinh khoảng 25 km về hướng nam thuộc ấp Căn Nom, xã Trường Thọ (trước đây là xã Nhị Trường), huyện Cầu Ngang, tỉnh Trà Vinh. \r\n', 'Trường Thọ, Cầu Ngang, Trà Vinh, Việt Nam', 'https://banquanlyditichtravinh.vn/media/2020/05/dsc02618.jpeg', 'Liên hệ', 2, 8),
(30, 'Chùa Khmer Ô Răng', 'Chùa Ô Răng hay Wat Phnô Răng có pháp danh: Sagaragirikohkoy, được xây dựng năm 1683 trên diện tích rộng 42.930 mét vuông, tọa lạc tại ấp Ô Răng, xã  Long Sơn, huyện Cầu Ngang, tỉnh Trà Vinh. ', 'Long Sơn, Cầu Ngang, Trà Vinh, Việt Nam', 'https://i.ytimg.com/vi/PGhOE871k84/maxresdefault.jpg', 'Liên hệ', 2, 8),
(31, 'Chùa Liên Trì', 'Chùa Liên Trì Hòa Lục, Hiệp Hòa, Cầu Ngang, Trà Vinh là một địa điểm được sắp xếp trong danh mục Tổ Chức Tôn Giáo và Chùa Liên Trì Hòa Lục, Hiệp Hòa, Cầu Ngang, Trà Vinh nằm ở địa chỉ Hòa Lục, Hiệp Hòa, Cầu Ngang, Trà Vinh, Cau Ngang. Ngoài ra bạn cũng có thể tìm kiếm thông tin của doanh nghiệp trong khu vực từ các liên kết. Đây là một trang web rất hữu ích giúp bạn tìm kiếm thông tin chi tiết của một địa điểm và chỉ dẫn đường đi đến Chùa Liên Trì Hòa Lục, Hiệp Hòa, Cầu Ngang, Trà Vinh.', 'Kim Hoà, Cầu Ngang, Trà Vinh, Việt Nam', 'https://i.ytimg.com/vi/89ulgrMCg4Q/maxresdefault.jpg', 'Liên hệ', 1, 8),
(32, 'Chùa Phước Minh', 'Phước Minh cung còn có các tên gọi khác là Chùa Quan Thánh đế hay Chùa Ông là cơ sở tín ngưỡng tiêu biểu của cộng đồng người Hoa trên địa bàn tỉnh Trà Vinh.\r\n\r\n', 'TT. Cầu Ngang, Cầu Ngang, Trà Vinh 87806, Việt Nam', 'https://images.foody.vn/res/g68/672466/prof/s/foody-mobile-hmkk-jpg-486-636349567154408785.jpg', 'Liên hệ', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `diadiem`
--

CREATE TABLE `diadiem` (
  `DiaDiemID` int(11) NOT NULL,
  `ChuaID` int(11) DEFAULT NULL,
  `KhachSanID` int(11) DEFAULT NULL,
  `NhaHangID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachsan`
--

CREATE TABLE `khachsan` (
  `KhachSanID` int(11) NOT NULL,
  `TenKhachSan` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `DiaDiemLat` decimal(10,6) NOT NULL,
  `DiaDiemLon` decimal(10,6) NOT NULL,
  `GiaCaoNhat` decimal(10,2) DEFAULT NULL,
  `ThongTinLienHe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khuvuc`
--

CREATE TABLE `khuvuc` (
  `KhuVucID` int(11) NOT NULL,
  `TenQuanHuyen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khuvuc`
--

INSERT INTO `khuvuc` (`KhuVucID`, `TenQuanHuyen`) VALUES
(1, 'Thành Phố Trà Vinh'),
(2, 'Huyện Châu Thành'),
(3, 'Huyện Càng Long'),
(4, 'Huyện Tiểu Cần'),
(5, 'Huyện Trà Cú'),
(6, 'Huyện Cầu Kè'),
(7, 'Huyện Duyên Hải'),
(8, 'Huyện Cầu Ngang');

-- --------------------------------------------------------

--
-- Table structure for table `nhahang`
--

CREATE TABLE `nhahang` (
  `NhaHangID` int(11) NOT NULL,
  `TenNhaHang` varchar(255) NOT NULL,
  `MoTa` text DEFAULT NULL,
  `DiaDiemLat` decimal(10,6) NOT NULL,
  `DiaDiemLon` decimal(10,6) NOT NULL,
  `GiaTrungBinh` decimal(10,2) DEFAULT NULL,
  `ThucDon` text DEFAULT NULL,
  `ThongTinLienHe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `theloaichua`
--

CREATE TABLE `theloaichua` (
  `TheLoaiChuaID` int(11) NOT NULL,
  `TenTheLoaiChua` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `theloaichua`
--

INSERT INTO `theloaichua` (`TheLoaiChuaID`, `TenTheLoaiChua`) VALUES
(1, 'Chùa Việt'),
(2, 'Chùa Khmer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chua`
--
ALTER TABLE `chua`
  ADD PRIMARY KEY (`ChuaID`),
  ADD KEY `TheLoaiChuaID` (`TheLoaiChuaID`),
  ADD KEY `KhuVucID` (`KhuVucID`);

--
-- Indexes for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD PRIMARY KEY (`DiaDiemID`),
  ADD KEY `ChuaID` (`ChuaID`),
  ADD KEY `KhachSanID` (`KhachSanID`),
  ADD KEY `NhaHangID` (`NhaHangID`);

--
-- Indexes for table `khachsan`
--
ALTER TABLE `khachsan`
  ADD PRIMARY KEY (`KhachSanID`);

--
-- Indexes for table `khuvuc`
--
ALTER TABLE `khuvuc`
  ADD PRIMARY KEY (`KhuVucID`);

--
-- Indexes for table `nhahang`
--
ALTER TABLE `nhahang`
  ADD PRIMARY KEY (`NhaHangID`);

--
-- Indexes for table `theloaichua`
--
ALTER TABLE `theloaichua`
  ADD PRIMARY KEY (`TheLoaiChuaID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chua`
--
ALTER TABLE `chua`
  MODIFY `ChuaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `diadiem`
--
ALTER TABLE `diadiem`
  MODIFY `DiaDiemID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khachsan`
--
ALTER TABLE `khachsan`
  MODIFY `KhachSanID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `khuvuc`
--
ALTER TABLE `khuvuc`
  MODIFY `KhuVucID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nhahang`
--
ALTER TABLE `nhahang`
  MODIFY `NhaHangID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theloaichua`
--
ALTER TABLE `theloaichua`
  MODIFY `TheLoaiChuaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chua`
--
ALTER TABLE `chua`
  ADD CONSTRAINT `chua_ibfk_1` FOREIGN KEY (`TheLoaiChuaID`) REFERENCES `theloaichua` (`TheLoaiChuaID`),
  ADD CONSTRAINT `chua_ibfk_2` FOREIGN KEY (`KhuVucID`) REFERENCES `khuvuc` (`KhuVucID`);

--
-- Constraints for table `diadiem`
--
ALTER TABLE `diadiem`
  ADD CONSTRAINT `diadiem_ibfk_1` FOREIGN KEY (`ChuaID`) REFERENCES `chua` (`ChuaID`),
  ADD CONSTRAINT `diadiem_ibfk_2` FOREIGN KEY (`KhachSanID`) REFERENCES `khachsan` (`KhachSanID`),
  ADD CONSTRAINT `diadiem_ibfk_3` FOREIGN KEY (`NhaHangID`) REFERENCES `nhahang` (`NhaHangID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
