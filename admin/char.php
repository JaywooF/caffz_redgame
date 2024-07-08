<?php
require_once("verify.php");
require_once("../class/config.php");
require_once("../class/conn.php");
require_once("../class/page.php");
$showrow = 5;
$curpage = empty($_GET['page']) ? 1 : $_GET['page'];
$url = "?page={page}";
$db = new conn();

$sql = "SELECT id,usr,nam,atk,def,hp,mhp,lip,ltim,achv,mun,sid from usr order by id desc";
$res_num = "SELECT count(id) as ctn from usr order by id desc";

$total = $db->strQuery($res_num);
if (!empty($_GET['page']) && $total != 0 && $curpage > ceil($total / $showrow)) {
  $curpage = ceil($total_rows / $showrow);
}
$sql .= " LIMIT " . ($curpage - 1) * $showrow . ",$showrow;";
$result = $db->Query($sql);
?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=8" >
<title>留言审核</title>
<link rel="stylesheet" type="text/css" href="Assets/css/reset.css"/>
<link rel="stylesheet" type="text/css" href="Assets/css/common.css"/>
<link rel="stylesheet" type="text/css" href="Assets/css/thems.css">
<script type="text/javascript" src="Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="Assets/js/admin.js"></script>
<script type="text/javascript">
$(function(){
	//自适应屏幕宽度
	window.onresize=function(){ location=location }; 
	
	var main_h = $(window).height();
	$('.hy_list').css('height',main_h-45+'px');
	
	var search_w = $(window).width()-40;
	$('.search').css('width',search_w+'px');
	//$('.list_hy').css('width',search_w+'px');
});
</script>
<!--框架高度设置-->
</head>

<body>
<div id="right_ctn">
	<div class="right_m">
		<!--会议列表-->
        <div class="hy_list">
        	<div class="box_t">
            	<span class="name">游戏账号角色列表</span>
                <!--当前位置-->
                <div class="position">
                	<a href=""><img src="Assets/images/icon5.png" alt=""/></a>
                    <a href="">首页</a>
                    <span><img src="Assets/images/icon3.png" alt=""/></span>
                    <a href="">游戏账号角色管理</a>
                </div>
                <!--当前位置-->
            </div>
            <div class="space_hx">&nbsp;</div>
            <!--列表-->
            <table cellpadding="0" cellspacing="0" class="list_hy">
              <tr>
                <th scope="col">账号</th>
                <th scope="col">角色</th>
                <th scope="col">攻击</th>
                <th scope="col">防御</th>
                <th scope="col">生命</th>
                <th scope="col">最大生命</th>
                <th scope="col">登录IP</th>
                <th scope="col">登录时间</th>
                <th scope="col">成就点</th>
                <th scope="col">银元</th>
                <th scope="col">所在场景</th>
                <th scope="col">角色管理</th>
              </tr>
              <?php
              if (!empty($result)) {
                foreach ($result as $v){
                    echo '<tr>';
                    echo '<td>'.$v[1].'</td>';
                    echo '<td>'.$v[2].'</td>';
                    echo '<td>'.$v[3].'</td>';
                    echo '<td>'.$v[4].'</td>';
                    echo '<td>'.$v[5].'</td>';
                    echo '<td>'.$v[6].'</td>';
                    echo '<td>'.$v[7].'</td>';
                    echo '<td>'.$v[8].'</td>';
                    echo '<td>'.$v[9].'</td>';
                    echo '<td>'.$v[10].'</td>';
                    echo '<td>'.$v[11].'</td>';
                    echo '<td><a onclick="c_del('.$v[0].')" class="btn">删除</a><a href="edit.php?id='.$v[0].'" class="btn">编辑</a><a onclick="c_pwd('.$v[0].')" class="btn">重置密码</a></td>';
                    echo '</tr>';     
                }
              }else{
                echo '<tr><td colspan="5">没有找到角色。</td></tr>';
            }
            ?>
            </table>
            <!--右边底部-->
            <div class="r_foot">
                <div class="r_foot_m">
                
                <!--分页-->
                <div class="page">
                    <?php
                    if ($total > $showrow) {//总记录数大于每页显示数，显示分页
                        $page = new page($total, $showrow, $curpage, $url, 3);
                        echo $page->myde_write();
                    }
                    ?>
                </div>
            </div>
            </form>
            <!--右边底部-->
        </div>
        <!--会议列表-->
    </div>
</div>
</body>
</html>