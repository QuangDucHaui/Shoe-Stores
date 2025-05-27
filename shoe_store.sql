-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th10 18, 2023 lúc 03:47 PM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoe_store`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@yomail.com', '$2y$10$zxtJmfT9QVDtc/F9iBNceehYJQyCt6GSh5sw3XSgRD5igbRqhPMum', '2023-10-18 13:06:50', '2023-10-18 13:06:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brands`
--

CREATE TABLE `brands` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Nike', '2023-10-18 13:11:04', '2023-10-18 13:11:04'),
(2, 'Adidas', '2023-10-18 13:11:09', '2023-10-18 13:11:09'),
(3, 'Puma', '2023-10-18 13:11:13', '2023-10-18 13:11:13'),
(4, 'Wika', '2023-10-18 13:11:26', '2023-10-18 13:11:26'),
(5, 'Zocker', '2023-10-18 13:11:39', '2023-10-18 13:11:39'),
(6, 'Mizuno', '2023-10-18 13:11:45', '2023-10-18 13:11:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Giày sân cỏ nhân tạo', '2023-10-18 13:08:33', '2023-10-18 13:08:33'),
(2, 'Giày sân cỏ tự nhiên', '2023-10-18 13:08:39', '2023-10-18 13:08:39'),
(4, 'Giày bóng đá futsal', '2023-10-18 13:09:28', '2023-10-18 13:09:28'),
(5, 'Giày bóng đá trẻ em', '2023-10-18 13:10:20', '2023-10-18 13:10:20'),
(6, 'Phụ kiện bóng đá', '2023-10-18 13:10:29', '2023-10-18 13:10:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_16_180835_create_brands_table', 1),
(6, '2023_08_17_095151_create_categories_table', 1),
(7, '2023_08_17_180043_create_products_table', 1),
(8, '2023_08_17_180057_create_product_items_table', 1),
(9, '2023_08_17_180105_create_product_images_table', 1),
(10, '2023_08_21_102446_create_admins_table', 1),
(11, '2023_08_21_181500_create_orders_table', 1),
(12, '2023_08_21_181507_create_order_product_table', 1),
(13, '2023_08_25_191707_create_post_types_table', 1),
(14, '2023_08_25_191857_create_posts_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` double NOT NULL,
  `payment` tinyint NOT NULL COMMENT '1: VNPay, 2: COD',
  `status` tinyint NOT NULL COMMENT '0: Cancel, 1: Return, 2: Pending, 3: Inprogress, 4: delivered',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `total_price`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tuan Anh', 'tuananh@localhost.com', '0765434322', 'Hà Đông, Hà Nội', 2080000, 2, 4, '2023-10-18 14:41:35', '2023-10-18 14:46:22'),
(2, 1, 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', 480000, 1, 0, '2023-10-18 14:47:35', '2023-10-18 14:48:10'),
(3, 1, 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', 300000, 2, 0, '2023-10-16 14:48:34', '2023-10-18 14:48:49'),
(4, 1, 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', 720000, 2, 4, '2023-10-15 14:49:03', '2023-10-18 14:49:25'),
(5, 1, 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', 650000, 2, 2, '2023-10-16 14:50:08', '2023-10-18 14:50:08'),
(6, 1, 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', 1030000, 2, 3, '2023-10-17 14:50:29', '2023-10-18 14:50:32'),
(7, 1, 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', 1120000, 1, 3, '2023-10-18 14:54:25', '2023-10-18 14:55:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `name`, `color`, `quantity`, `size`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 17, 'Nike Mercurial Vapor 13 Pro TF Neymar', 'Chuối hồng xanh', 4, '39', 520000, NULL, NULL),
(2, 2, 16, 'Giày đá banh Mizuno Neo 3 Pro TF', 'Vàng vạch đen', 1, '39', 480000, NULL, NULL),
(3, 3, 15, 'Găng tay thủ môn', 'Đỏ đen', 1, '8', 300000, NULL, NULL),
(4, 4, 13, 'Giày Đá Banh Puma Future Z 1.4 MG', 'Xám vạch cam', 1, '39', 720000, NULL, NULL),
(5, 5, 14, 'Giày Đá Bóng Puma Future Z 1.4 TF', 'Xám trắng', 1, '39', 650000, NULL, NULL),
(6, 6, 12, 'Giày Đá Banh Puma Future Z 1.4 TF Neymar', 'Cam nâu', 1, '39', 450000, NULL, NULL),
(7, 6, 7, 'Giày Adidas X Speedportal .1 TF Messi', 'Cam đen', 1, '40', 580000, NULL, NULL),
(8, 7, 17, 'Nike Mercurial Vapor 13 Pro TF Neymar', 'Chuối hồng xanh', 1, '39', 520000, NULL, NULL),
(9, 7, 3, 'Giày Nike Phantom GX Pro TF', 'Cam vàng', 1, '39', 600000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `post_type_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `post_type_id`, `title`, `thumbnail`, `content`, `created_at`, `updated_at`) VALUES
(2, 2, 'Mang giày đá banh thoải mái hơn | 5 Lưu ý cần phải biết', 'uploads/thumbnail/rOv3OOcFjf7Bl58RRkTZD6TNGhW1AuQzq1saH02K.jpg', '<h2>1. Chọn một đôi vớ tốt</h2><p>Khi lên sân để chơi bóng thì bạn sẽ mang lên chân mình 2 thứ là một đôi giày và một đôi vớ. Đôi vớ là thứ trực tiếp tiếp xúc với bàn chân của bạn. Chính vì vậy một đôi vớ phù hợp sẽ đóng vai trò quan trọng trong việc mang lại sự thoải mái và bảo vệ bàn chân bạn. Chính vì vậy hãy chú ý hơn trong việc lựa chọn và sử dụng vớ đá bóng bạn nhé.<a href=\"https://giaydabongtot.com/blog/mang-giay-da-banh-thoai-mai/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Mang giày đá banh thoải mái hơn | 5 Lưu ý cần phải biết\"></a></p><p>Hãy lựa chọn một đôi vớ bóng đá có kích thước vừa vặn và chất liệu có độ co giãn tốt. Đối với những đôi giày đá bóng mới thì bạn nên sử dụng loại vớ mỏng trước (khi mà giày còn cứng do chưa kịp giãn ra). Sau khi chơi bóng một vài trận thì bạn có thể lựa chọn các đôi vớ dày, êm ái hơn. Khi giày đã bai giãn ra thì việc sử dụng những đôi vớ dày hơn sẽ giúp tăng độ ôm chân mà không gây tức chân, khó chịu nữa. <a href=\"https://giaydabongtot.com/blog/mang-giay-da-banh-thoai-mai/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Mang giày đá banh thoải mái hơn | 5 Lưu ý cần phải biết\"></a></p><h2>2. Chọn size giày và form giày phù hợp</h2><p>Việc chọn size giày vừa vặn là rất quan trọng trong việc mang lại sự thoải mái khi mang giày bóng đá. Song song với size giày thì form giày cũng là điều cần được quan tâm rất nhiều. Hãy chú ý chọn size giày theo các hướng dẫn <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>chọn size giày đá bóng</strong></a> chuẩn của các shop bán giày. Tham khảo sự tư vấn của các shop để có thể chọn được đôi giày có size vừa vặn nhất.</p><p>Ngoài size giày thì bạn cần lưu ý đến form giày khi chọn <a href=\"https://giaydabongtot.com/\"><strong>mua giày đá banh</strong></a>. Có những đôi giày bóng đá có form dài khiến nhiều bạn có bàn chân to, mập, bè ngang rất dễ bị chật ngang và mũi còn thừa rất nhiều. Nếu bạn có bàn chân to, mập, bè ngang và trót thích những đôi giày có form dài thì hãy chấp nhận từ bỏ nhé. Hãy lựa chọn các đôi giày, dòng giày bóng đá có form rộng ngang, da mềm sẽ giúp bạn thoải mái và ít thừa mũi hơn. <a href=\"https://giaydabongtot.com/blog/mang-giay-da-banh-thoai-mai/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Mang giày đá banh thoải mái hơn | 5 Lưu ý cần phải biết\"></a></p><h2>3. Thắt dây có độ chặt vừa chuẩn</h2><p>Với một đôi giày bóng đá có dây buộc thì việc thắt dây giày vừa vặn, chắc chắn sẽ giúp bạn cảm giác chắc chân hơn và dễ đá bóng hơn. Hãy cố gắng thắt dây giày có độ chắc vừa phải để có được độ ôm chân tốt nhất. Tuy nhiên sau khi rút dây giày bạn nên đứng dậy và kiểm tra xem có chật ở phần nào của bàn chân, mu chân không? Hãy nới lỏng phần dây giày ở vị trí bị chật một tí để bàn chân bạn có được cảm giác thoải mái hơn.</p><p>Nếu việc nới dây giày là chưa đủ để mang lại sự thoải mái cho bàn chân bạn. Hãy thử tìm các cách buộc dây giày khác nhau để có được sự thoải mái nhất cho bàn chân của mình. Không phải lúc nào cũng nhất thiết phải buộc dây giày theo cách buộc của hãng bạn nhé. <a href=\"https://giaydabongtot.com/blog/mang-giay-da-banh-thoai-mai/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Mang giày đá banh thoải mái hơn | 5 Lưu ý cần phải biết\"></a></p><h2>4. Thay lót giày phù hợp</h2><p>Hầu hết các lót giày đi kèm với giày thường có thiết kế và độ dày rất phổ thông. Chính vì vậy không phải lúc nào lót zin của giày cũng mang lại sự thoải mái cho bàn chân của bạn. Bạn có thể tìm mua các loại lót giày có thiết kế phù hợp với đôi giày của mình để thay đôi lót zin. Một đôi lót giày bóng đá phù hợp sẽ mang lại sự thoải mái khi ôm lòng bàn chân, có độ êm mềm, thoáng khí tốt.</p><h2>5. Thực hiện các bước làm quen giày</h2><p>Với một đôi giày đá banh mới thì bạn không nên quá vội vàng xỏ lên sân để ra sân thi đấu luôn. Giày bóng đá mới thường có form giày ôm, chật cùng với đó là chất liệu da, đế giày chưa được làm mềm ra nên có thể làm tổn thương bàn chân bạn trong những trận đấu cường độ cao. Chính vì vậy nếu bạn mới mua một đôi giày bóng đá mới thì hãy thực hiện các bước <a href=\"https://giaydabongtot.com/blog/9-buoc-lam-quen-giay-da-bong-moi\"><strong>làm quen giày bóng đá</strong></a>. Các bước này còn được gọi bằng tên gọi là break in sẽ giúp đôi giày của bạn mềm ra và quen chân hơn. Việc mang giày đá bóng mới để ra sân thi đấu một cách vội vàng sẽ có thể gây ra nhiều chấn thương cho bàn chân bạn. Trong đó phổ biến nhất là các vết phồng rộp ở các ngón chân, 2 bên bàn chân và gót chân. Nếu bạn đã từng bị phồng rộp bàn chân hoặc muốn tránh điều đó xảy ra thì có thể tham khảo 9 lời khuyên giúp <a href=\"https://giaydabongtot.com/blog/tranh-phong-rop-khi-mang-giay-da-bong\"><strong>tránh phồng rộp khi mang giày đá bóng</strong></a> nhé.<a href=\"https://giaydabongtot.com/blog/mang-giay-da-banh-thoai-mai/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Mang giày đá banh thoải mái hơn | 5 Lưu ý cần phải biết\"></a></p>', '2023-10-18 14:00:27', '2023-10-18 14:00:27'),
(3, 2, 'Lưu ý khi lựa chọn và sử dụng giày đá bóng da mềm giá rẻ', 'uploads/thumbnail/2YncB6Ofdj6l4SQTkyjoScNv9VKaeFQugNNUA999.jpg', '<h2>Tìm hiểu về giày đá bóng da mềm</h2><p>Giày bóng đá da mềm là loại giày mà có da upper làm bằng chất liệu mềm êm. Cả 3 loại da giày được sử dụng phổ biến để làm giày đá bóng là da thật, da nhân tạo và da vải đều có thể sản xuất với độ mềm cao. Tuy nhiên khi nhắc đến <a href=\"https://giaydabongtot.com/\"><strong>giày đá banh giá rẻ</strong></a> (dưới 1tr VNĐ) thì thường giày chỉ được làm bằng da nhân tạo hoặc da vải. Trong đó phổ biến nhất vẫn là các mẫu giày làm bằng da nhân tạo synthetic. Với mức giá dưới 1tr VNĐ thì chỉ có các mẫu <strong>giày đá bóng fake, superfake</strong> là được sản xuất với chất liệu da vải. <a href=\"https://giaydabongtot.com/blog/giay-da-bong-da-mem-gia-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Lưu ý khi lựa chọn và sử dụng giày đá bóng da mềm giá rẻ\"></a></p><h3>Lưu ý khi lựa chọn giày đá banh da mềm giá rẻ</h3><h4>– Xem kỹ loại da của đôi giày bạn chọn</h4><p>Giày bóng đá giá rẻ dưới 1tr VNĐ thường chỉ được làm bằng 2 loại da là da nhân tạo và da vải (giày da thật thường đắt hơn). Thường thì giày bóng đá da nhân tạo sẽ phổ biến hơn các loại giày da vải. Chất liệu da vải hiện mới chỉ có trên các mẫu giày đá bóng fake Nike, Adidas có giá khoảng <strong>450-600k</strong> VNĐ. Giày bóng đá da vải thường có giá cao hơn giày da nhân tạo một ít (<strong>100-200k</strong> VNĐ). Tuy nhiên giày da vải có nhiều <a href=\"https://giaydabongtot.com/blog/giay-da-bong-da-vai-co-uu-diem-gi\"><strong>ưu điểm</strong></a> tuyệt vời khi sử dụng để chơi bóng <a href=\"https://giaydabongtot.com/blog/giay-da-bong-da-mem-gia-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Lưu ý khi lựa chọn và sử dụng giày đá bóng da mềm giá rẻ\"></a></p><h4>– Giày da nhân tạo vẫn có độ bền cao nếu sử dụng đúng cách</h4><p>Giày đá bóng da nhân tạo thường phổ biến và có mức giá rẻ. Tuy nhiên da nhân tạo thường có chất da không chống nước và có thể bị rách nếu ẩm ướt quá nhiều. Vì vậy nếu bạn nên tham khảo các <a href=\"https://giaydabongtot.com/blog/su-dung-giay-da-bong-da-nhan-tao\"><strong>lưu ý khi sử dụng giày da nhân tạo</strong></a> để giày giữ được độ bền cao nhất nhé.</p><h4>– Da vải thường có khả năng chống nước và độ bền cao</h4><p>Mặc dù giày da vải thường không phổ biến nhưng loại giày này đang là một trong những <a href=\"https://giaydabongtot.com/blog/5-xu-huong-giay-da-bong-nike-adidas\"><strong>xu hướng sản xuất giày đá banh</strong></a> trên thế giới. Chính vì vậy sắp tới sẽ có nhiều hơn những mẫu giày bóng đá da vải giá rẻ (bản fake Nike, Adidas có giá khoảng 400-500k VNĐ). Có những đôi giày da vải giá rẻ được ghi nhận có độ bền 1-2 năm và chỉ bị mòn đế chứ không rách da bung keo. Tham khảo <a href=\"https://giaydabongtot.com/tu-khoa/nemeziz-18-3-tf\"><strong>tại đây</strong></a>.</p>', '2023-10-18 14:02:20', '2023-10-18 14:02:20'),
(4, 1, 'Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?', 'uploads/thumbnail/WQuM6oivg4L3BgQ25enNZVKZukpiEAYeotNVYPRu.jpg', '<p>Cũng giống trong bóng đá chuyên nghiệp,vị trí tiền đạo trên sân cỏ nhân tạo cũng được phân thành nhiều loại. Trên sân cỏ nhân tạo thì vị trí tiền đạo chủ yếu được phân thành <strong>tiền đạo cánh</strong> hoặc <strong>tiền đạo cắm</strong>. Chọn giày sân cỏ nhân tạo tiền đạo phù hợp sẽ phụ thuộc vào vị trí tiền đạo bạn hay chơi. Ngoài ra còn phụ thuộc vào phong cách, sở thích chơi bóng của cá nhân bạn. Khi chọn giày sân cỏ nhân tạo cho tiền đạo thì quan trọng nhất là đôi giày đó hỗ trợ cho bạn như thế nào. Mặc dù giày sân cỏ nhân tạo chỉ là loại giày được sản xuất để phục vụ bóng đá không chuyên. Tuy nhiên việc lựa chọn được đôi giày phù hợp sẽ giúp bạn chơi bóng tốt hơn rất nhiều. Mặc dù giày đá bóng sân cỏ nhân tạo được sản xuất rất đa dạng mẫu mã, chủng loại, loại đinh. Tuy nhiên ở Việt Nam thì chủ yếu sử dụng loại giày đinh dăm TF để chơi bóng. Ngoài ra dựa theo thiết kế kiểu đế giày thì chúng ta chỉ cần phân loại tất cả các loại giày đinh dăm TF ra làm 2 loại là <strong>đế dày</strong> và <strong>đế mỏng</strong>. <a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p><h3>Chi tiết cách chọn giày sân cỏ nhân tạo cho tiền đạo</h3><p>Để chọn được giày sân cỏ nhân tạo cho vị trí tiền đạo thì chúng ta sẽ phải quan tâm đến 2 yếu tố chính là vị trí tiền đạo, phong cách chơi bóng. Cùng một vị trí tiền đạo trên sân nhưng nếu phong cách chơi bóng khác nhau thì cách chọn giày cũng sẽ khác nhau. Chúng ta sẽ chọn giày sân cỏ nhân tạo cho tiền đạo dựa theo thiết kế của giày (đặc biệt là kiểu đế giày dày hay mỏng). Chọn theo kiểu thiết kế đế giày là đã quá đủ để phục vụ bạn khi chơi bóng đá không chuyên rồi.<a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p><h3>Giày sân cỏ nhân tạo Tiền Đạo Cánh</h3><p>Cũng giống như trong bóng đá chuyên nghiệp, <a href=\"https://giaydabongtot.com/blog/doi-hinh-va-vi-tri-trong-bong-da-7-nguoi\"><strong>đội hình 7 người</strong></a> trên sân cỏ nhân tạo cũng có vị trí tiền đạo cánh trái và cánh phải. Kể cả trong bóng đá chuyên nghiệp hay không chuyên thì vị trí chạy cánh luôn cần một đôi giày đá bóng nhẹ, hỗ trợ di chuyển tăng tốc tốt. Một đôi giày sân cỏ nhân tạo đinh dăm TF có trọng lượng nhẹ, hỗ trợ di chuyển tăng tốc linh hoạt thì cần có thiết kế đế giày thon gọn nhẹ. Ngoài ra thiết kế đinh hỗ trợ bám sân tốt cũng là một lợi thế trong những pha bứt tốc. Để hiểu thêm về các kiểu thiết kế đế giày đinh dăm TF trên sân cỏ nhân tạo thì bạn có thể tham khảo <a href=\"https://giaydabongtot.com/blog/2-kieu-de-giay-san-co-nhan-tao-tf\"><strong>bài này nhé</strong></a>. Dưới đây shop sẽ ví dụ về loại giày đinh dăm TF có thiết kế phù hợp với vị trí tiền đạo cánh. Mẫu giày sân cỏ nhân tạo điển hình được anh em chơi bóng trên sân cỏ nhân tạo Việt Nam yêu thích là Nike Mercurial Victory 6 TF. Đây là một mẫu giày cũ nhưng có thiết kế đế giày thon gọn hỗ trợ di chuyển rất linh hoạt trên sân cỏ nhân tạo.<a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p><p>Mặc dù đến thời điểm hiện tại thì Nike Mercurial Victory 6 cũng đã bị dừng sản xuất. Tuy nhiên bạn có thể lựa chọn các mẫu giày có thiết kế đế giày thon gọn sẽ di chuyển linh hoạt hơn nhé. Chắc chắn tiền đạo cánh trên sân cỏ nhân tạo luôn cần một đôi giày hỗ trợ di chuyển linh hoạt rồi. Ngoài ra những đôi giày sân cỏ nhân tạo có thiết kế đế giày thon gọn, mỏng nhẹ cũng rất được yêu thích vì khả năng hỗ trợ sút bóng tốt. Phần đế giày thon gọn, ít góc cạnh thừa sẽ giúp chạm bóng chính xác hơn khi sút bóng. Điều này sẽ giúp tạo ra quỹ đạo bay của quả bóng chính xác hơn (không bị các góc cạnh thừa của đế giày làm lệch hướng bóng). Mặc dù mẫu giày sân cỏ nhân tạo đế mỏng này rất được yêu thích. Tuy nhiên sự thật thì ngoài những yêu điểm kể trên thì loại giày này vẫn có những nhược điểm của nó. Nhược điểm chính là thiết kế đế giày thon mỏng quá nên khả năng hỗ trợ trụ vững sẽ kém đi. Mang những mẫu giày có thiết kế đế kiểu này sẽ cảm thấy mỏi chân hơn khi đứng nhiều trên sân cỏ nhân tạo. Ngoài ra thiết kế đế giày thon gọn thường không được thêm lớp đệm xốp vào đế giày nên đá nhiều có thể gây đau chân, đau khớp. <a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p><p>Vậy nếu bạn chơi bóng ở vị trí tiền đạo và không quan tâm đến những nhược điểm của giày sân cỏ nhân tạo đế mỏng thì hãy lựa chọn giày có thiết kế như trên nhé. Sự thật thì những đôi giày sân cỏ nhân tạo đế mỏng rất được yêu thích. Tuy nhiên các đôi giày sân cỏ nhân tạo thiết kế đế giày dày dặn, chắc chắn vẫn có nhiều ưu điểm hỗ trợ chơi bóng vượt trội. Đừng rập khuôn theo hướng dẫn trong bài viết này và hãy chọn đôi giày nào cho bạn cảm giác phù hợp nhất là được. <a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p><h3>Giày sân cỏ nhân tạo cho Tiền Đạo Cắm</h3><p>Vị trí tiền đạo cắm thì sẽ chơi bóng với phong cách khác so với các tiền đạo cánh. Tùy theo phong cách chơi bóng của bạn mà sẽ có cách lựa chọn giày khác nhau. Nếu bạn chơi bóng ở vị trí tiền đạo cắm và thích di chuyển nhiều đề nhận bóng thì hãy chọn giày giống như <a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao#giay-san-co-nhan-tao-tien-dao-canh\"><strong>giày sân cỏ nhân tạo của tiền đạo cánh</strong></a>. Trường hợp bạn chơi ở vị trí tiền đạo cắm và ít di chuyển lên xuống mà chủ yếu là chọn vị trí để nhận bóng thì cách chọn giày sẽ khác. Vị trí tiền đạo cắm ít di chyển nên chọn những đôi giày mang đến sự chắc chân, thoải mái để tránh mỏi chân khi phải đứng nhiều trên sân. Các mẫu giày sân cỏ nhân tạo đinh dăm TF với thiết kế đế giày dày dặn, chắc chắn, có đệm xốp êm ái là một lựa chọn tốt. Theo xu hướng thiết kế của các hãng giày lớn như Nike, Adidas thì các mẫu giày mới thường được thiết kế với đế giày dày dặn, có đệm xốp êm ái. Những loại giày kiểu này sẽ mang lại sự êm chân, chắc chân, tránh mỏi chân khi chơi bóng.<a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p><h3>Kết luận về cách chọn giày sân cỏ nhân tạo cho tiền đạo</h3><p>Thực ra giày sân cỏ nhân tạo được sản xuất thường không có sự phân hóa theo vị trí quá rõ ràng. Bạn chỉ có 2 lựa chọn khi chọn mua giày sân cỏ nhân tạo đinh dăm TF là giày đế dày hoặc đế mỏng (dựa theo kiểu thiết kế của đế giày). Chính vì vậy cách chọn giày chỉ là để tham khảo tương đối chứ bạn không nên quá rập khuôn lúc chọn giày. Hãy chọn đôi giày sân cỏ nhân tạo phù hợp và mang lại cảm giác thoải mái cho bạn khi chơi bóng. Ví dụ bạn chơi ở vị trí chạy cánh nhưng thường thấy khó chịu vì hay bị mỏi chân, đau chân thì hãy chọn giày sân cỏ nhân tạo đế dày cho nó êm ái. Đừng quá cứng nhắc khi chọn giày sân cỏ nhân tạo, đôi giày sân cỏ nhân tạo tốt nhất chính là đôi giày mà bạn cảm thấy quen chân nhất.<a href=\"https://giaydabongtot.com/blog/chon-giay-da-banh-san-co-nhan-tao-cho-tien-dao/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Chọn giày đá banh sân cỏ nhân tạo cho Tiền Đạo thế nào?\"></a></p>', '2023-10-18 14:30:33', '2023-10-18 14:30:33'),
(5, 1, '6 lưu ý khi chọn giày đá bóng sân cỏ tự nhiên đinh cao FG', 'uploads/thumbnail/nMTEw03ewnrwttNHZ8Bb0mZMClwS8gCXpKpn6TIg.jpg', '<h2>Giới thiệu giày đá bóng sân cỏ tự nhiên</h2><p>Giày đá banh sân cỏ tự nhiên là loại giày được sản xuất để hỗ trợ chơi bóng trên sân cỏ thật. Bạn có thể nhận biết được giày sân cỏ tự nhiên với thiết kế có nhiều đinh cao ở dưới gầm giày. Thiết kế chuẩn của giày sân cỏ tự nhiên là có 11 đinh giày (trong đó có <i>7 đinh ở mũi giày gọi là đinh xoay</i> và <i>4 đinh ở phần gót giày gọi là đinh trụ</i>).<a href=\"https://giaydabongtot.com/blog/chon-giay-da-bong-san-co-tu-nhien/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"6 lưu ý khi chọn giày đá bóng sân cỏ tự nhiên đinh cao FG\"></a></p><p>Để chơi bóng trên sân cỏ tự nhiên thì tùy vào điều kiện mặt sân mà chúng ta sẽ sử dụng những loại đinh khác nhau. Tuy nhiên chỉ có <strong>đinh FG</strong> (Firm Ground) và <strong>SG</strong> (Soft Gound) là được sử dụng phổ biến nhất trong bóng đá chuyên nghiệp. Tuy nhiên nếu bạn đang chơi bóng trên sân cỏ tự nhiên ở Việt Nam với điều kiện mặt sân không chuyên (không đạt chuẩn) thì có thể lựa chọn thêm các loại đinh giày khác.<a href=\"https://giaydabongtot.com/blog/chon-giay-da-bong-san-co-tu-nhien/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"6 lưu ý khi chọn giày đá bóng sân cỏ tự nhiên đinh cao FG\"></a></p><p>Các loại đinh giày khác như AG, MG, HG có thiết kế đinh giày có nhiều đinh hơn nhưng vẫn hỗ trợ tốt khi chơi trên các mặt sân cỏ tự nhiên không đạt chuẩn (mặt sân ít cỏ, cùn, trơ).</p><h2>Lưu ý khi chọn giày đá bóng sân cỏ tự nhiên</h2><p>Có rất nhiều thương hiệu sản xuất giày đá bóng sân cỏ tự nhiên nổi tiếng như Nike, Adidas, Puma, Mizuno, Lotto,… Các hãng giày nổi tiếng này cũng đã phát triển nhiều dòng giày, phiên bản với chất liệu, mức giá khác nhau. Chính sự đa dạng này sẽ đưa đến cho khách hàng nhiều sự lựa chọn hơn. Tuy nhiên để có thể lựa chọn được một đôi <strong>giày bóng đá sân cỏ tự nhiên</strong> phù hợp thì bạn cần phải hiểu rõ hơn về giày. Dưới đây là một số lưu ý rất nên tham khảo khi bạn chọn <strong>mua giày đá bóng để chơi trên sân cỏ tự nhiên</strong> nhé.</p><h3>1. Chọn form và size giày phù hợp</h3><p>Giày đá banh sân cỏ tự nhiên là loại giày được thiết kế để chơi bóng đá chuyên nghiệp. Chính vì vậy form giày thường được thiết kế chuẩn với độ ôm chân rất cao (giày càng đắt tiền càng ôm chân). Chính vì vậy nếu bạn <strong>chọn mua giày bóng đá sân cỏ tự nhiên</strong> thì cần phải chú ý để lựa chọn form và size giày phù hợp. Thường thì không phải mẫu giày sân cỏ tự nhiên nào cũng có form giày giống nhau. Chính vì vậy bạn rất nên hỏi các shop bán giày bóng đá về form giày để có lựa chọn size giày phù hợp nhất.</p><h3>2. Đế giày có độ mềm dẻo vừa phải</h3><p>Khi <i>chọn mua giày đá bóng sân cỏ tự nhiên</i> thì nhiều bạn yêu cầu đế giày phải thật mềm dẻo. Tuy nhiên sự thật thì đế giày mềm dẻo quá sẽ rất không tốt trong hỗ trợ chơi bóng trên sân cỏ tự nhiên. Một đôi giày đinh cao có đế giày mềm dẻo sẽ tạo ra độ nhún kém hơn, khó hỗ trợ tăng tốc, bật nhảy hơn. Ngoài ra còn có thể gây ra chấn thương nghiêm trọng như lật cổ chân (vì đế giày mềm dẻo quá sẽ kém thăng bằng). Vậy một đôi <strong>giày sân cỏ tự nhiên tốt</strong> thì đế giày phải có độ cứng mềm vừa phải, hỗ trợ đàn hồi, bật nhảy, tạo lực chạy tốt bạn nhé.</p><h3>3. Chọn dòng giày sân cỏ tự nhiên phù hợp</h3><p>Giày đá banh sân cỏ tự nhiên rất đa dạng về mẫu mã, chủng loại. Tuy nhiên các hãng giày nổi tiếng thường phát triển các dòng giày của mình theo các định hướng cụ thể. Chính vì vậy nếu bạn hiểu về các dòng giày bóng đá của các hãng thì sẽ dễ dàng hơn khi chọn mua giày. Các hãng giày thường sẽ phân các dòng giày bóng đá thành 3 loại chính là SPEED (tốc độ), CONTROL (kiểm soát) và PROTECT (bảo vệ).<a href=\"https://giaydabongtot.com/blog/chon-giay-da-bong-san-co-tu-nhien/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"6 lưu ý khi chọn giày đá bóng sân cỏ tự nhiên đinh cao FG\"></a></p><h4>– Giày SPEED (tốc độ)</h4><p>Có rất nhiều dòng <strong>giày đá bóng tốc độ</strong> nổi tiếng thế giới như Nike Mercurial, Adidas X, Puma Ultra, Mizuno Neo,…. Đặc điểm chung của dòng giày tốc độ đó là được định hướng sản xuất để có được trọng lượng nhẹ, khả năng hỗ trợ tăng tốc, rê dắt bóng linh hoạt nhất.</p><h4>– Giày CONTROL (kiểm soát)</h4><p>Giày đá bóng hỗ trợ kiểm soát bóng là một vũ khí quan trọng trong việc kiểm soát thế trận trên sân cỏ. Chính vì vậy các hãng giày đều phát triển dòng giày sân cỏ tự nhiên kiểm soát bóng của riêng mình. Đặc điểm chung của các dòng <strong>giày kiểm soát bóng</strong> là có các vân nổi trên bề mặt để hỗ trợ tăng ma sát với bóng, giúp kiểm soát bóng dễ dàng hơn. Có các dòng giày kiểm soát bóng nổi tiếng như Nike Phantom GT, Adidas Predator, Puma Future,…</p><h4>– Giày PROTECT (bảo vệ)</h4><p>Dòng giày bóng đá bảo vệ (Protect) được phát triển để hỗ trợ khả năng chơi bóng cho các cầu thủ chơi ở vị trí phòng thủ (hậu vệ, trung vệ). Các cầu thủ ở vị trí khác ưa thích sự thoải mái và cần sự thoải mái cũng đều có thể lựa chọn giày bảo vệ. Đặc điểm chung của các dòng <strong>giày đá bóng bảo vệ</strong> là thường làm bằng chất liệu da thật rất êm mềm thoải mái và có khả năng bảo vệ tốt. Có các dòng giày bảo vệ nổi tiếng như Nike Tiempo, Adidas Copa hay Puma King,…</p><h3>4. Chọn chất liệu da giày phù hợp</h3><p>Giày sân cỏ tự nhiên thường được sản xuất bằng 3 loại chất liệu da khác nhau. Đó là chất liệu <i>da nhân tạo synthetic, da thật tự nhiên và da vải knit</i>. Với chất liệu da khác nhau thì mức giá cũng sẽ khác nhau. Do đặc tính chất liệu khác nhau nên mỗi loại da giày đá bóng sẽ có tính chất rất khác nhau. Chất liệu da thật mang đến sự êm mềm thoải mái, da vải thì rất nhẹ và thoáng khí, còn chất liệu da synthetic thì dễ sản xuất được theo ý mình. Thường thì các mẫu giày sân cỏ tự nhiên <a href=\"https://giaydabongtot.com/blog/giay-da-bong-duoi-1-trieu\"><strong>giá rẻ dưới 1 triệu đồng</strong></a> sẽ được làm bằng chất liệu da nhân tạo hoặc da vải knit. Chất liệu da thật khiến giá giày đá bóng rẻ nhất cũng phải vài triệu VNĐ. Tuy nhiên với công nghệ sản xuất cao cấp thì có những mẫu giày sân cỏ tự nhiên làm bằng da nhân tạo synthetic hoặc da vải có giá còn cao hơn cả da thật. <a href=\"https://giaydabongtot.com/blog/chon-giay-da-bong-san-co-tu-nhien/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"6 lưu ý khi chọn giày đá bóng sân cỏ tự nhiên đinh cao FG\"></a></p><h3>5. Không cần chọn giày đinh sắt SG nếu không cần thiết</h3><p>Đinh sắt SG là một loại đinh giày được sử dụng phổ biến khi chơi bóng trên sân cỏ tự nhiên. Tuy nhiên sự thật thì đinh sắt SG cũng có ưu và nhược điểm khi so sánh với <a href=\"https://giaydabongtot.com/dinh-fg\"><strong>giày đinh FG</strong></a>. Bạn chỉ nên sử dụng giày đinh sắt khi chơi trên mặt sân cỏ dày, nền sân ẩm ướt, trơn trượt. Còn không thì hãy sử dụng giày đinh FG cũng đủ để hỗ trợ chơi bóng tốt rồi. Có một nhược điểm khiến giày đinh sắt SG không phổ biến bằng giày đinh FG là do trọng lượng giày đinh sắt SG sẽ nặng hơn giày đinh FG.</p><h3>6. Chọn phiên bản giày thuộc các phân khúc khác nhau</h3><p>Để có thể phục vụ nhiều đối tượng khác hàng khác nhau thì các hãng giày thường được sản xuất nhiều phân khúc giày khác nhau. Thường giày đá banh sẽ được phân thành 3 phân khúc là <strong>Top-end</strong> (cao cấp), <strong>Mid-end</strong> (trung cấp) và <strong>Low-end</strong> (thấp cấp). Trong đó phân khúc Top-end thường được sử dụng trong bóng đá chuyên nghiệp với sự vượt trội về chất lượng và khả năng hỗ trợ chơi bóng. Trong khi đó phân khúc Mid-end và Low-end thường được sử dụng trong bóng đá không chuyên.<a href=\"https://giaydabongtot.com/blog/chon-giay-da-bong-san-co-tu-nhien/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"6 lưu ý khi chọn giày đá bóng sân cỏ tự nhiên đinh cao FG\"></a></p><blockquote><p>Xem thêm: <a href=\"https://giaydabongtot.com/blog/top-5-hang-giay-san-co-tu-nhien\"><strong>Top 5 thương hiệu sản xuất giày sân cỏ tự nhiên</strong></a></p></blockquote><h3>Cách chọn giày bóng đá sân cỏ tự nhiên cho người mới</h3><p>Chọn được một đôi giày sân cỏ tự nhiên phù hợp là cực kỳ quan trọng trong hỗ trợ chơi bóng cũng như hạn chế chấn thương. Với những bạn mới bắt đầu trải nghiệm chơi bóng trên sân cỏ tự nhiên thì rất nên tìm hiểu những kiến thức lựa chọn, sử dụng giày sân cỏ tự nhiên. 6 lưu ý khi chọn giày sân cỏ tự nhiên bên trên có thể cho bạn một cái nhìn tổng quát về cách chọn giày. Dưới đây chúng tôi sẽ cung cấp thêm thông tin <strong>hướng dẫn chọn giày đá bóng sân cỏ tự nhiên</strong> chi tiết hơn nhé.</p><h4>– Chọn giày có độ ôm chân cao, vừa vặn</h4><p>Một đôi giày đá bóng có độ ôm chân cao đóng vai trò rất quan trọng trong hỗ trợ chơi bóng cũng như hạn chế chấn thương. Đặc biệt là đối với giày sân cỏ tự nhiên để chơi bóng trên sân cỏ thật. Khi lựa chọn giày sân cỏ tự nhiên bạn cần <strong>chọn giày có độ ôm tốt</strong>, vừa vặn bàn chân từ mọi góc cạnh. Hạn chế chọn giày quá thoải mái, lỏng chân vì có thể dễ dàng gây ra chấn thương lật cổ chân khi chạy trên sân cỏ thật.</p><h4>– Cần break in giày trước khi thi đấu</h4><p>Việc chọn giày bóng đá có độ ôm chân cao sẽ mang lại nhiều lợi ích khi chơi bóng. Tuy nhiên với những mẫu giày bóng đá mới thì trước khi sử dụng để thi đấu bạn cần phải thực hiện các bước <a href=\"https://giaydabongtot.com/blog/lam-mem-giay-da-bong\"><strong>break in giày</strong></a> trước nhé. Việc break in (làm mềm, làm quen giày) trước sẽ giúp bàn chân của bạn tránh những chấn thương như <a href=\"https://giaydabongtot.com/blog/tranh-phong-rop-khi-mang-giay-da-bong\"><strong>phồng rộp bàn chân</strong></a>, xước gót chân hoặc đau 2 bên bàn chân do giày bị chật ngang.</p>', '2023-10-18 14:31:49', '2023-10-18 14:31:49'),
(6, 1, 'Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại', 'uploads/thumbnail/vVWLo5RHpkh5rhFQywFkx6sb78QCTz8bcQhfCXNk.jpg', '<h2>Các loại đế giày đá bóng phổ biến nhất</h2><p>Các hãng sản xuất giày đã thiết kế ra rất nhiều các loại đinh giày đá bóng khác nhau. Thường họ sẽ đặt tên của đinh giày dựa theo tên của loại mặt sân phù hợp sử dụng. Ví dụ đinh TF là viết tắt của <i>Turf Floor</i> (sân cỏ nhân tạo), FG là viết tắt của <i>Firm Ground</i> (sân cỏ tự nhiên)… Chính vì vậy để biết loại đinh giày đá bóng sử dụng trên mặt sân nào thì bạn chỉ cần hiểu được cái tên đó là đủ. Dưới đây chúng ta cùng tổng hợp tất cả các loại đinh giày đá banh đã xuất hiện trên thị trường nhé.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><h3>1. Đinh dăm TF (Turf Floor)</h3><p>Đinh TF là loại đinh <a href=\"https://giaydabongtot.com/giay-da-bong-san-co-nhan-tao\"><strong>giày bóng đá sân cỏ nhân tạo</strong></a> được sử dụng phổ biến nhất ở Việt Nam. Loại đinh Turf này sẽ phù hợp chơi trên các mặt sân cỏ nhân tạo đã được sử dụng nhiều năm với cỏ cùn, lì và độ xốp lớp cao su kém. Các <strong>sân cỏ nhân tạo ở Việt Nam</strong> ít khi được nâng cấp (để tiết kiệm chi phí) nên bề mặt sân bóng đá rất phù hợp với giày đinh dăm TF.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><p><strong>Ưu điểm:</strong><a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><ul><li>Thiết kế đế giày có các đinh có độ cao vừa phải nên dễ mang, dễ làm quen.</li><li>Có độ bám sân tốt với các sân cỏ nhân tạo cỏ lùn, xấu, độ lún thấp.</li><li>Có lớp đệm xốp mang lại sự êm ái khi chạy trên các nền sân cứng.</li></ul><p><strong>Nhược điểm:</strong></p><ul><li>Sẽ hơi trơn trượt nếu chơi trên mặt sân cỏ nhân tạo mới với cỏ đẹp, dài.</li><li>Đinh giày có thể bị mài mòn và bị cỏ sân nhân tạo cắt đứt sau một thời gian.</li><li>Loại giày đế TF thường có mũi giày hơi vểnh lên nên sẽ hơi khó</li></ul><h3>2. Đinh bằng IC (Indoor Court)</h3><p>Đinh IC thường được thiết kế để chơi trên mặt sân phẳng ví dụ như <strong>sàn gỗ</strong>, <strong>sân futsal</strong>, <strong>sân bê tông</strong>, <strong>đường phố</strong>,… Đây là loại giày được sử dụng khá nhiều ở miền nam Việt Nam. Giới trẻ cũng rất thích sử dụng loại giày này để <a href=\"https://giaydabongtot.com/blog/giay-vua-da-bong-vua-di-choi\"><strong>vừa đá bóng vừa đi chơi, đi học</strong></a>. Đinh IC thường có mặt sân phẳng nhưng có các đường khắc trên mặt đế để tăng độ bám sân.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><p>Giày bóng đá đinh bằng IC được thiết kế để phù hợp chơi bóng trên các mặt sân phẳng. Tuy nhiên với các sân cỏ nhân tạo có chất lượng xấu như cỏ cùn, trơ, cao su có độ xốp kém, mặt sân phẳng, lì thì bạn hoàn toàn có thể sử dụng <strong>giày đinh IC</strong> để chơi bóng. Trong điều kiện mặt sân cỏ nhân tạo xấu thì bạn sẽ không bị trơn trượt khi sử dụng đinh bằng IC để chơi bóng.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><p><strong>Ưu điểm:</strong></p><ul><li>Thiết kế đế giày vững vàng, mang lại sự chắc chắn, trụ vững khi chơi bóng.</li><li>Đế giày phẳng giúp thực hiện các kỹ thuật rê bóng, kéo bóng bằng gầm giày dễ hơn.</li><li>Đế giày thiết kế phẳng nên không phải lo lắng bị mòn đinh.</li><li>Có thể sử dụng để vừa đi học, đi chơi, đi đá bóng.</li><li>Thường có thiết kế đệm xốp, mang lại sự êm ái khi chạy trên các mặt sân cứng.</li><li>Có thể sử dụng để chơi bóng được trên mặt sân cỏ nhân tạo xấu, cỏ cùn, lì, độ lún kém.</li></ul><p><strong>Nhược điểm:</strong></p><ul><li>Dễ bị trơn trượt khi chơi bóng vào trời mưa (nếu chơi ở ngoài trời).</li><li>Nếu chơi trên sân cỏ nhân tạo loại đẹp, cỏ cao thì có độ bám sân không tốt.</li></ul><h3>3. Đinh cao FG (Firm Ground)</h3><p><a href=\"https://giaydabongtot.com/dinh-fg\"><strong>Đinh FG</strong></a> là loại đinh được sử dụng phổ biến nhất trong bóng đá chuyên nghiệp sân cỏ tự nhiên. Loại giày đinh này thường được thiết kế với 11 đinh với 7 đinh phía trước (đinh xoay) và 4 đinh phía sau (đinh trụ). Lúc nhón chân để chạy thì chủ yếu phần trước bàn chân tiếp xúc với mặt sân. 4 đinh ở gót giày hỗ trợ trong việc trụ vững, dừng bóng, xoay trở để ngoặt bóng.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><p>Với sự chuẩn hóa về các sân cỏ tự nhiên chuyên nghiệp ngày nay thì giày đinh FG đã trở thành loại giày đá bóng sân cỏ tự nhiên phổ biến nhất. Giày đinh FG rất phù hợp với bề mặt sân cỏ có độ cao cỏ vừa phải và mặt đất không được mềm nhão hoặc cứng quá. Đinh FG rất tuyệt vời khi chơi trên sân cỏ, tuy nhiên vẫn không thể đáp ứng được hoàn toàn khi gặp điều kiện thời tiết không phù hợp. Chính vì vậy sẽ có những phiên bản cải tiến của đinh FG để phù hợp chơi bóng điều kiện trời mưa, tuyết rơi, sân trơn.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><p><strong>Ưu điểm:</strong></p><ul><li>Được làm bằng nhựa tổng hợp hoặc các chất liệu nhẹ như sợi carbon nên trọng lượng rất nhẹ.</li><li>Hỗ trợ bám sân cực kỳ tốt trên bề mặt sân cỏ tự nhiên đạt chuẩn.</li><li>Giày đinh FG rất thon gọn, mũi giày vát xuống, giúp thực hiện các kỹ thuật bóng đá dễ dàng.</li></ul><p><strong>Nhược điểm:</strong></p><ul><li>Đinh giày khá cao nên không phù hợp để chơi trên sân cỏ nhân tạo.</li><li>Thiết kế đế giày không vững vàng nên nếu thi đấu trên mặt sân không phù hợp thì dễ bị chấn thương.</li></ul><h3>4. Đinh AG truyền thống (Artificial Grass)</h3><p>Đinh AG truyền thống thường được thiết kế với các đinh núm và làm bằng chất liệu nhựa tổng hợp. Loại đinh giày này có độ cao vừa phải, số lượng nhiều nên rất phù hợp để chơi trên các mặt sân cỏ nhân tạo còn mới, chất lượng tốt, có cỏ dày, đẹp và cao su có độ xốp tốt. Việc sử dụng đinh AG sẽ tăng độ bám sân trên các mặt <strong>sân cỏ nhân tạo đẹp</strong>. Tuy nhiên việc chơi đinh AG trên mặt sân cỏ nhân tạo cùn, chất lượng kém sẽ khó khăn hơn.</p><p><strong>Ưu điểm:</strong><a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><ul><li>Đinh giày có độ cao vừa phải, số lượng đinh nhiều nên rất dễ làm quen sử dụng.</li><li>Đây là loại giày đinh cao phù hợp nhất để chơi trên sân cỏ nhân tạo ở Việt Nam.</li><li>Thiết kế form giày đẹp mắt, thon gọn tiệm cận với giày đinh FG.</li><li>Mang lại cảm giác tự tin hơn khi chơi bóng trên sân cỏ nhân tạo.</li><li>Hỗ trợ bám sân rất tốt kể cả trong những ngày trời mưa sân ướt.</li></ul><p><strong>Nhược điểm:</strong></p><ul><li>Nếu sử dụng trên sân cỏ nhân tạo cùn, trơ, cỏ ngắn thì có thể sẽ hơi đau chân.</li><li>Dễ gây chấn thương lật cổ chân nếu sử dụng để chơi bóng trên sân cỏ nhân tạo xấu.</li><li>Không phổ biến như đinh TF nên sẽ ít lựa chọn hơn khi mua giày.</li></ul><h3>5. Đinh AG-Pro (Đinh AG cải tiến)</h3><p>Đinh AG-Pro là thiết kế đinh AG nhưng đã được cải tiến của Nike. So với đinh AG truyền thống thì <i>đinh AG-Pro</i> có cao hơn một tí và ít đinh hơn. Điều này cho phép loại đinh này chơi được trên 2 loại mặt sân là <strong>sân cỏ tự nhiên</strong> và <strong>sân cỏ nhân tạo</strong> loại đẹp. Đinh AG-Pro cũng có thể gọi là đinh MG (Multi Ground) vì hỗ trợ chơi trên nhiều mặt sân khác nhau.</p><p><strong>Ưu điểm:</strong><a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></p><ul><li>Hỗ trợ chơi trên cả sân cỏ tự nhiên và sân cỏ nhân tạo.</li><li>Được làm bằng nhựa tổng hợp hoặc các chất liệu nhẹ như sợi carbon nên trọng lượng rất nhẹ.</li><li>Form rất thon gọn, mũi giày vát xuống, giúp thực hiện các kỹ thuật bóng đá dễ dàng.</li></ul><p><strong>Nhược điểm:</strong></p><ul><li>Đinh giày khá cao nên nếu không quen thì có thể sẽ đau chân khi sử dụng.</li><li>Thiết kế đế giày không vững vàng nên nếu thi đấu trên mặt sân không phù hợp thì dễ bị chấn thương.</li><li><strong>Lời kết</strong>: Trên đây #<a href=\"https://giaydabongtot.com/\"><strong>GĐBT</strong></a> đã tổng hợp và giới thiệu các loại đế giày đá bóng. Việc chọn được loại đinh giày đá banh phù hợp là rất quan trọng trong việc giúp bạn <a href=\"https://giaydabongtot.com/ky-thuat-choi-bong/cach-da-bong-gioi\"><strong>chơi bóng giỏi hơn</strong></a>. Hy vọng những thông tin chúng tôi cung cấp trong bài viết sẽ hữu ích cho bạn. Nếu còn bất kỳ thắc mắc, câu hỏi nào khác, vui lòng liên hệ hoặc để lại bình luận bên dưới chúng tôi sẽ giải đáp ngay nhé.<a href=\"https://giaydabongtot.com/blog/dinh-giay-da-bong/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các Loại Đinh Giày Đá Bóng | Ưu Nhược Điểm Từng Loại\"></a></li></ul>', '2023-10-18 14:33:46', '2023-10-18 14:33:46'),
(7, 3, 'Các đội bóng vô địch Seagame | Thành tích đội tuyển Việt Nam', 'uploads/thumbnail/zVzgBZurr6W7oBDyNAbmxyas17BybQOGiVrzhNIX.jpg', '<h2>Các đội bóng vô địch Seagame</h2><p>Khi nhắc đến Seagame thì bộ môn thể thao mà nhiều người tìm hiểu nhất chính là bóng đá nam. Kể từ khi được tổ chức lần đầu vào năm 1959 thì chỉ mới có 5 đội tuyển bóng đá nam đã từng vô địch Seagame. Trong đó dẫn đầu là Thái Lan với 16 lần. Đội tuyển Việt Nam đã vô địch bóng đá nam Seagame 2 lần (vào năm <strong>1959</strong> và <strong>2019</strong>). Như vậy để có được chức vô địch Seagame bóng đá nam năm 2019 thì chúng ta đã phải chờ đợi khoảng 60 năm.<a href=\"https://giaydabongtot.com/doi-bong/cac-doi-bong-vo-dich-seagame/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các đội bóng vô địch Seagame | Thành tích đội tuyển Việt Nam\"></a></p><h3>– Thái Lan thống trị Seagame (16 lần vô địch)</h3><p>Với 16 lần giành được chức vô địch thì <strong>đội tuyển bóng đá nam của Thái Lan</strong> đã thể hiện được sự thống trị hoàn toàn tại Seagame. Ngoài 16 huy chương vàng thì đội tuyển bóng đá xứ chùa vàng cũng giành được 4 huy chương bạc và 5 huy chương đồng. Đội tuyển Việt Nam đã rất khó khăn mới vượt qua được cái bóng của Thái Lan và giành chức vô địch lịch sử tại Seagame 30 vừa qua.<a href=\"https://giaydabongtot.com/doi-bong/cac-doi-bong-vo-dich-seagame/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Các đội bóng vô địch Seagame | Thành tích đội tuyển Việt Nam\"></a></p><p>Mặc dù thành tích của đội tuyển Thái Lan là rất khó để san bằng và phải rất lâu nữa mới có thể đuổi kịp được. Tuy nhiên hy vọng từ chức vô địch Seagame 30 đội tuyển bóng đá nam Việt Nam sẽ mở ra một thời kỳ mới và vượt mặt Thái Lan trong những giải đấu sắp tới.</p><h3>– Malaysia đối thủ đáng gờm (6 lần vô địch)</h3><p>Đội tuyển bóng đá nam Malaysia được mệnh danh là những <strong>con hổ của Đông Nam Á</strong>. Đội bóng này có thế mạnh về thể lực và sức mạnh vượt trội giúp họ trở thành một đối thủ khó chịu tại các kỳ Seagame. Malaysia cũng là một trong những đội bóng đá nam đầu tiên tham gia vào Seagame vào những ngày đầu thành lập.</p><p>Khi gặp Malaysia thì kể cả Thái Lan hay Việt Nam của chúng ta cũng rất phải e dè. Đặc biệt là nếu phải đối đấu với những con hổ Malaysia tại <strong>chảo lửa Bukit Jalil</strong> thì không dễ dàng để có thể giành được chiến thắng. Tuy nhiên với vị thế của đội tuyển bóng đá nam Việt Nam hiện nay thì việc đối đầu và vượt qua Malaysia không phải là điều quá khó.</p><h3>– Myanmar lối chơi rắn (5 lần vô địch)</h3><p>Đội tuyển bóng đá nam Myanmar luôn là một đối thủ khó chịu tại các kỳ Seagame. Với <strong>lối chơi rắn</strong>, tranh chấp mạnh, không ngại va chạm thì đội tuyển Myanmar gây rất nhiều khó khăn cho các đội tuyển có lối đá ký thuật như Thái Lan hay Việt Nam. Chính vì vậy đối đầu và vượt qua Myanmar không phải là một bài toàn dễ giải.</p><p>Với 5 lần giành chức vô địch Seagame thì Myanmar cũng đã thể hiện được sức mạnh của mình. Tuy nhiên đó là trong quá khứ còn ở hiện tại thì Myanmar không phải là một đội bóng quá mạnh. Đội tuyển Việt Nam với thể hình thể lực được cải thiện rất tốt thì đã không còn ngán gì lối đá rắn của Myanmar. Chúng ta vẫn tự tin về đội tuyển của mình sẽ vượt qua đối thủ khó chịu Myanmar này trong những lần gặp mặt.</p><h3>– Việt Nam rồng vàng Đông Nam Á (2 lần vô địch)</h3><p>Đội tuyển Việt Nam tham gia thi đấu môn bóng đá nam Seagame rất muộn. Chúng ta tham gia giải đấu này vào thời kỳ hoàng kim của Thái Lan và liên tục phải giữ vị trí Á quân chứ không thể vô địch. Tuy nhiên trong lịch sử đội tuyển Việt Nam cũng đã vô địch một lần vào năm 1959 (với đội hình của Việt Nam cộng hòa). Như vậy nếu bạn đang thắc mắc với câu hỏi đội tuyển <strong>Việt Nam vô địch Seagame bao giờ chưa</strong>? <strong>Việt Nam vô địch Seagame bao nhiêu lần</strong>? Thì câu trả lời là chúng ta đã có 2 chức vô địch vào năm 1959 và 2019 nhé.</p><p>Năm 2019, tại kỳ <a href=\"https://giaydabongtot.com/blog/giay-da-bong-cua-u22-viet-nam-seagame-30\"><strong>Seagame 30</strong></a> đội tuyển Việt Nam đã chính thức giành được chức vô địch Seagame đầy thuyết phục. Đội tuyển của chúng ta đã có sự tiến bộ thần tốc và với sự dẫn dắt của huấn luyện viên tài ba <strong>Park Hang-seo</strong> thì Việt Nam đã không còn e sợ Thái Lan nữa. Kể từ đây đội tuyển của chúng ta sẽ thi đấu tại Seagame với mục tiêu cao nhất là chức vô địch cũng như vươn mình ra những giải đấu lớn trên thế giới.</p><h3>– Indonesia đất nước vạn đảo (2 lần vô địch)</h3><p>Indonesia là một đội bóng khá tại Đông Nam Á. Đội tuyển bóng đá nam của nước này đã giành được chức vô địch Seagame 2 lần cũng như 5 chiếc huy chương bạc và 4 huy chương đồng. Với thành tích rất tốt trong quá khứ và hiện tại thì đội bóng đến từ đất nước vạn đảo vẫn luôn là một đối thủ đáng gờm tại các kỳ Seagame.</p><h2>Các đội bóng vô địch Seagame qua các năm</h2><p>Trên đây là bài viết tổng hợp về <i>các đội bóng vô địch Seagame cũng như thành tích của đội tuyển Việt Nam</i>&nbsp;mà <strong>Giaydabongtot.com™</strong> đã tổng hợp được. Nếu bạn cũng yêu thích về giày mà muốn chia sẻ, tìm hiểu về giày đá banh thì hãy cùng tham gia và xây dựng group <a href=\"https://www.facebook.com/groups/nghiengiaydabong\"><strong>Nghiện Giày Đá Bóng</strong></a> cùng chúng tôi nhé. Bạn cũng có thể xem thêm những bài viết mới rất hay về giày đá banh được cập liên tục <a href=\"https://giaydabongtot.com/category/blog\"><strong>tại đây</strong></a>.</p>', '2023-10-18 14:35:02', '2023-10-18 14:35:02'),
(8, 2, 'Giày Đá Bóng Bị Chật Mũi, Chật Ngang phải làm sao?', 'uploads/thumbnail/IUdNsXYLvpYMGO01QGrd5u6i7MbwVrQEkWFYZHIV.jpg', '<h2>Tác hại khi mang giày đá bóng bị chật</h2><p>Bóng đá là môn thể thao có cường độ vận động cao. Chính vì vậy việc mang giày bóng đá bị chật để chơi bóng sẽ rất dễ gây tổn thương cho bàn chân của bạn. Khi mang giày bóng đá bị chật thì sẽ có 3 trường hợp là bị chật mũi, bị chật ngang và bị chật gót. Dưới đây chúng ta cùng tìm hiểu về các vấn đề gặp phải khi mang giày bóng đá bị chật mũi, bị chật ngang và bị chật gót nhé.<a href=\"https://giaydabongtot.com/blog/giay-da-bong-bi-chat/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Bị Chật Mũi, Chật Ngang phải làm sao?\"></a></p><h2>Giày đá bóng bị chật mũi</h2><p>Vấn đề giày bóng đá bị chật mũi thường gặp phải khi bạn <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>chọn size giày đá banh</strong></a> quá ngắn so với chiều dài bàn chân. Điều này dẫn đến khi xỏ chân vào giày bóng đá thì sẽ khiến đầu mũi ngón chân bị chạm, bị cộm cứng vào thành giày hoặc bị cong ngón chân (không duỗi thoải mái được).<a href=\"https://giaydabongtot.com/blog/giay-da-bong-bi-chat/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Bị Chật Mũi, Chật Ngang phải làm sao?\"></a></p><p>Bởi vì giày bóng đá thường có thiết kế ôm chân, vừa khít. Hơn nữa anh em chơi bóng đá cũng thích mang giày có size giày vừa vặn. Chính vì vậy tình trạng mang giày đá bóng bị chật mũi rất dễ xảy ra.</p><p>Để nhận biết được đôi giày đá banh có bị chật mũi không thì hãy xỏ giày vào chân. Sau đó hãy đứng lên và cúi người xuống, sử dụng ngón tay để ấn vào mũi giày để sờ ngón chân dài nhất (lưu ý cần đứng lên để bàn chân ở vào trạng thái sử dụng tự nhiên nhất).<a href=\"https://giaydabongtot.com/blog/giay-da-bong-bi-chat/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Bị Chật Mũi, Chật Ngang phải làm sao?\"></a></p><p><strong>Khi sờ ngón tay vào mũi giày thì sẽ có các trường hợp dưới đây:</strong></p><ul><li><strong>Trường hợp 1</strong>: Sờ thấy ngón chân dài nhất cộm cứng, làm căng phần da mũi giày, ngón chân cảm giác hơi bị gập lại khi đứng =&gt; Trường hợp này <strong>bị chật mũi rất mạnh</strong>.</li><li><strong>Trường hợp 2</strong>: Sờ thấy ngón chân dài nhất cộm cứng lên, làm căng nhẹ phần da mũi giày, ngón chân không bị gập lại =&gt; Trường hợp này có thể gọi là <strong>bị chật mũi nhẹ</strong>.</li><li><strong>Trường hợp 3</strong>: Cần ấn ngón tay xuống một tí mới sờ thấy ngón chân dài nhất, đầu mũi ngón chân dài nhất không bị cộm cứng, chạm vào thành mũi giày =&gt; Trường hợp này là <strong>không bị chật mũi</strong>.</li></ul><p><strong>Lưu ý</strong>: Mỗi người sẽ có khả năng mang giày bóng đá với độ chật khác nhau. <strong>Ví dụ</strong>: nếu bạn ít chơi bóng đá, chủ yếu chơi dưỡng sinh nhẹ nhàng thì khi mang giày bóng đá bị chật mũi nhẹ (trường hợp 2) là đã có thể gặp vấn đề bị tụ máu, bầm tím móng chân, thối móng rồi. Tuy nhiên với các cầu thủ chuyên nghiệp, bán chuyên đã quen mang giày đá banh chật thì họ có thể mang giày bị chật ở mức độ chật mũi cao mà không hề gặp vấn đề đau mũi ngón chân, tụ máu, bầm tím móng chân,…</p><p>Chính vì vậy để tránh chọn mua phải đôi giày bóng đá bị chật mũi thì bạn cần xác định xem mình quen mang giày đá banh chật mức độ nào. Nếu như bạn không quen mang giày đá bóng bị chật thì hãy chú ý chọn size giày theo hướng dẫn ở <strong>Trường hợp 3</strong> bên trên là vừa nhé.</p><h3>Tác hại khi mang giày đá banh chật mũi</h3><p>Khi mang giày bóng đá chật mũi sẽ gây ra tác động xấu trực tiếp đến các ngón chân của bạn (thường là ngón chân dài nhất). Tác hại khi mang giày bóng đá bị chật mũi sẽ tùy thuộc vào mức độ chật mũi cũng như thời gian bị tác động.</p><p>Nếu bạn bị chật mũi ở mức độ cao (đến mức gập cong các ngón chân) thì nếu cố gắng sử dụng sẽ khiến các mũi ngón chân của bạn bị tổn thương. Các phần móng chân sẽ liên tục chịu áp lực từ da mũi giày, gây tổn thương, tụ máu, bầm tím đầu ngón chân, dẫn tới bị thối móng chân. Ở trường hợp này không chỉ mỗ ngón dài nhất mà sẽ có nhiều ngón chân bị tổn thương.</p><p>&nbsp;</p><p>Với trường hợp bị chật mũi nhẹ hơn (các ngón chân không bị gập cong nhưng mũi ngón chân bị cộm cứng) thì ngón chân dài nhất sẽ bị tổn thương. Mức độ tổn thương gặp phải cũng là tụ máu, bầm tím đầu ngón chân, dẫn tới bị thối móng.<a href=\"https://giaydabongtot.com/blog/giay-da-bong-bi-chat/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Bị Chật Mũi, Chật Ngang phải làm sao?\"></a></p><p>Mức độ tổn thương ngón chân khi mang giày đá banh bị chật mũi cũng phụ thuộc vào thời gian bị tổn thương. Nếu bạn phát hiện đôi giày bị chật mũi sớm và không mang để chơi bóng nữa thì ngón chân sẽ không bị tổn thương. Còn nếu như bạn vẫn cố gắng sử dụng đôi giày đá banh bị chật mũi càng lâu thì càng khiến phần mũi ngón chân sẽ bị tổn thương mạnh.</p><h3>Cách khắc phục giày bóng đá bị chật mũi</h3><p>Việc khắc phục giày đá bóng bị chật mũi là rất khó khăn. Nguyên nhân là chiều dài của đôi giày không thể tăng lên sau quá trình chơi bóng.</p><p>Với trường hợp đôi giày bóng đá chỉ bị chật mũi nhẹ (đầu mũi ngón chân không bị cộm cứng). Bạn hãy thử bỏ lót giày ra để kiểm tra độ thoải mái của ngón chân. Việc bỏ lót khiến form giày rộng ra khá nhiều và nếu chỉ chật nhẹ ở mũi ngón chân thì sẽ thấy thoải mái hơn. Việc bỏ lót giày sẽ chỉ là tạm thời, sau khi đã quen với giày thì hãy lắp lót vào lại bình thường.</p><h4>– Tập cách làm quen giày đá bóng</h4><p>Làm quen với giày đá bóng mới là một việc rất quan trọng. Việc này sẽ giúp bàn chân bạn tập làm quen với đôi giày đá banh mới một cách từ từ. Sau khi trải qua quá trình làm mềm (thuần hóa) một cách từ từ thì đôi giày bóng đá của bạn sẽ thoải mái hơn và không còn bị chật ngang nữa. Hãy tham khảo ngay các bước làm quen, làm mềm, break in giày bóng đá được hướng dẫn chi tiết trong <a href=\"https://giaydabongtot.com/blog/lam-mem-giay-da-bong-moi-break-in\"><strong>bài viết này</strong></a>.<a href=\"https://giaydabongtot.com/blog/giay-da-bong-bi-chat/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Bị Chật Mũi, Chật Ngang phải làm sao?\"></a></p><p><i><strong>Lời kết</strong>: Trên đây #</i><a href=\"https://giaydabongtot.com/\"><i><strong>GĐBT</strong></i></a><i> đã phân tích và giải đáp nguyên nhân, tác hại cũng như cách khắc phục khi mang giày bóng đá bị chật mũi, chật ngang. Hy vọng những thông tin chúng tôi cung cấp sẽ hữu ích với bạn. Nếu còn bất kỳ thắc mắc, câu hỏi nào khác, vui lòng liên hệ hoặc để lại bình luận ngay bên dưới chúng tôi sẽ giải đáp ngay nhé.</i></p>', '2023-10-18 14:36:44', '2023-10-18 14:37:58');
INSERT INTO `posts` (`id`, `post_type_id`, `title`, `thumbnail`, `content`, `created_at`, `updated_at`) VALUES
(9, 3, 'Câu lạc bộ bóng đá Hoàng Anh Gia Lai | Học viện HAGL – JMG', 'uploads/thumbnail/EZw3xHmKFmSiSN50n8EKyr3Pyynb1G88T2Edzt0N.jpg', '<h2>Lịch sử hình thành câu lạc bộ Hoàng Anh Gia Lai</h2><p>Câu lạc bộ bóng đá Hoàng Anh Gia Lai chính thức có được tên tuổi của mình khi có sự tài trợ của tập đoàn Hoàng Anh Gia Lai của ông Đoàn Nguyên Đức vào khoảng năm 2001. Với tiềm lực tài chính mạnh mẽ thì ông Đoàn Nguyên Đức đã gây sửng sốt khi chiêu mộ thành công huyền thoại của đội tuyển Thái Lan là Kiatisuk và chính thức lên hạng chỉ 1 năm sau đó. Kể từ 2002 thì Hoàng Anh Gia Lai chính thức trở thành CLB bóng đá chuyên nghiệp đầu tiên của Việt Nam.<a href=\"https://giaydabongtot.com/doi-bong/cau-lac-bo-bong-da-hoang-anh-gia-lai/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Câu lạc bộ bóng đá Hoàng Anh Gia Lai | Học viện HAGL - JMG\"></a></p><p>Câu lạc bộ bóng đá Hoàng Anh Gia Lai là CLB bóng đá chuyên nghiệp đầu tiên của Việt Nam</p><h3>Đội hình hiện tại Hoàng Anh Gia Lai</h3><p><i>Tính đến giai đoạn 1 mùa giải&nbsp;V.League 2020</i></p><p>Lưu ý: Đội hình của câu lạc bộ Hoàng Anh Gia Lai sẽ liên tục thay đổi sau các kỳ chuyển nhượng.</p><figure class=\"table\"><table><tbody><tr><td><figure class=\"table\"><table><tbody><tr><th>Số&nbsp;áo</th><th>&nbsp;</th><th>Vị&nbsp;trí</th><th>Cầu&nbsp;thủ</th></tr><tr><th>1</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TM</th><th>Trần Bửu Ngọc</th></tr><tr><th>3</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>HV</th><th>Nguyễn Hữu Anh Tài</th></tr><tr><th>6</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Lương Xuân Trường&nbsp;(Đội phó)</th></tr><tr><th>7</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Nguyễn Phong Hồng Duy</th></tr><tr><th>8</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Trần Minh Vương</th></tr><tr><th>9</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TĐ</th><th>Nguyễn Văn Toàn</th></tr><tr><th>11</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Nguyễn Tuấn Anh&nbsp;(Đội trưởng)</th></tr><tr><th>15</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>HV</th><th>Trương Trọng Sáng</th></tr><tr><th>16</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Trần Thanh Sơn</th></tr><tr><th>17</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Vũ Văn Thanh</th></tr><tr><th>18</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Hoàng Thanh Tùng</th></tr></tbody></table></figure></td><td>&nbsp;</td><td><figure class=\"table\"><table><tbody><tr><th>Số&nbsp;áo</th><th>&nbsp;</th><th>Vị&nbsp;trí</th><th>Cầu&nbsp;thủ</th></tr><tr><th>21</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Nguyễn Kiên Quyết</th></tr><tr><th>20</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TĐ</th><th>Tạ Thái Học</th></tr><tr><th>21</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Lương Hoàng Nam</th></tr><tr><th>22</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Phan Thanh Hậu</th></tr><tr><th>24</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Châu Ngọc Quang</th></tr><tr><th>25</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>HV</th><th>Phạm Hữu Nghĩa</th></tr><tr><th>68</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TM</th><th>Lê Văn Trường</th></tr><tr><th>71</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>HV</th><th>A Hoàng</th></tr><tr><th>68</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>HV</th><th>Dụng Quang Nho</th></tr><tr><th>91</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TĐ</th><th>Nguyễn Văn Anh</th></tr><tr><th>97</th><th><a href=\"https://vi.wikipedia.org/wiki/Vi%E1%BB%87t_Nam\"><img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/2/21/Flag_of_Vietnam.svg/23px-Flag_of_Vietnam.svg.png\" alt=\"Việt Nam\"></a></th><th>TV</th><th>Triệu Việt Hưng</th></tr></tbody></table></figure></td></tr></tbody></table></figure><h3>Học viện bóng đá Hoàng Anh Gia Lai – Arsenal JMG</h3><p>Không chỉ gây sửng sốt về việc đầu tư mạnh cho đội hình chính thức. Hoàng Anh Gia Lai cũng có chiến lược lâu dài khi xây dựng học viện đào tạo bóng đá có tên là HAGL – Arsenal JMG. Đây cũng là một trong những học viện bóng đá đầu tiên đã tạo nên nền móng cho thành công của đội tuyển Việt Nam từ những năm 2018.</p><p>Học viện HAGL – Arsenal JMG là sự hợp tác toàn diện giữa CLB Hoàng Anh Gia Lai và CLB Arsenal danh tiếng. Với sự giúp đỡ của Arsenal thì HAGL đã xây dựng cho mình một trường đào tạo đạt tiêu chuẩn quốc tế. Học viện HAGL – Arsenal JMG được khởi công xây dựng vào 5/3/2007 với diện tích 5 hecta cách thành phố Pleiku 13km. Với quyết tâm lớn thì chỉ sau 7 tháng, học viện đã hoàn thành và đi vào hoạt động chính thức.</p><h3>Tuyển sinh học viện bóng đá HAGL JMG</h3><p>Với sự nổi tiếng về chất lượng đào tạo và cơ hội lớn dành cho các em có năng khiếu thì chương trình tuyển sinh của học viện bóng đá Hoàng Anh Gia Lai JMG luôn được quan tâm. Học viện HAGL JMG thường sẽ tuyển sinh với tần suất 2 năm 1 lần để chọn ra những tài năng bóng đá trẻ trên toàn quốc. Thường các đợt tuyển sinh của học viện bóng đá này sẽ được tổ chức vào cuối tháng 6 hàng năm. Năm 2019 đợt tuyển sinh thứ 5 của HAGL JMG được tổ chức tại sân vận động Pleiku (Gia Lai).</p><p>Lịch tuyển sinh đào tạo bóng đá trẻ Hoàng Anh Gia Lai JMG</p><p>Như vậy vào năm 2021 sẽ có một đợt tuyển sinh mới của HAGL JMG. Tuy nhiên với độ cạnh tranh cực kỳ cao thì các em cần cố gắng mọi mặt để có thể trúng tuyển. Năm 2007 trong số 7000 thì sinh chỉ có 16 người trúng tuyển. Năm 2009, từ 9.991 thí sinh chỉ chọn được 10 em đến từ 21 tỉnh thành. Để đăng ký <strong>thi tuyển tại học viện bóng đá hoàng anh gia lai JMG</strong>, các em cần chuẩn bị trước sức khỏe, tinh thần cũng như các kỹ năng để thi vòng tuyển chọn. Việc chuẩn bị tốt các phụ kiện bóng đá như <a href=\"https://giaydabongtot.com/giay-da-bong-san-co-nhan-tao\"><strong>giày đá bóng</strong></a>, quần áo bóng đá cùng các phụ kiện khác cũng giúp các em tự tin hơn nhé.</p><p>Vượt qua vòng tuyển chọn của học viện Hoàng Anh Gia Lai JMG thì sẽ có một tương lai sáng cho các tài năng trẻ bóng đá</p><h3>Cơ sở vật chất học viện HAGL JMG</h3><p>Khuôn viên học viện bóng đá HAGL JMG được bố trí với 10 sân bóng cỏ mịn đạt tiêu chuẩn quốc tế. Mặt sân luôn được chăm sóc kỹ lưỡng để đạt độ phẳng tối ưu với đội ngũ rất nhiều công nhân chăm sóc cỏ. Ngoài ra học viện còn có 5 sân tập chính ngoài trời cùng với một sân tập có mái che và các công trình phụ trợ để hỗ trợ tập luyện sinh hoạt.</p><p>Trong khuôn viên học viện sẽ có 6 khu nhà với các tiện ích như hồ bơi, phòng xông hơi, phòng gym, sân tennis,… Các dãy nhà các học viên ở thường được thiết kế hướng thẳng ra các sân bóng để nâng cao tinh thần tập luyện chăm chỉ và rèn luyện để thành tài cho các em. Việc ăn ngủ của các em sẽ được các bảo mẫu ở học viện chăm sóc đầy đủ, chu đáo để tập trung hoàn toàn cho việc tập luyện và học tập.</p><h3>Cách thức đào tạo</h3><p>Ở học viện Hoàng Anh Gia Lai JMG thì các cầu thủ không chỉ được đào tạo chơi bóng mà còn được đào tạo văn hóa một cách bài bản. Ông Đoàn Nguyên Đức muốn tạo ra những thế hệ cầu thủ vừa có tài vừa có đức cho nước nhà. Song song với quá trình tập luyện bóng đá là những giờ học văn hóa, ngoại ngữ. Học viện sẽ chi toàn bộ chi phí đào tạo, sinh hoạt, ăn uống của cầu thủ ở vào khoảng 400tr VNĐ / em / năm.</p><p>Việc trúng tuyển vào học viện sẽ cần các em nổ lực rất nhiều để có thể tỏa sáng và giành các suất thi đấu chính thức. Với các đào tạo bài bản và đầu tư của HAGL JMG thì các em sẽ có cơ hội lớn nhất để phát triển tài năng của mình trong bóng đá chuyên nghiệp.</p><h3>Các học viên nổi bật của học viện</h3><p>Với việc đầu tư lâu dài và không tiếc tiền của thì ông Đoàn Nguyên Đức đã tạo ra thế hệ vàng cho bóng đá Việt Nam. Có rất nhiều các cầu thủ Hoàng Anh Gia Lai đã được đôn lên đội tuyển quốc gia và trở thành trụ cột đóng vai trò rất lớn trong những thành tích tuyệt vời của đội tuyển những năm gần đây.</p>', '2023-10-18 14:39:08', '2023-10-18 14:39:08'),
(10, 3, 'Đội hình bóng đá Brazil mạnh nhất | Có cả các huyền thoại', 'uploads/thumbnail/9hwzc2sfHdOqIXAAnozMVq0JImafaUiWzFqetM5q.jpg', '<h2>Đội hình Brazil mạnh nhất</h2><p>Trải qua các thời kỳ thăng trầm trong cùng với lịch sử bóng đá thì <strong>đội tuyển Brazil</strong> luôn được xem là một đội bóng rất mạnh. Bởi vì bóng đá thế giới ở mỗi thời kỳ khác nhau lại rất khác nhau. Nhiều chục năm trước Brazil luôn rất mạnh với những cá nhân thi đấu với kỹ thuật cá nhân điêu luyện. Tuy nhiên bóng đá hiện đại đã thay đổi với lối đá, chiến thuật hết sức chặt chẽ. Chính vì vậy sự xuất sắc của cá nhân là chưa đủ để có được thành công tại các giải đấu lớn.<a href=\"https://giaydabongtot.com/blog/doi-hinh-brazil-manh-nhat/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Đội hình bóng đá Brazil mạnh nhất | Có cả các huyền thoại\"></a></p><p>Brazil là một đội tuyển bóng đá sản sinh ra rất nhiều huyền thoại nổi tiếng</p><p>Tuy nhiên với sự kết hợp của những cá nhân xuất chúng trong lịch sử Brazil sẽ tạo nên một đội hình rất mạnh từ mọi vị trí. Nổi bật trong số đó là những cầu thủ <strong>huyền thoại bóng đá Brazil</strong> như Pele, Ronaldo De Lima, Ronaldinho, Cafu, Roberto Carlos,… 5 huyền thoại này kết hợp với những vị trí mạnh nhất của đội tuyển Brazil mọi thời đại sẽ tạo nên một đội hình hoàn hảo. Dưới đây là <strong>đội hình bóng đá Brazil mạnh nhất</strong> mọi thời đại do chúng tôi tổng hợp nhé. Đội hình này được tổng hợp với sự tham khảo ý kiến của các chuyên gia bóng đá thế giới trên mạng internet.</p><p>– Thủ môn Claudio Taffarel</p><p>– Hậu vệ cánh trái Roberto Carlos (125 trận đấu, 11 bàn thắng)</p><p>– Trung vệ Lucio</p><p>– Trung vệ Aldair</p><p>– Hậu vệ cánh phải Cafu</p><p>– Tiền vệ trụ Socrates (63 trận đấu, 25 bàn thắng)</p><p>– Tiền vệ cánh trái Ronaldinho (97 trận đấu, 33 bàn thắng)</p><p>– Tiền vệ hộ công Zico (72 trận đấu, 52 bàn thắng)</p><p>– Tiền vệ cánh phải Mané Garrincha (50 trận đấu, 12 bàn thắng)</p><p>– Tiền đạo Pele (92 trận đấu, 77 bàn thắng)</p><p>– Tiền đạo Ronaldo De Lima (97 trận đấu, 62 bàn thắng)</p><p>Ở mỗi thời kỳ Brazil đều luôn có những ngôi sao bóng đá cực kỳ xuất sắc. Có thể kể đến những cái tên như Neymar Jr, Kaka, thủ môn Dida, Rivaldo,… Tuy nhiên xét ở mức độ đóng góp cho đội tuyển quốc gia, thành tích đạt được cùng đội tuyển quốc gia thì chúng tôi quyết định lựa chọn những huyền thoại khác.</p><h3>Đội hình đội tuyển bóng đá quốc gia Brazil 2021</h3><p>Năm 2021 thì đội hình <strong>đội tuyển bóng đá quốc gia Brazil</strong> được đánh giá là rất mạnh với sự góp mặt của những ngôi sao trẻ sáng giá và những cầu thủ già dặn kinh nghiệm. Những ngôi sao trẻ có thể tỏa sáng bất cứ lúc nào như <i>Neymar, Gabrial Jesus, Richarlison</i>… Cùng với đó là những ngôi sao có đầy kinh nghiệm chơi bóng đỉnh cao như <i>Dani Alves, Thiago Silva, Marquinhos, Eder Militao</i>,… sẽ bù đắp hỗ trợ cho đàn em. Rõ ràng là Brazil vẫn luôn là một đội tuyển rất mạnh mà bất cứ đội bóng nào cũng phải dè chừng khi đối mặt.</p><p><strong>– Thủ môn: </strong>Alisson, Weverton, Ederson</p><p>– <strong>Hậu vệ:&nbsp;</strong>Dani Alves, Danilo, Alex Sandro, Renan Lodi, Thiago Silva, Marquinhos, Eder Militao, Felipe</p><p>– <strong>Tiền vệ:&nbsp;</strong>Casemiro, Fabinho, Guimaraes, Arthur, Coutinho, Ribeiro, Henrique, Everton Soares</p><p>– <strong>Tiền đạo:&nbsp;</strong>Neymar, Gabriel Jesus, Richarlison, Firmino, Gabigol</p><h3>Đội hình Brazil 2002 (Tham dự World Cup)</h3><p>Đội hình năm 2002 của Brazil được đánh giá là cực kỳ mạnh với rất nhiều những huyền thoại nổi tiếng thế giới. Nếu bạn đang xây dựng một đội bóng gồm các huyền thoại mạnh nhất của Brazil cho tựa game Fifa Online 4 thì chắc chắn nên tham khảo đội hình Brazil năm 2002. Với sức mạnh vượt trội thì không việc Brazil vô địch Worldcup 2002 là điều không thể tránh khỏi. <strong>Đội hình Brazil 2002</strong> với những vũ công samba thi đấu một cách đẹp mắt và sức mạnh vượt trội đã khiến người hâm mộ trên toàn thế giới rất yêu thích đội tuyển này.</p><p>Dưới đây là đội hình các cầu thủ Brazil tham dự Worldcup 2002. Kèm với đó là thông tin năm sinh của cầu thủ cũng như CLB bóng đá mà các cầu thủ này đang chơi.</p><p>1. Cafu (1973, Palmeiras)</p><p>2. Cafu (1970, AS Roma)</p><p>3. Lucio (1978, Leverkusen)</p><p>4. Roque Junior (1976, AC Milan)</p><p>5. Edmilson (1976, Lyon)</p><p>6. Roberto Carlos (1973, Real Madrid)</p><p>7. Ricardinho (1976, Corinthians)</p><p>8. Gilberto Silva (1976, Atletico Mineiro)</p><p>9. Ronaldo (1976, Inter Milan)</p><p>10. Rivaldo (1972, Barca)</p><p>11. Ronaldinho (1980, PSG)</p><p>12. Dida (1973, Corinthians)</p><p>13. Juliano Belletti (1976, Sao Paulo)</p><p>14. Anderson Polga (1979, Gremio)</p><p>15. Kleberson (1979, Atletico Paranaense)</p><p>16. Junior (1973, Parma)</p><p>17. Denilson (1977, Betis)</p><p>18. Vampeta (1974, Corinthians)</p><p>19. Juninho Paulista (1973, Flamengo)</p><p>20. Edilson (1971, Cruzeiro)</p><p>21. Luizao (1975, Gremio)</p><p>22. Rogerio Ceni (1973, Sao Paulo)</p><p>23. Kaka (1982, Sao Paulo)</p><blockquote><p>Bạn có đang chơi bóng trên sân cỏ nhân tạo không?</p><p>Tham gia vào <a href=\"https://www.facebook.com/groups/salegiaydabong\"><strong>nhóm Facebook Săn Sale Giày Đá Bóng</strong></a> với nhiều mẫu giày giá cực tốt nhé!</p></blockquote><h3>Đội hình brazil fo4 (Fifa Online 4)</h3><p>Để có thể xây dựng được đội hình Brazil mạnh nhất trong tựa game Fifa Online 4 thì cần hiểu rõ về các cầu thủ huyền thoại của đội tuyển này. Sự kết hợp của các huyền thoại Brazil mạnh nhất sẽ có thể xây dựng nên một <strong>đội hình Brazil mạnh nhất</strong>. Ngoài ra những cầu thủ đang có phong độ tốt của Brazil cũng có thể trở thành những mảnh ghép quan trọng trong xây dựng <strong>đội hình brazil fifa online 4</strong>. Sự kết hợp giữa các huyền thoại cùng những hảo thủ có phong độ cao đang thi đấu sẽ tạo nên một đội hình <strong>Team Brazil FO4</strong> bất bại nhất.</p><h3>Đội hình brazil 1998 World Cup</h3><p>Năm 1998 đội tuyển Brazil mang đến nước Pháp một đội hình cực kỳ chất lượng để tham dự Worldcup 1998. <strong>Đội hình Brazil năm 1998</strong> có rất nhiều các huyền thoại bóng đá nổi tiếng như <strong>Ronaldo de Lima</strong>, <strong>Roberto Carlos</strong>, <strong>Rivaldo</strong>, <strong>Cafu</strong>, <strong>Dunga</strong>,… cùng với những cầu thủ đàn anh kỳ cựu đầy kinh nghiệm. Sức mạnh của đội tuyển Brazil đã giúp đội tuyển này thẳng tiến vào vòng chung kết sau khi vượt qua rất nhiều đội tuyển quốc gia cực kỳ mạnh thời bấy giờ như Hà Lan, Đan Mạch,… Dưới đây là danh sách đội hình chính thức của Brazil tham dự Worldcup 1998 tại Pháp.</p><p>– <i>Taffarel, Cafu, Aldair, Baiano, Roberto Carlos, Sampaio, Dunga, Rivaldo, Leonardo, Bebeto, Ronaldo de Lima</i></p><p>Mặc dù đội hình Brazil 1998 rất mạnh tuy nhiên đã không thể vượt qua được đội chủ nhà Pháp. 4 năm sau đó Brazil đã hoàn thiện đội hình của mình và trở thành một trong những đội hình mạnh nhất thế giới mọi thời đại Brazil 2002.</p><p>Đội hình Brazil mới nhất 2022</p><h3>Đội hình chính brazil 2022 mới nhất</h3><p>Sự phát triển của nhiều nền bóng đá khiến đội tuyển Brazil không giành được những danh hiệu lớn trong những năm gần đây. Tuy nhiên <strong>đội hình Brazil mới nhất</strong> quy tụ rất nhiều cầu thủ trẻ tài năng sáng giá. Chính những cầu thủ trẻ suất xắc đang thi đấu cho các CLB hàng đầu thế giới sẽ mang đến sức mạnh cho đội tuyển Brazil trong năm 2022 này.</p><p>– <strong>Thủ môn:</strong>&nbsp;<i>Alisson (Liverpool), Ederson (Man City), Weverton (Palmeiras).</i></p><p>– <strong>Hậu vệ: </strong><i>Thiago Silva (Chelsea), Marquinhos (PSG), Danilo (Juventus), Renan Lodi (Atlético Madrid), Alex Telles (MU), Felipe (Atlético Madrid), Diego Carlos (Sevilla), Gabriel Menino (Palmeiras).</i></p><p>– <strong>Tiền vệ: </strong><i>Arthur (Juventus), Lucas Paquetá (Lyon), Allan (Everton), Éverton Ribeiro (Flamengo), Douglas Luiz (Aston Villa), Bruno Guimarães (Lyon).</i></p><p>– <strong>Tiền đạo:</strong>&nbsp;<i>Roberto Firmino (Liverpool), Gabriel Jesus (Man City), Richarlison (Everton), Everton (Benfica), Vinícius Júnior (Real Madrid), Pedro (Flamengo).</i></p><h3>Đội hình brazil 1994 vô địch World Cup</h3><p>Năm 1994 Brazil đã suất sắc giành chức vô địch Worldcup sau khi hạ gục đội tuyển Ý trên chấm Penalty. Vào giai đoạn này <strong>đội hình Brazil 1994</strong> vẫn chưa có sự phục vụ của những cái tên huyền thoại như <i>Ronaldo de Lima, Ronaldinho</i> hay<i> Roberto Carlos</i>… Tuy nhiên với một đội hình đồng đều thi đấu kỷ luật thì đội tuyển Brazil đã giành được cúp vàng thế giới.</p><p>– Thủ môn GK: Cláudio Taffarel</p><p>– Hậu vệ cánh phải RB: Jorginho</p><p>– Trung vệ CB: Aldair</p><p>– Trung vệ CB: Marcio Santos</p><p>– Hậu vệ cánh trái LB: Branco</p><p>– Tiền vệ trung tâm CM: Mauro Silva</p><p>– Tiền vệ trung tâm CM: Dunga (c)</p><p>– Tiền vệ tấn công CAM: Mazinho</p><p>– Tiền vệ tấn công CAM: Zinho</p><p>– Tiền đạo lùi CF: Romário</p><p>– Tiền đạo lùi CF: Bebeto</p><p>Vào thay người:</p><p>– Tiền vệ trụ DF: Cafu</p><p>– Tiền đạo mũi nhọn FW: Viola</p><h3>Đội hình brazil 2018 (tham dự Worldcup)</h3><p>– <strong>Thủ môn</strong>: <i>Alisson (Roma), Ederson (Man City), Cassio (Corinthians).</i></p><p>– <strong>Trung vệ</strong>: <i>Marquinhos (PSG), Thiago Silva (PSG), Miranda (Inter Milan), Pedro Geromel (Gremio).</i></p><p>– <strong>Hậu vệ biên</strong>: <i>Marcelo (Real Madrid), Danilo (Man City), Filipe Luis (Atletico Madrid), Fagner (Corinthians).</i></p><p>– <strong>Tiền vệ</strong>: <i>Willian (Chelsea), Fernandinho (Man City), Paulinho (Barcelona), Casemiro (Real Madrid), Philippe Coutinho (Barcelona), Renato Augusto (Beijing Guoan), Fred (Shakhtar).</i></p><p>– <strong>Tiền đạo</strong>: <i>Neymar (PSG), Gabriel Jesus (Man City), Roberto Firmino (Liverpool), Douglas Costa (Juventus), Taison (Shakhtar).</i></p><h2>Các huyền thoại của đội tuyển quốc gia Brazil</h2><p>Brazil được mệnh danh là đất nước của những vũ công zumba nên phong cách chơi bóng của họ cứ như đang nhảy múa với trái bóng vậy. Có rất nhiều cầu thủ Brazil đã trở thành siêu sao với kỹ năng rê bóng, chơi bóng đỉnh cao nhất. Trong đó có nhiều siêu sao đã trở thành huyền thoại của bóng đá thế giới. Dưới đây là những <strong>huyền thoại nổi bật nhất của đội tuyển quốc gia Brazil</strong> trong mọi thời đại.</p><h4>– Pele</h4><h4>– Ronaldo De Lima</h4><h4>– Roberto Carlos</h4><h4>– Ronaldinho</h4><h4>– Cafu</h4>', '2023-10-18 14:40:25', '2023-10-18 14:40:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_types`
--

CREATE TABLE `post_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_types`
--

INSERT INTO `post_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kinh nghiệm chọn giày', '2023-10-18 13:55:25', '2023-10-18 13:55:25'),
(2, 'Sử dụng giày', '2023-10-18 13:55:37', '2023-10-18 13:55:37'),
(3, 'Đội bóng', '2023-10-18 14:34:07', '2023-10-18 14:34:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint NOT NULL DEFAULT '0',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `name`, `price`, `color`, `product_code`, `featured`, `description`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Nike Mercurial Superfly 9 Academy TF', 480000, 'Trắng Xanh', 'SP038215_master', 1, '<p><strong>Thông số kỹ thuật:</strong><a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-superfly-9-academy-tf-trang-vach-xanh-nhat-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Superfly 9 Academy TF Trắng vạch xanh nhạt RE\"></a></p><ul><li>Loại giày: Giày sân cỏ nhân tạo.</li><li>Loại đế: Đế đinh dăm TF.</li><li>Phiên bản: Superfly 9 Academy.</li><li>Phân khúc: Giá rẻ.</li><li>Chất liệu da: Da tổng hợp nhân tạo.</li><li>Chất liệu đế: Đế cao su mềm dẻo.</li><li>Dòng giày: Nike Mercurial.</li><li>Phân khúc: Giá rẻ (ngon, bổ, rẻ).</li><li>Thời gian ra mắt: Tháng 2, 2023.</li><li>Thiết kế: Có cổ thun ôm chân</li><li>Bộ sưu tập: Nike Blast pack.</li></ul><p><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/Nike-mercurial-superfly-9-academy-tf-trang-vach-xanh-nhat-2.jpg\" alt=\"Nike mercurial superfly 9 academy tf trang vach xanh nhat (2)\"></p>', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(2, 1, 2, 'Nike Mercurial Vapor 15 Academy TF CR7 RE', 380000, 'Tím cam', 'SP038305_master', 1, '<p><strong>Thông số kỹ thuật:</strong><a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-vapor-15-academy-tf-tim-cam-cr7-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Vapor 15 Academy TF Tím cam CR7 RE\"></a></p><ul><li>Loại giày: Giày sân cỏ nhân tạo.</li><li>Loại đế: Đế đinh dăm TF.</li><li>Phiên bản: Vapor 15 Academy.</li><li>Phân khúc: Giá rẻ.</li><li>Chất liệu da: Da tổng hợp nhân tạo.</li><li>Chất liệu đế: Đế cao su mềm dẻo.</li><li>Dòng giày: Nike Mercurial.</li><li>Phân khúc: Giá rẻ (ngon, bổ, rẻ).</li><li>Thời gian ra mắt: Tháng 2, 2023.</li><li>Thiết kế: Dựa theo phiên bản giày thi đấu của Ronaldo CR7, Mbappé,…</li><li>Bộ sưu tập: Nike Mercurial Dream Speed.</li></ul>', '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(3, 1, 4, 'Giày Nike Phantom GX Pro TF', 600000, 'Cam vàng', 'SP038161_master', 1, '<p><strong>Thông số kỹ thuật:</strong><a href=\"https://giaydabongtot.com/san-pham/giay-nike-phantom-gx-pro-tf-cam-vang-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Nike Phantom GX Pro TF Cam vàng vạch đen\"></a></p><ul><li>Loại giày: Giày đá banh sân cỏ nhân tạo.</li><li>Loại đế: Đế đinh dăm TF.</li><li>Phiên bản: Nike Phantom GX Pro (mới nhất 2023).</li><li>Phân khúc: tầm trung.</li><li>Chất liệu da: Da vải phủ lớp nhựa dẻo chống nước.</li><li>Chất liệu đế: Đế cao su mềm dẻo có đệm xốp React êm ái (phần màu trắng ở đế giày).</li><li>Dòng giày: Nike Phantom GX.</li><li>Gam màu: Cam vàng vạch đen.</li><li>Phân khúc: Pro với mức giá tầm trung.</li><li>Thời gian ra mắt: Tháng 6, 2023.</li><li>Lưỡi gà: Cổ thun co giãn tốt.</li><li>Ưu điểm nổi bật: Form giày thoải mái dễ mang.</li></ul><p>&nbsp;</p>', '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(4, 1, 1, 'Nike Tiempo Legend 9 Pro TF', 580000, 'Xanh ngọc cam', 'SP037388_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-tiempo-legend-9-pro-tf-xanh-ngoc-cam-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Tiempo Legend 9 Pro TF Xanh ngọc cam vạch đen\"></a></p>', '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(5, 1, 2, 'Nike Tiempo 9 Pro TF đế vằn', 580000, 'Xám vạch trắng', 'Tiempo-991', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-tiempo-9-pro-tf-xam-vach-trang-de-van/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Tiempo 9 Pro TF xám vạch trắng, Đế vằn\"></a></p>', '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(6, 2, 2, 'Adidas X Crazyfast .1 TF', 580000, 'Chuối trắng vạch đen', 'SP038298_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/adidas-x-crazyfast-1-tf-chuoi-trang-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Adidas X Crazyfast .1 TF Chuối trắng vạch đen\"></a></p>', '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(7, 2, 1, 'Giày Adidas X Speedportal .1 TF Messi', 580000, 'Cam đen', 'SP038059_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-adidas-x-speedportal-1-tf-messi-cam-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Adidas X Speedportal .1 TF Messi Cam đen\"></a></p>', '2023-10-18 13:32:30', '2023-10-18 13:32:30'),
(8, 2, 4, 'Adidas Predator Freak+ TF không dây', 850000, 'Bạc vạch đen', 'SP037750_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/adidas-predator-freak-tf-bac-vach-den-khong-day/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Adidas Predator Freak+ TF Bạc vạch đen không dây\"></a></p>', '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(9, 2, 5, 'Adidas X Speedportal .1 TF WC (Kids)', 550000, 'Xanh ngọc', 'SP038279_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/adidas-x-speedportal-1-tf-xanh-ngoc-wc-kids/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Adidas X Speedportal .1 TF Xanh ngọc WC (Kids)\"></a></p>', '2023-10-18 13:34:49', '2023-10-18 13:37:19'),
(10, 1, 5, 'Nike Mercurial Superfly 9 Academy TF CR7', 480000, 'Xanh trắng', 'SP038190_master', 1, '<p>- Ngoài áp dụng cả các chọn size giày của shop thì bạn có thể áp dụng thêm cách đo chiều dài bàn chân rồi <strong>so sánh với bảng đo size giày</strong> để tìm ra size giày phù hợp.&nbsp;<br>- Nên áp dụng theo hướng dẫn của shop trước sau đó so sánh với bảng đo size giày để chọn ra size giày phù hợp nhất. Chỉ sử dụng cách đo chân và bảng quy đổi size giày có độ chính xác không quá cao. Trường hợp thấy chênh lệch size và bạn không tự tin khi chọn size hãy <a href=\"https://m.me/giaydabongtotfb\"><strong>Chat Với Shop</strong></a> để được hỗ trợ nhé.<a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-superfly-9-academy-tf-xanh-trang-cr7-kids-re/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Superfly 9 Academy TF Xanh trắng CR7 kids (RE)\"></a></p>', '2023-10-18 13:35:54', '2023-10-18 13:37:11'),
(11, 1, 5, 'Nike Mercurial Superfly 9 Elite TF (Kids)', 720000, 'Chuối vằn cam', 'SP037611_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-superfly-9-elite-tf-chuoi-van-cam-kids/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Superfly 9 Elite TF Chuối vằn cam (Kids)\"></a></p>', '2023-10-18 13:37:01', '2023-10-18 13:37:01'),
(12, 3, 1, 'Giày Đá Banh Puma Future Z 1.4 TF Neymar', 450000, 'Cam nâu', 'SP037771_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-banh-puma-future-z-1-4-tf-cam-nau-neymar/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Banh Puma Future Z 1.4 TF Cam nâu Neymar\"></a></p>', '2023-10-18 13:38:57', '2023-10-18 13:38:57'),
(13, 3, 2, 'Giày Đá Banh Puma Future Z 1.4 MG', 720000, 'Xám vạch cam', 'SP037799_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-banh-puma-future-z-1-4-mg-xam-vach-cam/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Banh Puma Future Z 1.4 MG Xám vạch cam (2 màu)\"></a></p>', '2023-10-18 13:39:53', '2023-10-18 13:39:53'),
(14, 3, 2, 'Giày Đá Bóng Puma Future Z 1.4 TF', 650000, 'Xám trắng', 'SP037799_master', 0, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-bong-puma-future-z-1-4-tf-xam-vach-cam/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày Đá Bóng Puma Future Z 1.4 TF Xám vạch cam\"></a></p>', '2023-10-18 13:40:57', '2023-10-18 13:40:57'),
(15, 5, 6, 'Găng tay thủ môn', 300000, 'Đỏ đen', 'TU_82252', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/gang-tay-thu-mon-cac-mau/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Găng tay thủ môn các màu\"></a></p>', '2023-10-18 13:43:57', '2023-10-18 13:43:57'),
(16, 6, 2, 'Giày đá banh Mizuno Neo 3 Pro TF', 480000, 'Vàng vạch đen', 'SP037556_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/giay-da-banh-mizuno-neo-3-pro-tf-vang-vach-den/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Giày đá banh Mizuno Neo 3 Pro TF Vàng vạch đen\"></a></p>', '2023-10-18 13:45:31', '2023-10-18 13:45:31'),
(17, 5, 4, 'Nike Mercurial Vapor 13 Pro TF Neymar', 520000, 'Chuối hồng xanh', 'SP037458_master', 1, '<p>Do giày đá bóng thường có thiết kế ôm chân hơn các loại giày khác. Ngoài ra form giày Nike, Adidas thường nhỏ hơn so với các loại giày khác. Cho nên size giày chuẩn sẽ cần phải tăng lên theo hướng dẫn dưới đây.&nbsp;<br>- Tăng 0,5 - 1 size so với&nbsp;<strong>giày vải bata Thượng Đình, Thashoco, bata tàu warrior...</strong>&nbsp;(tùy muốn ôm chân hay thoải mái).&nbsp;<br>- Tăng 0,5 size so với <strong>giày thể thao Nike, Adidas.</strong>&nbsp;<br>- Tăng 0,5-1 size so với các loại&nbsp;<strong>giày bóng đá làm ở Việt Nam</strong> (ví dụ: giày tầm giá 100-300k VNĐ).&nbsp;<br>- Tăng 0,5-1 size so với&nbsp;<strong>giày pan Thái</strong>&nbsp;<br>- Mang ngang size với&nbsp;<strong>giày đá bóng Nike, Adidas chính hãng</strong>.&nbsp;<br>- Tham khảo bài viết chi tiết các bước <a href=\"https://giaydabongtot.com/blog/chon-size-giay-da-bong\"><strong>đo size giày</strong></a> của shop (tuy nhiên việc đo size giày dễ sai lệch nên cũng không chính xác lắm).&nbsp;<br>Lưu ý: Tất cả các trường hợp trên đây đều áp dụng khi mang vừa chuẩn size các loại giày được mô tả. Trường hợp mang rộng, thừa mũi các loại giày dưới đây khoảng 0.5 cm trở lên thì không cần tăng size.<a href=\"https://giaydabongtot.com/san-pham/nike-mercurial-vapor-13-pro-tf-chuoi-hong-xanh-neymar/\"><img src=\"https://giaydabongtot.com/wp-content/uploads/2023/08/px.gif\" alt=\"Nike Mercurial Vapor 13 Pro TF Chuối hồng xanh Neymar\"></a></p>', '2023-10-18 13:47:58', '2023-10-18 13:47:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'uploads/product/ttAxZErhIEjmJgEKjz7QvEgLZj5K1CT5fz9ha6CD.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(2, 1, 'uploads/product/1PLuQbUMvUbASSFnuWXjrDoJXTsgnmoj20Wiiz0S.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(3, 1, 'uploads/product/SwBZGgIHO5Or3UDK5cLFMuYFFedDnLv0E6Jnf01t.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(4, 1, 'uploads/product/9ZGbXnnvlJnocwoDBsijVPRyNOaZhaL5XgJ8kzlr.jpg', '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(5, 2, 'uploads/product/6QhdwKBrKo2JsAMKkqedDA0760IkMfDzYZ1R2Sr3.jpg', '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(6, 2, 'uploads/product/VZizHZD0lrQ0Wq2XUvURYHG8DO17EDLP8nKuJBTy.jpg', '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(7, 3, 'uploads/product/aiTIJbHVLT2qjIu0GxDk1tfiwVuCdsdPhtxaMvsP.jpg', '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(8, 3, 'uploads/product/pdWqSntiGxYwUrYgwQ44J3IlMs6OTtuVAu1Dx0B4.jpg', '2023-10-18 13:22:39', '2023-10-18 13:28:36'),
(9, 4, 'uploads/product/HehO0fx8jiyuSTixgCeULYNrgQUgPCTLOo0Qnpv7.jpg', '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(10, 5, 'uploads/product/4P38tAUd5ibkHh1z1OzE2WN6CyTLmyr2C9Y9vhtc.jpg', '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(11, 6, 'uploads/product/zJ6kc2rX6K9XGUeNBvgsGeZqrjmKdYZjlDEVvC4n.jpg', '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(12, 7, 'uploads/product/zeaCb9j7hkbXyRufHglg7exDlaCzlzdXYukr1ghE.jpg', '2023-10-18 13:32:30', '2023-10-18 13:32:30'),
(13, 7, 'uploads/product/DXABPXQd5ACwFdchp2AtbCIpM3KdfmCfT6W1coo2.jpg', '2023-10-18 13:32:30', '2023-10-18 13:32:30'),
(14, 8, 'uploads/product/UIgFoGwC5nM7R5rrfVljAOLz3AUJCx2ft7rkl5Uy.jpg', '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(15, 9, 'uploads/product/LJ4ZTuH34mbm6cychdAyrXNnMBtnalCPXlrvut9G.jpg', '2023-10-18 13:34:49', '2023-10-18 13:34:49'),
(16, 10, 'uploads/product/R9HpaeKzVq70t3U9iU7RLE39AZiTHu4eyQFU9A7m.jpg', '2023-10-18 13:35:54', '2023-10-18 13:35:54'),
(17, 11, 'uploads/product/dGOP3jgg1kOkdBJkHxksmGRhTIgwZHJV9cuTQzoa.jpg', '2023-10-18 13:37:01', '2023-10-18 13:37:01'),
(18, 12, 'uploads/product/BLTCA3GXWDs2U2uG3C4o5ijfCcJKMmLdIAcnsKiy.jpg', '2023-10-18 13:38:57', '2023-10-18 13:38:57'),
(19, 13, 'uploads/product/CTq2M4PFgpxgXq0eDcGslukCARIOLjvwCFHFV4tQ.jpg', '2023-10-18 13:39:53', '2023-10-18 13:39:53'),
(20, 14, 'uploads/product/BEaHRIRDf6nn7v0uKgQtGA3rgnocRtLdojSSDWgd.jpg', '2023-10-18 13:40:57', '2023-10-18 13:40:57'),
(21, 15, 'uploads/product/StcEYrNyoeuqlDAWfOJvwxn1n0vA63BzTzaWDVoo.jpg', '2023-10-18 13:43:57', '2023-10-18 13:43:57'),
(22, 16, 'uploads/product/jhMqE07RDnmLPEBqKg8GXOevSo3V3R0MomAdWo6Y.jpg', '2023-10-18 13:45:31', '2023-10-18 13:45:31'),
(23, 16, 'uploads/product/DkWt28XsQCUtrxCVrhekCNSInqQjs0FXfDErxzfr.jpg', '2023-10-18 13:45:31', '2023-10-18 13:45:31'),
(24, 16, 'uploads/product/L7qYItuxdG2qJzlkfPEMcRZU49WFhzcfeJS9SR0P.jpg', '2023-10-18 13:45:31', '2023-10-18 13:45:31'),
(25, 17, 'uploads/product/bFEuzR19mbNGN5sfCNM8gMUGaPG1RvADV8B9tRqh.jpg', '2023-10-18 13:47:58', '2023-10-18 13:47:58'),
(26, 17, 'uploads/product/xJ64Hss7vCYZrBva2I7R6lvOVj3OS4EfCDNyh2eP.jpg', '2023-10-18 13:47:58', '2023-10-18 13:47:58'),
(27, 17, 'uploads/product/ASQSNg7SnUOwZ9gpRoVmacilI4HbF3DXSG0CpjYp.jpg', '2023-10-18 13:47:58', '2023-10-18 13:47:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_items`
--

CREATE TABLE `product_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `size` int NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_items`
--

INSERT INTO `product_items` (`id`, `product_id`, `size`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 1, 39, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(2, 1, 40, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(3, 1, 41, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(4, 1, 42, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(5, 1, 43, 20, '2023-10-18 13:14:42', '2023-10-18 13:14:42'),
(6, 2, 39, 20, '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(7, 2, 40, 20, '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(8, 2, 41, 20, '2023-10-18 13:17:23', '2023-10-18 13:17:23'),
(9, 3, 39, 21, '2023-10-18 13:22:39', '2023-10-18 14:54:44'),
(10, 3, 40, 22, '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(11, 3, 41, 22, '2023-10-18 13:22:39', '2023-10-18 13:22:39'),
(12, 4, 39, 20, '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(13, 4, 42, 20, '2023-10-18 13:25:16', '2023-10-18 13:25:16'),
(14, 5, 40, 20, '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(15, 5, 41, 20, '2023-10-18 13:30:15', '2023-10-18 13:30:15'),
(16, 6, 40, 20, '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(17, 6, 41, 20, '2023-10-18 13:31:29', '2023-10-18 13:31:29'),
(18, 7, 40, 19, '2023-10-18 13:32:30', '2023-10-18 14:50:29'),
(19, 8, 40, 20, '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(20, 8, 41, 20, '2023-10-18 13:33:33', '2023-10-18 13:33:33'),
(21, 9, 35, 20, '2023-10-18 13:34:49', '2023-10-18 13:34:49'),
(22, 9, 36, 20, '2023-10-18 13:34:49', '2023-10-18 13:34:49'),
(23, 9, 37, 20, '2023-10-18 13:34:49', '2023-10-18 13:34:49'),
(24, 10, 35, 20, '2023-10-18 13:35:54', '2023-10-18 13:35:54'),
(25, 10, 36, 20, '2023-10-18 13:35:54', '2023-10-18 13:35:54'),
(26, 11, 35, 20, '2023-10-18 13:37:01', '2023-10-18 13:37:01'),
(27, 12, 39, 19, '2023-10-18 13:38:57', '2023-10-18 14:50:29'),
(28, 12, 40, 20, '2023-10-18 13:38:57', '2023-10-18 13:38:57'),
(29, 13, 39, 19, '2023-10-18 13:39:53', '2023-10-18 14:49:03'),
(30, 14, 39, 19, '2023-10-18 13:40:57', '2023-10-18 14:50:08'),
(31, 15, 8, 19, '2023-10-18 13:43:57', '2023-10-18 14:48:34'),
(32, 15, 9, 20, '2023-10-18 13:43:57', '2023-10-18 13:43:57'),
(33, 16, 39, 19, '2023-10-18 13:45:31', '2023-10-18 14:47:55'),
(34, 17, 39, 15, '2023-10-18 13:47:58', '2023-10-18 14:54:44'),
(35, 17, 40, 20, '2023-10-18 13:47:58', '2023-10-18 13:47:58'),
(36, 17, 41, 20, '2023-10-18 13:47:58', '2023-10-18 13:47:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `address`, `password`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Tuan anh', 'Tuan Anh', 'tuananh@localhost.com', '123454345', 'Hà Đông, Hà Nội', '$2y$10$eQxrrvqZSTYxvOBLbDFWmOIlvm9DC.5pg2c/N7eJbIqyn/YzmGola', 'uploads/user/4lX5E3C4vr0bOT16zZ4CyALNl97iSwEe95OWDDYn.jpg', 1, '2023-10-18 13:53:05', '2023-10-18 14:47:28');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_post_type_id_foreign` (`post_type_id`);

--
-- Chỉ mục cho bảng `post_types`
--
ALTER TABLE `post_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_types_name_unique` (`name`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `product_items`
--
ALTER TABLE `product_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_items_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `post_types`
--
ALTER TABLE `post_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `product_items`
--
ALTER TABLE `product_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_post_type_id_foreign` FOREIGN KEY (`post_type_id`) REFERENCES `post_types` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `product_items`
--
ALTER TABLE `product_items`
  ADD CONSTRAINT `product_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
