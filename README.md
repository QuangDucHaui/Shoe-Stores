# 👟 ShoeStore – Website Bán Giày

## 📌 Giới thiệu

**ShoeStore** là một website thương mại điện tử chuyên bán giày, được xây dựng bằng framework **Laravel (PHP)** theo mô hình **MVC**. Hệ thống hỗ trợ các tính năng quản lý sản phẩm, đặt hàng, thanh toán, giỏ hàng, bài viết tin tức và quản trị người dùng.

Website hướng đến trải nghiệm mua sắm đơn giản, hiện đại và dễ mở rộng cho mục tiêu kinh doanh lâu dài.

---

## 🏗 Kiến trúc hệ thống

Hệ thống được thiết kế theo kiến trúc **MVC (Model - View - Controller)**:

### 1️⃣ Giao diện người dùng (View)
- Giao diện thân thiện, responsive, hỗ trợ người dùng duyệt giày theo thương hiệu, loại, mức giá.
- Tìm kiếm, lọc sản phẩm, xem chi tiết và thêm vào giỏ hàng.
- Hiển thị các bài viết, khuyến mãi và đánh giá sản phẩm.

### 2️⃣ Controller
- Xử lý các luồng logic nghiệp vụ: thêm giỏ hàng, đặt hàng, xử lý thanh toán, quản trị sản phẩm, v.v.
- Kiểm tra phân quyền (Admin/Khách hàng).
- Giao tiếp với database thông qua Model.

### 3️⃣ Model
- Quản lý dữ liệu của các thực thể: `Product`, `Category`, `Brand`, `User`, `Order`, `Post`, v.v.
- Tương tác trực tiếp với **SQL database** thông qua Eloquent ORM.

---

## 🧩 Các tính năng chính

- ✅ Đăng ký / Đăng nhập người dùng (Laravel Auth)
- ✅ Trang quản trị viên (Admin Panel) với các chức năng:
  - Quản lý sản phẩm, danh mục, thương hiệu
  - Quản lý đơn hàng, người dùng, bài viết, thống kê
- ✅ Giỏ hàng & Đặt hàng
- ✅ Thanh toán khi nhận hàng (COD)
- ✅ Lọc sản phẩm
- ✅ Quản lý tài khoản cá nhân
- ✅ Bài viết tin tức, khuyến mãi

---

## 🛠 Công nghệ sử dụng

| Thành phần       | Công nghệ                  |
|------------------|-----------------------------|
| Backend          | Laravel 10.x (PHP 8.x)      |
| Frontend         | Blade Template, Bootstrap   |
| Database         | MySQL / SQL (qua Eloquent)  |
| Authentication   | Laravel Auth (JWT có thể mở rộng) |
| Storage          | Public folder / S3 (tuỳ chọn) |
| Deployment       | XAMPP / Laragon / Docker    |

---

## 🔧 Cài đặt & chạy ứng dụng

### 1️⃣ Clone dự án
```bash
git clone https://github.com/yourusername/shoestore.git
cd shoestore
