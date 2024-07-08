<?php
session_start();
if(empty($_SESSION["id"]) || $_SESSION["adm"] !=9){ 
	header("Location:../index.php");
    exit();
}
?>