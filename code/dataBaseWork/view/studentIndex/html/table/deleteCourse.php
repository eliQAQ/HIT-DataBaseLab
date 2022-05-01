<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    
    $Sno = $_COOKIE["Sno"];
    
    //创建连接
    $conn = new mysqli($servername, $username, $password);

    //检测连接
    if ($conn->connect_error){
        die("gg!");
    }

    $db = mysqli_select_db($conn, "university");
    $q = "select result from Curricula where Sno = '$_COOKIE[Sno]' and Cno = '$_POST[chosenCourse]';";
    $result = mysqli_query($conn, $q);
    if($row=mysqli_fetch_row($result)){
        if(!empty($row[0])){
            echo "<script>alert('已有成绩不可退课');parent.location.href='table.php';</script>";
        }
        else{
            $q = "delete from Curricula where Sno = '$_COOKIE[Sno]' and Cno = '$_POST[chosenCourse]';";
            //echo $q;
            $result = mysqli_query($conn, $q);
            if($result == TRUE){
                echo "<script>alert('退课成功');parent.location.href='table.php';</script>";
            }
            else{
                $now = mysqli_error($conn);
                echo '<script>alert("退课失败!错误原因:'.$now.'");parent.location.href="table.php";</script>';
            }
        }
    }

    
?>