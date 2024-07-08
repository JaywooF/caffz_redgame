<!DOCTYPE html>
<?php
session_start();
session_destroy();
require_once("class/config.php");
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
<audio id="music" src="audio/login.mp3" autoplay="autoplay" loop="loop" volume="0.1"></audio>
<a href="javascript:playPause();" ><img src="images/button/music.png" id="music_btn" style="margin-left:94%;"></a>
    <div id="main-frame" class="main" style="background-image:url(images/background/login.jpg)">
        <div class="login" onclick="music.play();">
            <ul>
                <li><input type="text" placeholder="请输入登录账号" id="usr" required></li>
                <li><input type="password" placeholder="请输入登录密码" id="pwd" required></li>
                <li><button id="submit">登录系统</button></li>
                <li>首次登录自动注册账号</li>
            </ul>
        </div>
    </div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/notice.js"></script>
<script type="text/javascript" src="js/login.js"></script>
</html>