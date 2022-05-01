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
    $q = "insert into Curricula values ('$_COOKIE[Sno]','$_POST[chosenCourse]', null);";
    //echo $q;
    $result = mysqli_query($conn, $q);
    if($result == TRUE){
        echo "<script>alert('选课成功');parent.location.href='datatable.php';</script>";
    }
    else{
        $now = mysqli_error($conn);
        echo '<script>alert("选课失败!错误原因:'.$now.'");parent.location.href="datatable.php";</script>';
    }
?>