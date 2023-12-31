<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    <title>ตารางเรียน</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg fixed-top" style="background-color: #fe965a;">
        <div class="container">
            <a class="navbar-brand text-light" href="index.php">ระบบลงทะเบียนเรียน</a>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="navbar-brand text-light" href="register.php">ลงทะเบียนเรียน</a>
                        <a class="navbar-brand text-light" href="add_delete.pho">เพิ่ม-ถอนรายวิชา</a>
                        <a class="navbar-brand text-light" href="study_table.php">ตารางเรียน</a>
                        <a class="navbar-brand text-light" href="grade.php">ผลการเรียน</a>
                        <a class="navbar-brand text-light" href="course-structure.php">หลักสูตร</a>
                        <a class="navbar-brand text-light" href="#">Log out</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h2 class="text-center py-5"  style="color: #fe965a;">ตารางเรียน</h2>

        <div style="color:grey;" >
            <span class="fw-bold">ชื่อ</span> &emsp;&emsp; <span>สมมติ นามแฝง</span><br>
            <span class="fw-bold">คณะ</span> &emsp;&nbsp; <span>วิทยาศาสตร์</span><br>
            <span class="fw-bold">สาขา</span> &emsp; <span>วิทยาการคอมพิวเตอร์</span><br><br>
        </div>
       

        <div class="bd-example">
            <table class="table table-bordered text-center">
                <thead>
              <tr class="text-white" style="background-color: grey;">
                <th scope="col">Day/Time</th>
                <th scope="col">8.00-8.50</th>
                <th scope="col">9.00-9.50</th>
                <th scope="col">10.00-10.50</th>
                <th scope="col">11.00-11.50</th>
                <th scope="col">12.00-12.50</th>
                <th scope="col">13.00-13.50</th>
                <th scope="col">14.00-14.50</th>
                <th scope="col">15.00-15.50</th>
                <th scope="col">16.00-16.50</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row" style="background-color: silver;" class="text-white">จันทร์</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <th scope="row" style="background-color: silver;" class="text-white">อังคาร</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <th scope="row" style="background-color: silver;" class="text-white">พุธ</th>
                <td colspan="2" style="background-color: #fe965a;" class="text-white">002 ภาษาอังกฤษ<br>(3) 1,SC2-214 SC 2</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <th scope="row" style="background-color: silver;" class="text-white">พฤหัส</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
              <tr>
                <th scope="row" style="background-color: silver;" class="text-white">ศุกร์</th>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tbody>
          
            </table>
          </div>

        
    </div>



</body>

</html>