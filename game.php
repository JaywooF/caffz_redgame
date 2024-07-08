<?php
require_once("class/verify.php");
require_once("class/crypt.php");
$type = $_POST["type"];
$db = new CONN();  //造新对象

switch($type)
{
    case 1://刷新左上角血条面板
    $result = $db->Query("SELECT hp,mhp FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
    $hp = round($result[0][0]/$result[0][1]*100);
    echo '<div class="max-hp" style="width:'.$hp.'%"></div>';
    break;

    case 2:
    $result = $db->Query("SELECT achv,mun FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
    echo '<div class="p-num">'.$result[0][0].'</div>
        <div class="p-img"><img src="images/point.png" width="45"></div>
        <div class="p-num">'.$result[0][1].'</div>
        <div class="p-img"><img src="images/money.png" width="45"></div>  ';
    break;

	case 11://调取角色信息
    $result = $db->Query("SELECT nam,sex,atk,def,hp,mhp FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
    $nam = $result[0][0];
    if($result[0][1] == 1){
        $sex = "char-boy.png";
    }else{
        $sex = "char-girl.png";
    }
    $atk = $result[0][2];
    $def = $result[0][3];
    $hp = $result[0][4];
    $mhp = $result[0][5];
    $wrs = $db->Query("SELECT item.nam,item.img FROM item,equip WHERE equip.uid = '".$_SESSION["id"]."' and equip.used = 1 and item.typ = 2 and equip.iid = item.id LIMIT 1");
    if(empty($wrs)){
        $weapon = '<img src="images/item/noimg.png">';
    }else{
        $weapon = '<img src="images/item/'.$wrs[0][1].'" title="'.$wrs[0][0].'">';
    }
    $ars = $db->Query("SELECT item.nam,item.img FROM item,equip WHERE equip.uid = '".$_SESSION["id"]."' and equip.used = 1 and item.typ = 3 and equip.iid = item.id LIMIT 1");
    if(empty($ars)){
        $armor = '<img src="images/item/noimg.png">';
    }else{
        $armor = '<img src="images/item/'.$ars[0][1].'" title="'.$ars[0][0].'">';
    }
    echo '<div class="info-close" onclick="outchar()"></div>
    <div class="info-char" style="background-image:url(images/sex/'.$sex.'"></div>
    <div class="info-item">
        '.$weapon.$armor.'
    </div>
    <div class="info-value">
        <p>'.$nam.'</p>
        <p>攻击：'.$atk.'<span style="margin-left:20px;">防御：'.$def.'</span></p>
        <p>体力：'.$hp.' / '.$mhp.'</p></div>';
    echo '<script>$(document).ready(function() { $.minimalTips();});</script>';
    break;

    case 12://成就排行数据调取
    $result = $db->Query("SELECT nam,sex,achv FROM usr WHERE nam != '' ORDER BY achv DESC LIMIT 10");
    $rank = 1;
    $myrank = $db->Query("SELECT b.rownum,b.nam,b.sex,b.achv FROM (SELECT a.*, @rownum := @rownum + 1 AS rownum FROM ( SELECT id,nam,sex,achv FROM usr WHERE nam != '' ORDER BY achv DESC ) AS a,( SELECT @rownum := 0 ) r  ) AS b WHERE b.id = '".$_SESSION["id"]."'");
    echo '<div class="info-close" onclick="outrank()"></div>
    <div class="list-rank">';
    foreach ($result as $value) {
        echo '<table><tr><td width="10%">'.$rank.'</td>';
        if($value[1] == 1){
            echo '<td width="20%"><img src="images/sex/boy.png" width="30"></td>';
        }else{
            echo '<td width="20%"><img src="images/sex/girl.png" width="30"></td>';
        }
        echo '<td width="45%">'.$value[0].'</td>';
        echo '<td width="25%">'.$value[2].'</td><tr>';
        $rank = $rank + 1;
    }
    echo '</table></div><div class="list-myrank">';
    echo '<table><tr><td width="10%">'.$myrank[0][0].'</td>';
        if($myrank[0][2] == 1){
            echo '<td width="20%"><img src="images/sex/boy.png" width="30"></td>';
        }else{
            echo '<td width="20%"><img src="images/sex/girl.png" width="30"></td>';
        }
    echo '<td width="45%">'.$myrank[0][1].'</td>';
    echo '<td width="25%">'.$myrank[0][3].'</td><tr>';
    echo '</table></div>';
    break;

    case 13: //列出商店道具
    $sql = "SELECT item.id,item.img,item.nam FROM item,shop WHERE item.id = shop.iid ORDER BY item.typ,item.pc";
    $result = $db->Query($sql);
    echo '<div class="info-close" onclick="outshop()"></div>
    <div class="list-item">';
    foreach ($result as $v) {
    	echo '<img class="mintip" src="images/item/'.$v[1].'" title="'.$v[2].'" onclick="item('.$v[0].')">';
    }
    echo '</div><div class="view-item" id="view-item"></div>';
    echo '<script>$(document).ready(function() { $.minimalTips();});</script>';
    break;

    case 131: //列出道具详情
    $sql = "SELECT id,nam,pc,text FROM item WHERE id = '".$_POST['id']."' LIMIT 1";
    $result = $db->Query($sql);
    echo '<h3>'.$result[0][1].' - 售价 '.$result[0][2].' 银元</h3><p>'.$result[0][3].'<p>';
    echo '<div class="item-btn" onclick="buy('.$result[0][0].')"></div>';
    break;

    case 132: //商店购买道具
    $sql = "SELECT pc,typ FROM item WHERE id = '".$_POST['id']."' and pc <= ( SELECT mun FROM usr WHERE id = '".$_SESSION["id"]."' ) LIMIT 1";
    $result = $db->Query($sql);
    if(empty($result)){
        echo '您的银元不足，购买失败！';
    }else{
        $db->Query("UPDATE usr SET mun = mun - ".$result[0][0]." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
        if($result[0][1] == 4){
            $num = $db->Query("SELECT num FROM equip WHERE uid = '".$_SESSION["id"]."' and iid = '".$_POST['id']."'");
                if(empty($num)){
                    $db->Query("INSERT INTO equip (typ,iid,uid) value (".$result[0][1].",".$_POST['id'].",".$_SESSION["id"].")",0);
                }else{
                    $db->Query("UPDATE equip SET num = num + 1 WHERE uid = '".$_SESSION["id"]."' and iid = '".$_POST['id']."'",0);
                }
        }else{
            $db->Query("INSERT INTO equip (typ,iid,uid) value (".$result[0][1].",".$_POST['id'].",".$_SESSION["id"].")",0);
        }
        
        
        echo "buy-success";
    }
    break;

    case 14://弹出背包信息
    $sql = "SELECT equip.id,item.img,item.nam,equip.num,item.typ,equip.used FROM item,equip WHERE item.id = equip.iid and equip.uid = '".$_SESSION["id"]."' ORDER by item.typ";
    $result = $db->Query($sql);
    echo '<div class="info-close" onclick="outbag()"></div>
    <div class="list-item">';
    foreach ($result as $v) {
        echo '<div class="bag-item mintip" style="background-image:url(images/item/'.$v[1].')" title="'.$v[2].'" onclick="myitem('.$v[0].')">';
        if($v[4] == 4){ echo '<div class="item-num">'.$v[3].'</div>'; }
        if($v[5] == 1){ echo '<div class="item-eq">已装备</div>'; }
        echo '</div>';
    }
    echo '</div><div class="view-item" id="view-bag"></div>';
    echo '<script>$(document).ready(function() { $.minimalTips();});</script>';
    break;

    case 141://背包道具详细信息
    $sql = "SELECT equip.id,item.nam,item.pc,item.text,item.typ,equip.used FROM item,equip WHERE equip.id = '".$_POST['id']."' and item.id = equip.iid LIMIT 1";
    $result = $db->Query($sql);
    echo '<h3>'.$result[0][1].' - 出售价格 '.round($result[0][2]*0.8).' 银元</h3><p>'.$result[0][3].'<p>';
    if($result[0][4] == 4){
        echo '<div class="item-use" onclick="used('.$result[0][0].')"></div>';
    }
    if($result[0][4] == 2 || $result[0][4] == 3){
        if($result[0][5] == 1 ){
            echo '<div class="item-remove" onclick="remove('.$result[0][0].','.$result[0][4].')"></div>';
        }else{
            echo '<div class="item-equip" onclick="equip('.$result[0][0].','.$result[0][4].')"></div>';
        }      
    }
    echo '<div class="item-sell" onclick="sell('.$result[0][0].')"></div>';
    break;

    case 142://卖掉道具
    $sql = "SELECT item.pc,equip.used,item.typ FROM item,equip WHERE equip.id = '".$_POST['id']."' and item.id = equip.iid LIMIT 1";
    $result = $db->Query($sql);
    if($result[0][1] == 1){
        echo "请先解除装备再进行出售。";
    }else{
        $mun = round($result[0][0]*0.8);
        if($result[0][2] == 4){
            $num = $db->Query("SELECT num FROM equip WHERE uid = '".$_SESSION["id"]."' and id = '".$_POST['id']."' LIMIT 1");
            if($num[0][0] <= 1){
                $db->Query("DELETE FROM equip WHERE id='".$_POST['id']."'",0);
            }else{
                $db->Query("UPDATE equip SET num = num - 1 WHERE id = '".$_POST['id']."'",0);
            }
        }else{
            $db->Query("DELETE FROM equip WHERE id='".$_POST['id']."'",0);
        }
        $db->Query("UPDATE usr SET mun = mun + ".$mun." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
        echo "sell-success";
        
    }
    break;

    case 143://装备道具
    
    if($_POST['typ'] == 2){
        $item = "武器";
    }else{
        $item = "防具";
    }
    $num = $db->Query("SELECT used FROM equip WHERE uid = '".$_SESSION["id"]."' and typ = '".$_POST['typ']."' and used = 1");
        if(!empty($num)){
            echo "您已经装备过".$item."了！";
        }else{
            $rs = $db->Query("SELECT item.attr,item.val FROM item,equip WHERE equip.id = '".$_POST['id']."' and equip.iid = item.id LIMIT 1");
            $action = $rs[0][0]."=".$rs[0][0]."+".$rs[0][1];
            $db->Query("UPDATE usr SET ".$action." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
            $db->Query("UPDATE equip SET used = 1 WHERE id = '".$_POST['id']."' LIMIT 1",0);
            echo "equip-success";
        }
    break;

    case 144://解除装备
    if($_POST['typ'] == 2){
        $item = "武器";
    }else{
        $item = "防具";
    }
    $num = $db->Query("SELECT used FROM equip WHERE uid = '".$_SESSION["id"]."' and typ = '".$_POST['typ']."' and used = 1");
        if(empty($num)){
            echo "您没有装备过".$item."！";
        }else{
            $rs = $db->Query("SELECT item.attr,item.val FROM item,equip WHERE equip.id = '".$_POST['id']."' and equip.iid = item.id LIMIT 1");
            $action = $rs[0][0]."=".$rs[0][0]."-".$rs[0][1];
            $db->Query("UPDATE usr SET ".$action." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
            $db->Query("UPDATE equip SET used = 0 WHERE id = '".$_POST['id']."' LIMIT 1",0);
            echo "remove-success";
        }
    break;

    case 145://使用道具
    $rs= $db->Query("SELECT item.attr,item.val,equip.num FROM item,equip WHERE equip.id = '".$_POST['id']."' and equip.iid = item.id and item.typ = 4 LIMIT 1");
    if(!empty($num)){
            echo "道具无法使用！";
        }else{
        	$hp = $db->Query("SELECT hp,mhp FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
        	if($rs[0][0] == "hp" && $hp[0][0] >= $hp[0][1]){
        		$db->Query("UPDATE usr SET hp = mhp WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
        		echo "您的体力不需要补充了！";
        	}else{
        		if($rs[0][2] <= 1){
        			$db->Query("DELETE FROM equip WHERE id='".$_POST['id']."'",0);
        		}else{
        			$db->Query("UPDATE equip SET num = num - 1 WHERE id = '".$_POST['id']."' LIMIT 1",0);
        		}
        		if($rs[0][0] == "hp"){
                $hp = $db->Query("SELECT hp,mhp FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
                    $nhp = $hp[0][0] + $rs[0][1];
                    if($nhp >= $hp[0][1]){
                        $db->Query("UPDATE usr SET hp = mhp WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
                        echo "used-success";
                    }else{
                    	$nhp = $hp[0][0] + $rs[0][1];
                        $db->Query("UPDATE usr SET hp = hp + ".$rs[0][1]." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
                        echo "used-success";
                    }
                }else{
                    $db->Query("UPDATE usr SET mhp = mhp + ".$rs[0][1]." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
                    echo "used-success";
                }
        	}
        }
    break;

    case 21: //普通事件推进
    $sid = $_POST['id'];
    $array = $db->Query("SELECT scene,bk,img,item,achv FROM scene WHERE id = '".$sid."' LIMIT 1");
    if(empty($array)){
        echo '出错信息，错误404';
        exit;
    }

    if(!empty($array[0][4])){
        $db->Query("UPDATE usr SET achv = achv + ".$array[0][4]." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
        $anum = $array[0][4];
        $achv = $achv +$anum;
    }
    if(!empty($array[0][3])){
        $item = $db->Query("SELECT typ,nam FROM item WHERE id = '".$array[0][3]."' LIMIT 1");
        if($item[0][0] == 4){
            $num = $db->Query("SELECT num FROM equip WHERE uid = '".$_SESSION["id"]."' and iid = '".$array[0][3]."'");
            if(empty($num)){
                $db->Query("INSERT INTO equip (typ,iid,uid) value ('".$item[0][0]."','".$array[0][3]."','".$_SESSION["id"]."')",0);
            }else{
                $db->Query("UPDATE equip SET num = num + 1 WHERE uid = '".$_SESSION["id"]."' and iid = '".$array[0][3]."'",0);
            }
        }else{
            $db->Query("INSERT INTO equip (typ,iid,uid) value (".$item[0][0].",".$array[0][3].",".$_SESSION["id"].")",0);
        }        
        if(empty($anum)){
            $imsg = "获得道具 【 ".$item[0][1]." 】 。";
        }else{
            $imsg = "获得 ".$anum." 成就、 道具【 ".$item[0][1]." 】 。";
        }
    }else{
        if(empty($anum)){
            $imsg = "";
        }else{
            $imsg = "获得 ".$anum." 成就 。";
        }
    }

    $db->Query("UPDATE usr SET sid = '".$sid."' WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
    echo '<div class="main" style="background-image:url(images/background/'.$array[0][1].')">
        <div class="char-list">
            <div class="avatar"><img src="images/sex/'.$sex.'" width="100"></div>
            <div class="avatar-content">
                <div class="char-life" id="life">
                    <div class="max-hp" style="width:'.$nhp.'%"></div>
                </div>
                <div class="char-name">'.$nam.'</div>
            </div>
        </div>
        <div class="point-list" id="point">
            <div class="p-num">'.$achv.'</div>
            <div class="p-img"><img src="images/point.png" width="45"></div>
            <div class="p-num">'.$mun.'</div>
            <div class="p-img"><img src="images/money.png" width="45"></div>            
        </div>
        <div class="menu-list">
            <div class="menu-ico" onclick="getrank();"><img src="images/menu/rank.png"></div>
            <div class="menu-ico" onclick="getchar();"><img src="images/menu/char.png"></div>
            <div class="menu-ico" onclick="getshop();"><img src="images/menu/shop.png"></div>
            <div class="menu-ico" onclick="getbag();"><img src="images/menu/bag.png"></div>
        </div>
        <div id="talk-view">
        <div class="img-list">';
        if(!empty($array[0][2])){
            echo '<img src="images/avatar/'.$array[0][2].'">';
        }
        echo '</div>
        <div class="view-list">
            <div class="view">
                <p>'.$array[0][0].'</p>
                <ul>';
        $sql = "SELECT action,link,typ FROM action WHERE sid = '".$sid."' and typ < 10 order by id";
        $array = $db->Query($sql);
        foreach ($array as $value) {
            if($value[2] == 1){ echo '<li onclick="step('.$value[1].')">'.$value[0].'</li>'; }
            if($value[2] == 2){ echo '<li onclick="ston('.$value[1].')">'.$value[0].'</li>'; }
            if($value[2] == 5){ echo '<li onclick="replay()">'.$value[0].'</li>'; }
            if($value[2] == 9){ echo '<li onclick="atk('.$value[1].')">'.$value[0].'</li>'; }
            
        }
        echo '</ul>
            </div>
        </div>
        </div>
    </div>';
    if(!empty($imsg)){
        echo '<script>notic("'.$imsg.'",20,"success");</script>';
    } 
    break;

    case 22://剪刀石头布小游戏信息列取
    $sid = $_POST["id"];
    $db->Query("UPDATE usr SET sid = '".$sid."' WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
    echo '<div class="img-list"><img src="images/avatar/stone.png"></div>';
    echo '<div class="view-list">
            <div class="view">
                <p>这个游戏起源自汉朝的手势令与豁拳，石头克剪刀，剪刀克布，布克石头，因为三者相互制约，因此不论平局几次，总会有胜负的时候，想好你要出什么吧！</p>';
    echo '<img src="images/button/rock.png" class="img-ston" onclick="stone('.$sid.',1)">
          <img src="images/button/paper.png" class="img-ston" onclick="stone('.$sid.',2)">
          <img src="images/button/scissors.png" class="img-ston" onclick="stone('.$sid.',3)">
            </div>
        </div>';
    break;

    case 221://剪刀石头布数据处理
    $id = $_POST["id"];
    $sid = $_POST["sid"];
    $num = rand(1,3);
    if($id == $num){
        $msg = "平局！再来，咱们一决胜负！";
        $selt = '<img src="images/button/rock.png" class="img-ston" onclick="stone('.$sid.',1)">
        <img src="images/button/paper.png" class="img-ston" onclick="stone('.$sid.',2)">
        <img src="images/button/scissors.png" class="img-ston" onclick="stone('.$sid.',3)">';
    }
    if(($id == 1 && $num == 2) || ($id == 2 && $num == 3) || ($id == 3 && $num == 1)){
        $array = $db->Query("SELECT action,link FROM action WHERE sid = '".$sid."' and typ = 22 order by id");
        $msg = "太遗憾了，你输了！";
        $selt = '<li onclick="step('.$array[0][1].')">'.$array[0][0].'</li>';
    }
    if(($id == 1 && $num == 3) || ($id == 2 && $num == 1) || ($id == 3 && $num == 2)){
        $rs = $db->StrQuery("SELECT gam FROM scene WHERE id = '".$sid."' LIMIT 1");
        $array = $db->Query("SELECT action,link FROM action WHERE sid = '".$sid."' and typ = 21 LIMIT 1");
        $item = $db->Query("SELECT typ,nam FROM item WHERE id = '".$rs."' LIMIT 1");
        if($item[0][0] == 4){
            $num = $db->Query("SELECT num FROM equip WHERE uid = '".$_SESSION["id"]."' and iid = '".$rs."'");
            if(empty($num)){
                $db->Query("INSERT INTO equip (typ,iid,uid) value (".$item[0][0].",".$rs.",".$_SESSION["id"].")",0);
            }else{
                $db->Query("UPDATE equip SET num = num + 1 WHERE uid = '".$_SESSION["id"]."' and iid = '".$rs."'",0);
            }
        }else{
            $db->Query("INSERT INTO equip (typ,iid,uid) value ('".$item[0][0]."','".$rs."','".$_SESSION["id"]."')",0);
        }  
        $msg = "你赢了！获得道具 【 ".$item[0][1]." 】 。";
        $selt = '<li onclick="step('.$array[0][1].')">'.$array[0][0].'</li>';
    }
    echo '<div class="img-list"><img src="images/avatar/stone.png"></div>';
    echo '<div class="view-list">
            <div class="view">
                <p>'.$msg.'</p><ul>';
    echo $selt;
    echo '</ul></div>
        </div>';
    break;

    case 29://进入战斗场景
    $sid = $_POST['id'];
    $array = $db->Query("SELECT mon.atk,mon.def,mon.hp,mon.img,scene.bk FROM scene,mon WHERE scene.id = '".$sid."' and scene.mon = mon.id LIMIT 1");
    if(empty($array)){
        echo '出错信息，错误404';
        exit;
    }
    $db->Query("UPDATE usr SET sid = '".$sid."' WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
    $result = $db->Query("SELECT atk,def FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
    $_SESSION["char"] = round($result[0][0]*((1-$array[0][1]*0.06)/($array[0][1]*0.06+1)));
    $_SESSION["npc"] =  round($array[0][0]*((1-$result[0][1]*0.06)/($result[0][1]*0.06+1)));
    $_SESSION["hp"] = $array[0][2];
    $_SESSION["mhp"] = $array[0][2];
    $_SESSION["nhp"] = round($_SESSION["hp"]/$_SESSION["mhp"]*100);

    $db->Query("UPDATE usr SET achv = achv - 1 WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
    echo '<div class="main" style="background-image:url(images/background/'.$array[0][4].')">
        <div class="char-list">
            <div class="avatar"><img src="images/sex/'.$sex.'" width="100"></div>
            <div class="avatar-content">
                <div class="char-life" id="life">
                    <div class="max-hp" style="width:'.$nhp.'%"></div>
                </div>
                <div class="char-name">'.$nam.'</div>
            </div>
        </div>
        <div class="point-list" id="point">
            <div class="p-num">'.$achv.'</div>
            <div class="p-img"><img src="images/point.png" width="45"></div>
            <div class="p-num">'.$mun.'</div>
            <div class="p-img"><img src="images/money.png" width="45"></div>            
        </div>
        <div class="menu-list">
            <div class="menu-ico" onclick="getrank();"><img src="images/menu/rank.png"></div>
            <div class="menu-ico" onclick="getchar();"><img src="images/menu/char.png"></div>
            <div class="menu-ico" onclick="getshop();"><img src="images/menu/shop.png"></div>
            <div class="menu-ico" onclick="getbag();"><img src="images/menu/bag.png"></div>
        </div>
        <div class="img-atk" id="atk-npc">
        <img src="images/mon/'.$array[0][3].'">
        <div class="npc-maxlife" id="npc-life"><div class="npc-hp" style="width:'.$_SESSION["nhp"].'%"></div></div>
        </div>
        <div class="view-atk" id="atk-char">
            <div class="view">';
        $sql = "SELECT * FROM qu AS t1 JOIN (SELECT ROUND(RAND() * ((SELECT MAX(id) FROM qu)-(SELECT MIN(id) FROM qu))+(SELECT MIN(id) FROM qu)) AS id) AS t2 WHERE t1.id >= t2.id ORDER BY t1.id LIMIT 1";
        //$sql = "SELECT id,stem,opt FROM qu LIMIT 1";
        $qu = $db->Query($sql);
        echo '<input type="hidden" value="'.$qu[0][0].'" readonly id="ans">';
        echo '<p>'.$qu[0][1].'</p>';
        echo '<ul>';
        $ans = explode("|",$qu[0][2]);
        $i = 1;
        foreach ($ans as $v) {
        	echo '<li onclick="subans('.$i.')">'.$v.'</li>';
        	$i = $i + 1;
        }
        echo '</ul>';
        echo '<div class="timbar-bg"><div id="timbar" class="timbar"></div></div>';
        echo '</div>';
        echo '<script>var count=100; myTimer = setInterval(timbar,'.$ans_tim.');</script>';
        echo '</div></div>';
    break;

    case 291://攻击判定
    $sql = "SELECT a FROM qu WHERE id = '".$_POST['id']."' and a = '".$_POST['a']."' LIMIT 1";
    $hp = $db->StrQuery("SELECT hp FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
    $dluck = rand(1,100);
    if(empty($db->Query($sql))){
        if($dluck > $def2){
            $hp = $hp - $_SESSION["npc"];
        }else{
            $hp = $hp - $_SESSION["npc"]/2;
        }
        if($hp < 1){
            $db->Query("UPDATE usr SET hp = 0 WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
            $_SESSION["char"] = "";
            $_SESSION["npc"] =  "";
            $_SESSION["hp"] = "";
            $_SESSION["mhp"] = "";
            $_SESSION["nhp"] = "";
            echo "char-fail";
        }else{
            $db->Query("UPDATE usr SET hp = ".$hp." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
            echo "atk-fail";
        }
    }else{
        $aluck = rand(1,100);
        if($aluck > $atk2){
            $_SESSION["hp"] = $_SESSION["hp"] - $_SESSION["char"]*2;
        }else{
            $_SESSION["hp"] = $_SESSION["hp"] - $_SESSION["char"];
        }       
        if($_SESSION["hp"] < 1){
            $_SESSION["char"] = "";
            $_SESSION["npc"] =  "";
            $_SESSION["hp"] = "";
            $_SESSION["mhp"] = "";
            $_SESSION["nhp"] = "";
            echo "char-win";
        }else{
            $_SESSION["nhp"] = round($_SESSION["hp"]/$_SESSION["mhp"]*100);
            /*此处为攻击成功自身也会受到攻击
            if($dluck > $def2){
                $hp = $hp - $_SESSION["npc"];
            }else{
                $hp = $hp - $_SESSION["npc"]/2;
            }           
            if($hp < 1){
                $db->Query("UPDATE usr SET hp = 0 WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
                $_SESSION["char"] = "";
                $_SESSION["npc"] =  "";
                $_SESSION["hp"] = "";
                $_SESSION["mhp"] = "";
                $_SESSION["nhp"] = "";
                echo "char-fail";
            }else{
                $db->Query("UPDATE usr SET hp = ".$hp." WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
                echo "atk-success";
            }
            */
           echo "atk-success";
        }
    }
    break;

    case 292://获取问题
    echo '<div class="view">';
        if($_SESSION["adm"] > 5){
            $sql = "SELECT * FROM qu limit 1";
        }else{
            $sql = "SELECT * FROM qu AS t1 JOIN (SELECT ROUND(RAND() * ((SELECT MAX(id) FROM qu)-(SELECT MIN(id) FROM qu))+(SELECT MIN(id) FROM qu)) AS id) AS t2 WHERE t1.id >= t2.id ORDER BY t1.id LIMIT 1";
        }
        $qu = $db->Query($sql);
        echo '<input type="hidden" value="'.$qu[0][0].'" readonly id="ans">';
        echo '<p>'.$qu[0][1].'</p>';
        echo '<ul>';
        $ans = explode("|",$qu[0][2]);
        $i = 1;
        foreach ($ans as $v) {
        	echo '<li onclick="subans('.$i.')">'.$v.'</li>';
        	$i = $i + 1;
        }
        echo '</ul>';
        echo '<div class="timbar-bg"><div id="timbar" class="timbar"></div>';
        echo '</div>';
        echo '<script>var count = 100; myTimer = setInterval(timbar,'.$ans_tim.');</script>';
    break;

    case 293://刷新敌对NPC血条
    echo '<div class="npc-hp" style="width:'.$_SESSION["nhp"].'%"></div>';
    break;

    case 294://战斗结算
    $sid = $db->StrQuery("SELECT sid FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1");
    $aid = $_POST['id'];
    $getmsg = "";
    if($aid == 12){
        $array = $db->Query("SELECT scene,bk,img FROM scene WHERE id = '".$sid."' LIMIT 1");
        $db->Query("UPDATE usr SET hp = mhp WHERE id = '".$_SESSION["id"]."' LIMIT 1",0); 
    }else{
        $array = $db->Query("SELECT scene.scene,scene.bk,scene.img,mon.drop,mon.dpr,mon.mun,item.typ,item.nam FROM scene,mon,item WHERE scene.id = '".$sid."' and scene.mon = mon.id and item.id = mon.drop LIMIT 1");
        if($_SESSION["adm"] > 5){
            $dpr = 1;
        }else{
            $dpr = rand(1,100);
        }
            if($dpr > $array[0][4]){
                $db->Query("UPDATE usr SET hp = mhp,achv = achv + 3,mun = mun + '".$array[0][5]."' WHERE id = '".$_SESSION["id"]."' LIMIT 1",0); 
                $getmsg = " 【 获得 ".$array[0][5]." 银元 】";
            }else{
                $db->Query("UPDATE usr SET hp = mhp,achv = achv + 3 WHERE id = '".$_SESSION["id"]."' LIMIT 1",0); 
                if($array[0][6] == 4){
                    $num = $db->StrQuery("SELECT num FROM equip WHERE uid = '".$_SESSION["id"]."' and iid = '".$array[0][3]."'");
                     if(empty($num)){
                        $db->Query("INSERT INTO equip (typ,iid,uid) value ('".$array[0][6]."','".$array[0][3]."','".$_SESSION["id"]."')",0);
                    }else{
                        $db->Query("UPDATE equip SET num = num + 1 WHERE uid = '".$_SESSION["id"]."' and iid = '".$array[0][3]."'",0);
                    }
                }else{
                    $db->Query("INSERT INTO equip (typ,iid,uid) value ('".$array[0][6]."','".$array[0][3]."','".$_SESSION["id"]."')",0);
                }
                $getmsg = " 【 获得道具 - ".$array[0][7]." 】";
            }
    }
    echo '<div class="main" style="background-image:url(images/background/'.$array[0][1].')">
        <div class="char-list">
            <div class="avatar"><img src="images/sex/'.$sex.'" width="100"></div>
            <div class="avatar-content">
                <div class="char-life" id="life">
                    <div class="max-hp" style="width:'.$nhp.'%"></div>
                </div>
                <div class="char-name">'.$nam.'</div>
            </div>
        </div>
        <div class="point-list" id="point">
            <div class="p-num">'.$achv.'</div>
            <div class="p-img"><img src="images/point.png" width="45"></div>
            <div class="p-num">'.$mun.'</div>
            <div class="p-img"><img src="images/money.png" width="45"></div>            
        </div>
        <div class="menu-list">
            <div class="menu-ico" onclick="getrank();"><img src="images/menu/rank.png"></div>
            <div class="menu-ico" onclick="getchar();"><img src="images/menu/char.png"></div>
            <div class="menu-ico" onclick="getshop();"><img src="images/menu/shop.png"></div>
            <div class="menu-ico" onclick="getbag();"><img src="images/menu/bag.png"></div>
        </div>
        <div id="talk-view">
        <div class="img-list">';
        if(!empty($array[0][2])){
            echo '<img src="images/avatar/'.$array[0][2].'">';
        }
        echo '</div>
        <div class="view-list">
            <div class="view">
                <p>'.$array[0][0].'</p>
                <ul>';
        $sql = "SELECT action,link FROM action WHERE sid = '".$sid."' and typ = '".$aid."' order by id";
        $array = $db->Query($sql);
        foreach ($array as $value) {
            echo '<li onclick="step('.$array[0][1].')">'.$value[0].$getmsg.'</li>';
        }
        echo '</ul>
            </div>
        </div>
        </div>
    </div>';
    if(!empty($imsg)){
        echo '<script>notic("'.$imsg.'",20,"success");</script>';
    } 
    break;

    case 51://保留30%银元重置游戏
    $money = round($db->StrQuery("SELECT mun FROM usr WHERE id = '".$_SESSION["id"]."' LIMIT 1")*0.3);
    $db->Query("DELETE FROM equip WHERE uid = '".$_SESSION["id"]."'",0);
    $db->Query("UPDATE usr SET mun = ".$money.",atk=5,def=2,hp=50,mhp=50,sid=1000,achv=0,circ=circ+1 WHERE id = '".$_SESSION["id"]."' LIMIT 1",0);
    break;

}
?>