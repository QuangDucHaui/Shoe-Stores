# 👟 ShoeStore – Website Bán Giày

## 📌 Giới thiệu

**ShoeStore** là một website thương mại điện tử chuyên bán giày, được xây dựng bằng framework **Laravel (PHP)** theo mô hình **MVC**. Hệ thống hỗ trợ các tính năng quản lý sản phẩm, đặt hàng, thanh toán, giỏ hàng, bài viết tin tức và quản trị người dùng.

Website hướng đến trải nghiệm mua sắm đơn giản, hiện đại và dễ mở rộng cho mục tiêu kinh doanh lâu dài.

---

## 🏗 Kiến trúc hệ thống

### ✔️ Kiến trúc MVC

- **Model**: Đại diện cho dữ liệu và logic nghiệp vụ (Product, Category, User, Order,...)
- **View**: Giao diện hiển thị cho người dùng bằng Blade template.
- **Controller**: Điều phối luồng dữ liệu giữa Model và View.

---

## 🧩 Các tính năng chính

- 🛒 Trang chủ hiển thị sản phẩm nổi bật
- 🔍 Tìm kiếm, lọc sản phẩm theo danh mục, thương hiệu
- 📦 Giỏ hàng, đặt hàng, quản lý đơn hàng
- 👤 Đăng ký, đăng nhập, chỉnh sửa thông tin tài khoản
- 📰 Xem bài viết tin tức, khuyến mãi
- ⚙️ Trang quản trị cho Admin:
  - Quản lý sản phẩm, danh mục, thương hiệu
  - Quản lý bài viết, đơn hàng, người dùng
  - Thống kê đơn hàng theo ngày/tháng

---

## 🛠 Công nghệ sử dụng

| Thành phần       | Công nghệ                  |
|------------------|-----------------------------|
| Backend          | Laravel 10.x (PHP 8.x)      |
| Frontend         | Blade Template, Bootstrap   |
| Database         | MySQL / SQL (Eloquent ORM)  |
| Authentication   | Laravel Auth / JWT          |
| Storage          | Public folder hoặc Cloud (S3) |
| Server/Dev       | XAMPP / Laragon / Docker    |

---

## 🔧 Cài đặt & chạy ứng dụng

### 1️⃣ Clone dự án
```bash
git clone https://github.com/yourusername/shoestore.git
cd shoestore
**### 2️⃣ Cài đặt thư viện**
bash
Sao chép
Chỉnh sửa
composer install
npm install && npm run dev
