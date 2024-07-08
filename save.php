<?php
require_once("class/verify.php");
$type = $_POST["type"];
$db = new CONN();  //造新对象

switch($type)
{
	case 1:
	if(empty($_POST["text"])){
		echo "请填写您要回复或发布的内容！";
	}else{
		if(empty($_POST["part"])){
			$lev = 0;
		}else{
			$lev = $_POST["part"];
		}
		$tex = $_POST["text"];
		if($_SESSION["adm"] == 9){
			$db->Query("INSERT INTO book (nam,cont,lev,pas,tim,bip) value ('".$nam."','".$tex."','".$lev."',1,'".time()."','".getip()."')",0);
			if($lev != 0){$db->Query("UPDATE book SET adm = 1 WHERE id = {$lev} LIMIT 1",0);}
			echo "send-success";
		}else{
			$db->Query("INSERT INTO book (nam,cont,lev,tim,bip) value ('".$nam."','".$tex."','".$lev."','".time()."','".getip()."')",0);
			echo "您已成功发布或回复，请等待审核。";
		}
	}
	break;

	case 2:
	$id = $_POST["id"];
	$db->Query("UPDATE book SET top = 1 WHERE id = {$id} LIMIT 1",0);
	echo "留言置顶成功";
	break;

	case 3:
	$id = $_POST["id"];
	$db->Query("DELETE FROM book WHERE id = {$id} LIMIT 1",0);
	echo "留言删除成功";
	break;
}
?>