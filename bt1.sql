-- Bước 1: Tạo Database và sử dụng
CREATE DATABASE IF NOT EXISTS bt1;
USE bt1;

-- Bước 2: Tạo bảng Restaurants (Cần có bảng trước khi SELECT)
CREATE TABLE IF NOT EXISTS Restaurants (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_name VARCHAR(255),
    address VARCHAR(255),
    district VARCHAR(50),
    rating DECIMAL(2,1)
);

-- Bước 3: Thêm dữ liệu mẫu để kiểm tra (DML)
INSERT INTO Restaurants (restaurant_name, address, district, rating) VALUES
('Quán Ngon Q1', '123 Lê Lợi', 'Quận 1', 4.5),   -- Hợp lệ
('Cơm Tấm Q1', '45 NTMK', 'Quận 1', 2.5),       -- Loại (rating thấp)
('Phở Bò Q3', '789 Võ Văn Tần', 'Quận 3', 4.2), -- Hợp lệ
('Bún Chả Q3', '101 Tú Xương', 'Quận 3', 3.0),  -- Loại (rating thấp)
('Mì Quảng Q5', '555 Trần Hưng Đạo', 'Quận 5', 4.8); -- Loại (sai quận)

-- Bước 4: Câu lệnh truy vấn chuẩn (Đã sửa lỗi logic)
SELECT 
    restaurant_name, 
    address, 
    rating
FROM Restaurants
WHERE district IN ('Quận 1', 'Quận 3') 
  AND rating > 4.0;