#!/bin/bash
# Script đổi chuỗi 'levip6' thành 'mkipv6' trong file nhị phân và cài đặt lên AlmaLinux 8

set -e

# Kiểm tra file đầu vào
if [ ! -f "levip6" ]; then
    echo "Không tìm thấy file 'levip6' trong thư mục hiện tại."
    exit 1
fi

# Sao lưu file gốc
cp levip6 mkipv6_bak

# Thay thế chuỗi 'levip6' thành 'mkipv6'
sed 's/levip6/mkipv6/g' levip6 > mkipv6_tmp && mv mkipv6_tmp mkipv6

# Cấp quyền thực thi
chmod +x mkipv6

# Di chuyển file vào /usr/local/bin
sudo mv mkipv6 /usr/local/bin/mkipv6

echo "Đã hoàn tất! Bạn có thể sử dụng lệnh 'mkipv6' trên AlmaLinux 8."
