<?php
include 'conn.php';

$id = $_GET['userID'];
$sql = "DELETE FROM employee WHERE user_id='$id' ";
//echo $sql;
$result = mysqli_query($conn,$sql);

$sql_user = "DELETE FROM user WHERE user_id='$id' ";
$result_user = mysqli_query($conn,$sql_user);

if($result){
    echo "<script>alert('ลบข้อมูลเรียบร้อย');</script>";
    echo "<script>window.location='emp_show.php';</script>";
}else{
    echo "<script>alert('ไม่สามารถลบข้อมูลได้');</script>";
}

mysqli_close($conn)

?>
