<!DOCTYPE html>
<?php
require_once("class/verify.php");
require_once("class/page.php");
$showrow = 5;
$curpage = empty($_GET['page']) ? 1 : $_GET['page'];
$url = "?page={page}";
$db = new conn();

if(isset($_POST["search"]) && strlen($_POST["search"])>0){
    $like = "'%".$_POST["search"]."%'";
    $sql = "SELECT nam,cont,tim,bip,id,hit,adm,top from book where pas = 1 and lev = 0 and cont LIKE ".$like." order by top desc,id desc";
    $res_num = "SELECT count(id) as ctn from book where pas = 1 and lev = 0 and cont LIKE ".$like." order by top desc,id desc";
}
else{
    $sql = "SELECT nam,cont,tim,bip,id,hit,adm,top from book where pas = 1 and lev = 0 order by top desc,id desc";
    $res_num = "SELECT count(id) as ctn from book where pas = 1 and lev = 0 order by top desc,id desc";
}

$total = $db->strQuery($res_num);
if (!empty($_GET['page']) && $total != 0 && $curpage > ceil($total / $showrow)) {
  $curpage = ceil($total_rows / $showrow);
}
$sql .= " LIMIT " . ($curpage - 1) * $showrow . ",$showrow;";
$result = $db->Query($sql);
?>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title><?php echo $sysname." - ".$company; ?></title>
    <link rel="stylesheet" type="text/css" href="style/book.css">
    <link rel="stylesheet" type="text/css" href="style/animate.css">
    <link rel="stylesheet" type="text/css" href="style/notice.css">
</head>
<body>
<table align="center">
    <tr class="books"><td colspan="2"><h3>
    <?php
    echo $sysname." 讨论交流区 ";
    if($_SESSION["adm"] == 9){
    	echo ' [ <a href="admin/admin.php">管理后台</a> ]';
    }
    ?>
    </h3></td></tr>
    <?php
    if (!empty($result)) {
        foreach ($result as $v){
        	$bnum = $db->strQuery("SELECT count(pas) from book where lev = {$v[4]} and pas = 1");
        	if($v[6] == 1){
        		$atex = "[ 管理员已回复 ]";
        	}else{
        		$atex = "";
        	}
            if($v[7] == 1){
                $tops = "[ 置顶 ]";
            }else{
                $tops = "";
            }
            echo '<tr class="b-tit"><td width="75%">'.$tops.' '.$atex.' 作者：'.$v[0].'</td><td width="25%" align="right">点击['.$v[5].'] 回复['.$bnum.'] </td></tr>';
            echo '<tr class="b-cont"><td colspan="2"><a href="view.php?id='.$v[4].'">'.mb_substr($v[1], 0, 100 ,"utf-8").'……</a></td></tr>';
            echo '<tr class="b-foot"><td colspan="2">发表时间:'.date("Y年m月d日 H:i:s",$v[2]).' - 发表地址：'.$v[3].'</td></tr>';        
        }
        echo '<tr class="b-page"><td colspan="2">';
        if ($total > $showrow) {//总记录数大于每页显示数，显示分页
            $page = new page($total, $showrow, $curpage, $url, 3);
            echo $page->myde_write();
        }
        echo '</td></tr>';
    }else{
        echo '<tr class="b-cont"><td colspan="2">没有找到留言记录。</td></tr>';
    }
    ?>
    <tr>
    <td width="75"><textarea id="text" class="b-tex" maxlength="300" placeholder="输入内容请勿超过300字……"></textarea></td>
    <td width="25"><button id="submit"> 发表留言 </button></td>
    </tr>
</table>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/notice.js"></script>
<script type="text/javascript" src="js/book.js"></script>
</html>