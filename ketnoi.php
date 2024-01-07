<?php
$bien_kn = mysqli_connect("localhost", "root", "") or die ("Không thể kết nối");
$csdl = mysqli_select_db($bien_kn, "dulich_chua") or die ("Không thể chọn được csdl dulich" . mysqli_error($bien_kn));
mysqli_query($bien_kn, "SET NAMES 'utf8'");
?>
