<?php
	include_once "encrypt.php";
	include_once "decrypt.php";
	session_start();
	$servername = "localhost";
	$username = "root";
	$password = "";
	
	//创建连接
	$conn = new mysqli($servername, $username, $password);
	   
	//检测连接
	if ($conn->connect_error){
		die("gg!");
	}
	
	//选择数据库
	$db = mysqli_select_db($conn, "user");
	
	//查询盐值
	$q = "select salt from users where username = '$_POST[username]';";
	$result = mysqli_query($conn, $q);
	$salt = '';
	if($row = mysqli_fetch_row($result)){
		$salt .= $row[0];
	}
	else{
		echo "<script> alert('用户名输入有误');parent.location.href='login.html'; </script>"; 	
	}	
	//判断hash
	$hashmd5 = $_POST['md5'];
	$check = md5($_POST['pw'].$_SESSION['randomstr']);
	if ($hashmd5 !== $check){
		echo "<script>window.alert('attack!');parent.location.href='register.html'</script>";
	}
	$key = $_SESSION['aes_key'];
	$iv = $_SESSION['iv'];
	$pw1 = openssl_decrypt($_POST['pw'], 'AES-128-CBC', $key, OPENSSL_ZERO_PADDING, $iv);
	// echo "<script> alert('$pw1');</script>"; 
	$i = 0;
	for(;$i<strlen($pw1);$i++){
		if(ord($pw1[$i]) < 33 || ord($pw1[$i]) > 126){
			break;
		}
	}
	$pw1=substr_replace($pw1, "", $i, strlen($pw1) - $i);
	//PHPCMS-V9加密
	$pw = md5(md5(trim($pw1)).$salt);
	
	//命令查询字符
	$q = "select * from users where username = '$_POST[username]' and password = '$pw';";
	
	//执行
	$result = mysqli_query($conn, $q);
	//mysql_fetch_assoc() 函数从结果集中取得一行作为关联数组。
	if($row = mysqli_fetch_row($result)){
		$private_key = openssl_get_privatekey(file_get_contents("rsa_private_key.txt"));
		setcookie("petname", private_encrypt($row[1], $private_key));
		if($_POST['username'] === '15215087488'){
			$_SESSION['manager'] = "dontdoit";
			echo "<script> alert('登录成功');parent.location.href='manager/index.php';</script>"; 
		}
		else{
			$_SESSION['manager'] = "0";
			echo "<script> alert('登录成功');parent.location.href='buypage/index.html';</script>"; 
		}
	}
	else{
		echo "<script> alert('密码有误');parent.location.href='login.html'; </script>"; 
	}

	//
?>