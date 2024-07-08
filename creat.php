<!DOCTYPE html>
<?php
session_start();
if(empty($_SESSION["id"])){ 
    header("Location:index.php");
    exit();
}
if(!empty($_SESSION["nam"])){ 
    header("Location:main.php");
    exit();
}
require_once("class/config.php");
if(isset($_POST['creatchar'])){
    require_once("class/conn.php");
    $db = new CONN();
    $cknam = $db->Query("SELECT id FROM usr WHERE nam = '".$_POST["nam"]."' LIMIT 1");
    if(empty($cknam)){
        $db->Query("UPDATE usr SET nam = '".$_POST["nam"]."',sex = '".$_POST["sex"]."' WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
        header("Location:main.php");
        exit();
    }else{
        $error = '1';
    }    
    
}
?>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title><?php echo $sysname." - ".$company; ?></title>
    <link rel="stylesheet" type="text/css" href="style/default.css">
    <link rel="stylesheet" type="text/css" href="style/animate.css">
    <link rel="stylesheet" type="text/css" href="style/notice.css">
</head>
<body>
    <div id="main-frame" class="main" style="background-image:url(images/background/login.jpg)">
        <div class="login">
            <ul>
            <form action="#" method="POST">
                <li><input type="text" placeholder="请输入您要使用的角色名（最大8位汉字）" name="nam" onkeyup="value=value.replace(/[^\u4E00-\u9FA5]/g,'')" autocomplete="OFF" required></li>
                <li>
                <input type="radio" name="sex" id="sex1" value="1" style="display:none" checked/>
                <label for="sex1" class="sex-img m-img"></label>
                <input type="radio" name="sex" id="sex2" value="2" style="display:none"/>
                <label for="sex2" class="sex-img f-img"></label>
                </li>
                <li><button type="submit" name="creatchar">建立角色</button></li>
            </form>
            </ul>
        </div>
    </div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/notice.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<?php
if(!empty($error)){
    echo "<script>new NoticeJs({ text: '游戏角色名重复', position: 'middleCenter', type: 'warning',timeout: 30,
        animation: { open: 'animated flipInX',close: 'animated flipOutX',}}).show();</script>";
}
?>
</html>