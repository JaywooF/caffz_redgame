<?php
session_start();
if(empty($_SESSION["id"])){ 
	header("Location:index.php");
    exit();
}else{
	require_once("class/config.php");
	require_once("class/conn.php");
	$db = new CONN();
	$result = $db->Query("SELECT nam,sex,hp,mhp,achv,mun,sid FROM usr WHERE id = {$_SESSION["id"]} LIMIT 1");
	if(empty($result[0][0]) || empty($result[0][1])){
		header("Location:creat.php");
		exit;
	}else{
		$nam = $result[0][0];
		if($result[0][1] == 1){
			$sex = "boy.png";
		}else{
			$sex = "girl.png";
		}
		$nhp = round($result[0][2]/$result[0][3]*100);
		$achv = $result[0][4];
		$mun = $result[0][5];
		$sid = $result[0][6];
	}
}
?>