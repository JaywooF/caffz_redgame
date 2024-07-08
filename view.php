<!DOCTYPE html>
<?php
if(empty($_GET['id'])){
    header("Location:book.php");
    exit();
}
require_once("class/verify.php");
require_once("class/page.php");

$id = $_GET['id'];
$bsql = "SELECT nam,cont,tim,bip from book where id = {$id} limit 1";
$row = $db->Query($bsql);
$db->Query("UPDATE book SET hit = hit + 1 WHERE id = {$id} LIMIT 1",0);
$showrow = 5;
$curpage = empty($_GET['page']) ? 1 : $_GET['page'];
$url = "?page={page}&id={$id}";
$db = new conn();

if(isset($_POST["search"]) && strlen($_POST["search"])>0){
    $like = "'%".$_POST["search"]."%'";
    $sql = "SELECT nam,cont,tim,bip from book where pas = 1 and lev = {$id} and cont LIKE ".$like." order by id";
    $res_num = "SELECT count(id) as ctn from book where pas = 1 and lev = {$id} and cont LIKE ".$like." order by id";
}
else{
    $sql = "SELECT nam,cont,tim,bip from book where pas = 1 and lev = {$id} order by id";
    $res_num = "SELECT count(id) as ctn from book where pas = 1 and lev = {$id} order by id";
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
    <tr class="books"><td colspan="2"><h3><?php echo $sysname." 讨论交流区 " ?></h3></td></tr>
    <?php
    echo '<tr class="b-tit"><td width="75%">作者：'.$row[0][0].'</td>';
    if($_SESSION["adm"] == 9){
    	echo '<td width="25%" align="right">[<a onclick="tops('.$id.')">置顶</a>] [<a onclick="del('.$id.')">删除</a>] [<a href="book.php">返回列表</a>] </td></tr>';
    }else{
    	echo '<td width="25%" align="right">[<a href="book.php">返回列表</a>] </td></tr>';
    }
    echo '<tr class="b-cont"><td colspan="2">'.$row[0][1].'</td></tr>';
    echo '<tr class="b-foot"><td colspan="2">发表时间:'.date("Y年m月d日 H:i:s",$row[0][2]).' - 发表地址：'.$row[0][3].'</td></tr>'; 
    if (!empty($result)) {
        foreach ($result as $v){
            echo '<tr class="b-tit"><td width="75%">作者：'.$v[0].'</td><td width="25%"></td></tr>';
            echo '<tr class="b-cont"><td colspan="2">'.$v[1].'</td></tr>';
            echo '<tr class="b-foot"><td colspan="2">发表时间:'.date("Y年m月d日 H:i:s",$v[2]).' - 发表地址：'.$v[3].'</td></tr>';        
        }
    }?>
    <tr class="b-page"><td colspan="2">
    <?php
    if ($total > $showrow) {//总记录数大于每页显示数，显示分页
    	$page = new page($total, $showrow, $curpage, $url, 3);
    	echo $page->myde_write();
    }
    ?></td></tr>
    <tr>
    <td width="75"><textarea id="text" class="b-tex" maxlength="300" placeholder="输入内容请勿超过300字……"></textarea></td>
    <td width="25"><input type="hidden" id="part" value="<?php echo $id ?>" readonly="readonly"><button id="submit"> 发表留言 </button></td>
    </tr>
</table>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/notice.js"></script>
<script type="text/javascript" src="js/book.js"></script>
</html>