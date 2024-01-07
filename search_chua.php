<?php
include("ketnoi.php");

if (isset($_GET["searchTerm"]) || isset($_GET["searchCategory"]) || isset($_GET["searchRegion"])) {
    $searchTerm = isset($_GET["searchTerm"]) ? $_GET["searchTerm"] : '';
    $searchCategory = isset($_GET["searchCategory"]) ? $_GET["searchCategory"] : '';
    $searchRegion = isset($_GET["searchRegion"]) ? $_GET["searchRegion"] : '';

    // Truy vấn chùa dựa trên các tham số tìm kiếm
    $sql = "SELECT * FROM chua WHERE 1";

    if (!empty($searchTerm)) {
        $sql .= " AND (TenChua LIKE '%$searchTerm%' OR DiaChi LIKE '%$searchTerm%' OR MoTa LIKE '%$searchTerm%' OR ThongTinLienHe LIKE '%$searchTerm%')";
    }

    if (!empty($searchCategory)) {
        // Lấy TheLoaiChuaID từ tên thể loại chùa
        $queryCategory = "SELECT TheLoaiChuaID FROM TheLoaiChua WHERE TenTheLoaiChua = '$searchCategory'";
        $resultCategory = mysqli_query($bien_kn, $queryCategory);
        $rowCategory = mysqli_fetch_assoc($resultCategory);
        $theLoaiChuaID = $rowCategory['TheLoaiChuaID'];

        $sql .= " AND TheLoaiChuaID = $theLoaiChuaID";
    }

    if (!empty($searchRegion)) {
        $sql .= " AND KhuVucID IN (SELECT KhuVucID FROM KhuVuc WHERE TenQuanHuyen = '$searchRegion')";
    }

    $result = mysqli_query($bien_kn, $sql);

    // Xử lý kết quả và trả về HTML hoặc thông tin khác
    echo("<table border='0' width='100%'>");
    while ($row = mysqli_fetch_array($result)) {
        echo("<tr>");
        echo "<td><a href='chitiet_chua.php?id=" . $row['ChuaID'] ."'>";
        echo("<td> <img src='" . $row["AnhChua"] . "' width='80' height='80'> </td>");
        echo("<td>" . $row["TenChua"] . "<br>" . $row["DiaChi"] . "<br> <a href='chitiet_chua.php?id=" . $row["ChuaID"] . "'>Chi tiết</a></td>");
       
        echo("</tr>");
    }
    echo ("</table>");
} else {
    // Trả về thông báo hoặc xử lý khác khi không có tham số tìm kiếm
    echo "Không có thông tin tìm kiếm.";
}
?>
