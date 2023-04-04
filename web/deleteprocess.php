<?php
include("connect.php");
$code=$_POST['code'];
$query="delete from adddealers where id='$code'";
mysql_query($query);
?>
