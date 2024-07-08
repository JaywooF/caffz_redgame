<!DOCTYPE html>
<?php
require_once("class/verify.php");
require_once("class/crypt.php");
$array = $db->Query("SELECT scene,bk,img FROM scene WHERE id = ".$sid." LIMIT 1");
if(empty($array)){
    echo '出错信息，错误404';
}else{
    $scont = $array[0][0];
    $bgimg = $array[0][1];
    $npcimg = $array[0][2];
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
    <link rel="stylesheet" type="text/css" href="style/minimalTips.css">
    <link rel="stylesheet" type="text/css" href="style/notice.css">
</head>
<body>
<audio id="au_sell" src="audio/sell.mp3"/></audio>
<audio id="au_click" src="audio/click.mp3"/></audio>
<audio id="au_weapon" src="audio/weapon.mp3"/></audio>
<audio id="au_item" src="audio/item.mp3"/></audio>
<audio id="au_used" src="audio/used.mp3"/></audio>
<audio id="au_atk" src="audio/atk.mp3"/></audio>
<audio id="au_def" src="audio/def.mp3"/></audio>
<audio id="au_win" src="audio/win.mp3"/></audio>
<audio id="au_fail" src="audio/fail.mp3"/></audio>
<audio id="au_error" src="audio/error.mp3"/></audio>
<audio id="au_page" src="audio/page.mp3"/></audio>
<audio id="au_fight" src="audio/fight.mp3"/></audio>
<audio id="au_ready" src="audio/ready.mp3"/></audio>
<audio id="au_rock" src="audio/rock.mp3"/></audio>
<a href="book.php" target="_blank"><img src="images/button/notice.png" style="margin-left:94%;margin-top:2%" title="留言版"></a>
<div id="main-frame">
    <div class="main" style="background-image:url(images/background/<?php echo $bgimg; ?>)">
        <div class="char-list">
            <div class="avatar"><img src="images/sex/<?php echo $sex; ?>" width="100"></div>
            <div class="avatar-content">
                <div class="char-life" id="life">
                    <div class="max-hp" style="width:<?php echo $nhp; ?>%"></div>
                </div>
                <div class="char-name"><?php echo $nam; ?></div>
            </div>
        </div>
        <div class="point-list" id="point">
            <div class="p-num"><?php echo $achv; ?></div>
            <div class="p-img"><img src="images/point.png" width="45"></div>
            <div class="p-num"><?php echo $mun; ?></div>
            <div class="p-img"><img src="images/money.png" width="45"></div>            
        </div>
        <div class="menu-list">
            <div class="menu-ico" onclick="getrank();"><img src="images/menu/rank.png"></div>
            <div class="menu-ico" onclick="getchar();"><img src="images/menu/char.png"></div>
            <div class="menu-ico" onclick="getshop();"><img src="images/menu/shop.png"></div>
            <div class="menu-ico" onclick="getbag();"><img src="images/menu/bag.png"></div>
        </div>
        <div id="talk-view">
        <div class="img-list">
            <?php
            if(!empty($npcimg)){
                echo '<img src="images/avatar/'.$npcimg.'">';
            }
            ?>
        </div>
        <div class="view-list">
            <div class="view">
                <p><?php echo $scont; ?></p>
                <ul>
                    <?php
                    $sql = "SELECT action,link,typ FROM action WHERE sid = ".$sid." order by id";
                    $array = $db->Query($sql);
                    foreach ($array as $value) {
                        if($value[2] == 1 || $value[2] == 12){ echo '<li onclick="step('.$value[1].')">'.$value[0].'</li>'; }
                        if($value[2] == 2){ echo '<li onclick="ston('.$value[1].')">'.$value[0].'</li>'; }
                        if($value[2] == 5){ echo '<li onclick="replay()">'.$value[0].'</li>'; }
                        if($value[2] == 9){ echo '<li onclick="atk('.$value[1].')">'.$value[0].'</li>'; }
                    }
                    ?>
                </ul>
            </div>
        </div>
        </div>
    </div>
</div>
<div id="rankinfo"></div>
<div id="charinfo"></div>
<div id="shopinfo"></div>
<div id="baginfo"></div>


</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/notice.js"></script>
<script type="text/javascript" src="js/minimalTips.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
</html>