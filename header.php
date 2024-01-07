<?php
include("ketnoi.php");

// Lấy dữ liệu thể loại chùa từ CSDL
$queryCategory = "SELECT * FROM TheLoaiChua";
$resultCategory = mysqli_query($bien_kn, $queryCategory);

// Lấy dữ liệu khu vực từ CSDL
$queryRegion = "SELECT * FROM KhuVuc";
$resultRegion = mysqli_query($bien_kn, $queryRegion);

// Lấy tất cả dữ liệu chùa
$sqlAllChua = "SELECT * FROM chua";
$resultAllChua = mysqli_query($bien_kn, $sqlAllChua);
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Du Lịch Tâm Linh</title>
    <link rel="stylesheet" type="text/css" href="css.css" />
</head>

<body bgcolor="#999999">
    <center>
        <table width="1000" border="1" cellspacing="0" bordercolor="#003300" cellpadding="0"
            style="box-shadow: #6C0 0px 30px 150px;">
            <tr>
                <td colspan="3" height="200"
                    style="background: url('hinhanh/anhdulich.jpg') center center no-repeat; background-size: cover;">
                </td>
            </tr>
            <tr bgcolor="#92D84E">
                <td colspan="3">
                    <table border="0" width="100%" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <font color="#FF6600">
                                    <marquee>Những địa điểm du lịch tâm linh ở Trà Vinh!</marquee>
                                </font>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td width="200" align="left" valign="top" bgcolor="#92D84E">
                    <form id="searchForm">
                        <input type="text" id="searchInput" placeholder="Tìm kiếm chùa...">
                        <!-- Dropdownlist cho thể loại chùa -->
                        <select id="searchCategory" name="searchCategory">
                            <option value="">Chọn thể loại</option>
                            <?php
                            while ($rowCategory = mysqli_fetch_assoc($resultCategory)) {
                                echo "<option value='" . $rowCategory['TenTheLoaiChua'] . "'>" . $rowCategory['TenTheLoaiChua'] . "</option>";
                            }
                            ?>
                        </select>
                        <!-- Dropdownlist cho khu vực -->
                        <select id="searchRegion" name="searchRegion">
                            <option value="">Chọn khu vực</option>
                            <?php
                            while ($rowRegion = mysqli_fetch_assoc($resultRegion)) {
                                echo "<option value='" . $rowRegion['TenQuanHuyen'] . "'>" . $rowRegion['TenQuanHuyen'] . "</option>";
                            }
                            ?>
                        </select>
                        <button type="button" onclick="searchChua()">Tìm kiếm</button>
                    </form>
                </td>
                <td id="hienthi" valign="top" bgcolor="#FFFFFF">
                    <!-- Các nội dung khác ở đây -->
                    <table border='0' width='100%'>
                    <?php
                        while ($row = mysqli_fetch_array($resultAllChua)) {
                        echo "<tr>";
                        echo "<td><a href='chitiet_chua.php?id=" . $row['ChuaID'] .  "'>";
                        echo "<img src='" . $row["AnhChua"] . "' width='80' height='80'></a></td>";
                        echo "<td>" . $row["TenChua"] . "<br>" . $row["DiaChi"] . "<br> </td>";
                        echo "</tr>";
                        }
                    ?>
                    </table>
                </td>
                <td id="searchResult" valign="top" bgcolor="#FFFFFF">
                    <!-- Nơi hiển thị kết quả tìm kiếm -->
                    
                </td>
            </tr>
        </table>
    </center>
    <script>
        function searchChua() {
            var searchTerm = document.getElementById("searchInput").value;
            var searchCategory = document.getElementById("searchCategory").value;
            var searchRegion = document.getElementById("searchRegion").value;

            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function () {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    document.getElementById("searchResult").innerHTML = xhr.responseText;
                }
            };
        // Tạo URL tìm kiếm với các tham số (có thể trống)
            var url = "search_chua.php?searchTerm=" + encodeURIComponent(searchTerm) + "&searchCategory=" + searchCategory + "&searchRegion=" + searchRegion;
            xhr.open("GET", url, true);
            xhr.send();
            
        }
        // Thêm sự kiện để gọi hàm searchChua() khi có sự thay đổi trong ô textbox
        document.getElementById("searchInput").addEventListener("input", function () {
        searchChua();
        });
    </script>
    
</body>
</html>
