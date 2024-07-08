<?php
if(empty($_POST["usr"]) || empty($_POST["pwd"])){
	echo "请正确填写登录账号和密码！";
}else{
	require_once("class/config.php");
	require_once("class/conn.php");
	$db = new CONN(); 
	$usr = $_POST["usr"];
	$pwd = $_POST["pwd"];
	$salt = substr($pwd,-17,4);
	$pwd = crypt($pwd,$salt);
	$sql = "SELECT id,pwd,power FROM usr WHERE usr='".$usr."' LIMIT 1";
	$attr = $db->Query($sql);
	session_start();
	if(empty($attr)){
		$db->Query("INSERT INTO usr (usr,pwd,ltim,lip) value ('".$usr."','".$pwd."','".time()."','".getip()."')",0);
		$_SESSION["id"] = $attr[0][0];
		echo "login-success";
	//echo "系统维护，注册已经关闭。";
	}else{
		if(!empty($pwd) && $attr[0][1]==$pwd){
			if($attr[0][2] > 0){
				$_SESSION["adm"] = $attr[0][2];
			}
			$_SESSION["id"] = $attr[0][0];
			$db->Query("UPDATE usr SET ltim = '".time()."',lip = '".getip()."' WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
			echo "login-success";
		}else{
			echo "登录失败，账号密码错误！";
		}
	}
}
?>