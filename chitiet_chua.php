<?php
include("ketnoi.php");

if (isset($_GET['id'])) {
    $chuaID = $_GET['id'];

    // Tiếp tục xử lý dữ liệu với ID đã lấy được
    $sql = "SELECT * FROM chua WHERE ChuaID = $chuaID";
    $result = mysqli_query($bien_kn, $sql);

    if ($result) {
        $row = mysqli_fetch_assoc($result);
        // Tiếp tục xử lý và hiển thị thông tin chi tiết
    } else {
        die('Query failed: ' . mysqli_error($bien_kn));
    }
} else {
    echo "Không có ID được cung cấp.";
}

?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Chi Tiết Chùa</title>
    <link rel="stylesheet" type="text/css" href="css.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        center {
            margin-top: 20px;
        }

        table {
            background-color: #fff;
            border-collapse: collapse;
            width: 400px;
            margin-top: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        td {
            padding: 20px;
        }

        img {
            max-width: 100%;
            height: auto;
            display: block;
            margin-bottom: 10px;
        }

        strong {
            color: #333;
        }

        p {
            color: #555;
        }
    </style>
</head>

<body>
    <center>
        <table>
            <tr>
                <td>
                    <img src="<?php echo $row['AnhChua']; ?>" alt="Ảnh Chùa">

                    
                    <p><strong>Tên Chùa:</strong></p>
                    <p><?php echo $row['TenChua']; ?></p>

                    <p><strong>Địa Chỉ:</strong></p>
                    <p><?php echo $row['DiaChi']; ?></p>

                    <p><strong>Mô Tả:</strong></p>
                    <p><?php echo $row['MoTa']; ?></p>

                    <p><strong>Liên Hệ:</strong></p>
                    <p><?php echo $row['ThongTinLienHe']; ?></p>

                    <!-- Thêm nút "Quay lại" -->
                    <p><a href="index.php">&larr; Quay lại trang chủ</a></p>

                </td>
            </tr>
        </table>
    </center>
</body>

</html>