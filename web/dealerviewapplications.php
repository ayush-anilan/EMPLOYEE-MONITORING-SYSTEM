
<?php
session_start();
$logged=$_SESSION['logged'];
?>
		<?php
include("connect.php");
$status="approved";
$q="select * from applycards where dealername='$logged' and status!='$status'";
$result=mysql_query($q) or die("".mysql_error());
echo "<table border='1'><tr><td>id</td><td>consumername</td><td>address</td><td>aadhar</td><td>dealername</td><td>rationcard</td><td>Status</td></tr>";
while($row=mysql_fetch_assoc($result))
{
echo "<tr><td>".$row['id']."</td><td>".$row['consumername']."</td><td>".$row['address']."</td><td>".$row['aadhar']."</td><td>".$row['dealername']."</td>";
?>

<td><img src='uploads//<?php echo $row['aadhar']?>.jpg' height="100" width="200" /></td>

<td>Waiting For Approval</td>
</tr>

<?php
}
echo "</table>";
?>


 