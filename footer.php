</td>
<td width="200" valign="top" bgcolor="#92D84E">
<?php
if(isset($_SESSION["nguoidung"])) {
    echo("<a href='thoat.php'>Đăng xuất </a>");
}elseif(isset($_SESSION["nguoiquantri"])) {
    echo("<a href='thoat.php'>Đăng xuất </a>");

}else{
?>
    
    <?php 
    }
    ?>
    
</td>
</tr>
<tr bgcolor="#92D84E">
    <td colspan="3" align="center">
         dulich.com <br />
        
    </td>
</tr>
</table>
</center>
</body>
</html>