<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    
    //创建连接
    $conn = new mysqli($servername, $username, $password);

    $Tno = $_COOKIE['Tno'];
    //检测连接
    if ($conn->connect_error){
        die("gg!");
    }
    //选择数据库
    $db = mysqli_select_db($conn, "university");
    $flag = 0;
    mysqli_begin_transaction($conn);
    foreach($_POST as $key=>$v){
        $arr = explode("|", $key);
        if(count($arr) == 2){
            if(empty($v)) continue;
            $q = "update Curricula set result = $v where Sno = '$arr[0]' and Cno = '$arr[1]';";
            $result = mysqli_query($conn, $q);
            if($result != TRUE){
                $flag = 1;
                $now = mysqli_error($conn);
            }
        }
    }
    if($flag === 1){
        mysqli_query($conn, "ROLLBACK");//执行失败进行回滚  
        mysqli_commit($conn);
        mysqli_close($conn);
        echo '<script>alert("修改失败!错误原因:'.$now.'");parent.location.href="datatable.php";</script>';
    }
    else{  
        mysqli_commit($conn);
        mysqli_close($conn);
        echo "<script>alert('修改成功!');parent.location.href='datatable.php';</script>";
    }
?>