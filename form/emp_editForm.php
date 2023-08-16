<?php
include '../conn.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>แก้ไขข้อมูลนิสิต</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</head>

<body>
    <nav class="navbar navbar-expand-lg fixed-top" style="background-color: #fe965a;">
        <div class="container">
            <a class="navbar-brand text-light" href="../index.php">ระบบลงทะเบียนเรียน</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item <?= $active_admin ?>">
                        <a class="nav-link text-light" href="login-page.php"></a>
                    </li>
                    <li class="nav-item <?= $active_admin ?>">
                        <a class="nav-link text-light" href="login-page.php"></a>
                    </li>
                    <li class="nav-item <?= $active_admin ?>">
                        <a class="nav-link text-light" href="login-page.php"></a>
                    </li>
                    <li class="nav-item <?= $active_admin ?>">
                        <a class="nav-link text-light" href="login-page.php"></a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="container py-5">
        <br>
        <div class="col-md-auto">
            <h1 class="text-center" style="color: #fe965a;">แก้ไขข้อมูลพนักงาน</h1><br>
        </div>
        <div class="row justify-content-md-center">
            <div class="col col-lg-2"></div>
            <div class="col-md-auto">

                <?php
                $id = $_GET['userID'];
                $sql = "SELECT * FROM employee 
                INNER JOIN faculty ON 
                employee.fac_id = faculty.fac_id
                WHERE user_id = $id";
                $query = mysqli_query($conn, $sql);
                $result = mysqli_fetch_array($query, MYSQLI_ASSOC);
                ?>
                <form action="../funtion/emp_edit.php" method="post">

                    <label style="color: #fe965a;">รหัสพนักงาน</label>
                    <input type="hidden" name="user_id" value="<?php echo $result["user_id"]; ?>">​
                    <?php echo $result["user_id"]; ?>
                    <br>
                    <br>
                    <label style="color: #fe965a;">ชื่อ</label>
                    <input type="text" name="fname" value="<?php echo $result["emp_fname"]; ?>">​

                    <label style="color: #fe965a;">นามสกุล</label>
                    <input type="text" name="lname" value="<?php echo $result["emp_lname"]; ?>">​

                    <label style="color: #fe965a;">เพศ</label>
                    <select name="gender" require>
                        <option value="ชาย">ชาย</option>
                        <option value="หญิง">หญิง</option>
                        <option value="หญิง">อื่นๆ</option>
                    </select>​
                    <br>
                    <br>
                    <label style="color: #fe965a;">วัน/เดือน/ปีเกิด</label>
                    <input type="date" name="birth" value="<?php echo $result["emp_birth"]; ?>">​


                    <label style="color: #fe965a;">คณะ</label>
                    <select name="faculty" require>
                        <option value="<?php echo $result["fac_id"]; ?>"><?php echo $result["fac_name"]; ?></option>
                        <?php $sqlFac = "SELECT * FROM faculty ";
                        $resultFac = mysqli_query($conn, $sqlFac);
                        while ($rowFac = mysqli_fetch_assoc($resultFac)) : ?>
                            <option value="<?php echo $rowFac['fac_id']; ?>">
                                <?php echo $rowFac['fac_name']; ?></option>
                        <?php endwhile; ?>
                    </select>
                    <label style="color: #fe965a;">วันที่เริ่มทำงาน</label>
                    <input type="date" name="enroll" value="<?php echo $result["emp_enroll"]; ?>">​
                    <br>
                    <br>

                    <label style="color: #fe965a;">โทรศัพท์</label>
                    <input type="number" name="phone" value="<?php echo $result["emp_phone"]; ?>">

                    <label style="color: #fe965a;">อีเมล</label>
                    <input type="email" name="email" value="<?php echo $result["emp_email"]; ?>">
                    <br>
                    <br>
                    <label style="color: #fe965a;">ที่อยู่</label>
                    <input type="textfield" name="address" value="<?php echo $result["emp_phone"]; ?>">
                    <br>
                    <br>

                    <button style="color: white;" class="btn btn-success" type="submit" name="submit" value="submit">บันทึกข้อมูล</button>
                    <a href="../emp_show.php" class="btn btn-danger">Cancel</a>
                </form>

            </div>

            <?php mysqli_close($conn); ?>

</body>

</html>
