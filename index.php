<?php
include("header.php");
?>


<?php
include("ketnoi.php");

if (isset($_GET["searchTerm"])) {
    $searchTerm = $_GET["searchTerm"];

    // Thực hiện truy vấn tìm kiếm theo tên chùa
    $sql = "SELECT * FROM chua WHERE TenChua LIKE '%$searchTerm%'";

    // Thực hiện truy vấn và hiển thị kết quả
    $result = mysqli_query($bien_kn, $sql);

    echo("<div style='display: flex; flex-wrap: wrap;'>"); // Bắt đầu container cho các cột

    while ($row = mysqli_fetch_array($result)) {
        echo("<div style='width: 33.33%; padding: 10px;'>"); // Bắt đầu một cột
        echo("<img src='" . $row["AnhChua"] . "' width='80' height='80'>");
        echo("<p>" . $row["TenChua"] . "<br>" . $row["DiaChi"] . "</p>");
        echo("</div>"); // Kết thúc cột
    }

    echo("</div>"); // Kết thúc container cho các cột
}
?>
<?php
include("footer.php");
?>
