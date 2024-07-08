
//提示框快捷调用
function notic(msg,delay,typ){
	new NoticeJs({
		text: msg,
		position: 'middleCenter',
		type: typ,
		timeout: delay,
		animation: {
			open: 'animated bounceIn',
			close: 'animated bounceOut',
		}
	}).show();
}
//刷新左上角面板信息
function rechar(){
    $.ajax({
        url: "game.php",
        data: {type:1},
        type: "POST",
        dataType:"text",
        success: function (data) {
            $("#life").html(data);
        },
    });
}
//刷新右上角金钱、成就点信息
function repoint(){
    $.ajax({
        url: "game.php",
        data: {type:2},
        type: "POST",
        dataType:"text",
        success: function (data) {
            $("#point").html(data);
        },
    });
}
//刷新背包道具信息
function bags(){
    $.ajax({
        url: "game.php",
        data: {type:14},
        type: "POST",
        dataType:"text",
        success: function (data) {
            $("#baginfo").html(data);
        },
    });
}
//个人信息的开启和关闭
function getchar(){
  au_click.play();
	$.ajax({
		url:"game.php", 
		data:{type:11}, 
		type:"POST",
		dataType:"text",
		success: function(data){
			$("#charinfo").html(data);
		},
	});
    var charBox = document.getElementById("charinfo");
    charBox.style.display = "block";
}
function outchar(){
  au_click.play();
    let charDiv = document.getElementById("charinfo");
    charDiv.style.display = "none";
}
//排行榜的开启和关闭
function getrank(){
  au_click.play();
	$.ajax({
		url:"game.php", 
		data:{type:12}, 
		type:"POST",
		dataType:"text",
		success: function(data){
			$("#rankinfo").html(data);
		},
	});
    var rankBox = document.getElementById("rankinfo");
    rankBox.style.display = "block";
}
function outrank(){
  au_click.play();
    let rankDiv = document.getElementById("rankinfo");
    rankDiv.style.display = "none";
}
//商店的开启和关闭
function getshop(){
  au_click.play();
    $.ajax({
    url:"game.php", 
    data:{type:13}, 
    type:"POST",
    dataType:"text",
    success: function(data){
      $("#shopinfo").html(data);
    },
   });
    var shopBox = document.getElementById("shopinfo");
    shopBox.style.display = "block";
}
function outshop(){
  au_click.play();
    let shopDiv = document.getElementById("shopinfo");
    shopDiv.style.display = "none";
}
//商店显示道具信息
function item(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:131}, 
    type:"POST",
    dataType:"text",
    success: function(data){
      $("#view-item").html(data);
      au_item.play();
    },
  });
}
//商店购买道具动作
function buy(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:132}, 
    type:"POST",
    dataType:"text",
    success: function(data){
    	if(data.trim()=="buy-success"){
    		repoint();
    		notic("购买成功",10,'success');
        au_item.play();
    	}else{
    		notic(data.trim(),20,'warning');
        au_error.play()
    	}
    },
  });
}

//背包的开启和关闭
function getbag(){
  au_click.play();
  bags();
  var bagBox = document.getElementById("baginfo");
  bagBox.style.display = "block";
}
function outbag(){
  au_click.play();
  let bagDiv = document.getElementById("baginfo");
  bagDiv.style.display = "none";
}

//背包显示道具信息
function myitem(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:141}, 
    type:"POST",
    dataType:"text",
    success: function(data){
      $("#view-bag").html(data);
      au_item.play();
    },
  });
}
//卖出背包道具
function sell(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:142}, 
    type:"POST",
    dataType:"text",
    success: function(data){
    	if(data.trim()=="sell-success"){
    		bags();
    		repoint();
    		notic("装备成功出售！",10,'success');
        au_sell.play();
    	}else{
    		notic(data.trim(),20,'warning');
        au_error.play()
    	}
    },
  });
}
//装备道具
function equip(id,typ){
  $.ajax({
    url:"game.php", 
    data:{id:id,typ:typ,type:143}, 
    type:"POST",
    dataType:"text",
    success: function(data){
    	if(data.trim()=="equip-success"){
    		bags();
    		rechar();
    		notic("已成功装备！",10,'success');
        au_weapon.play();
    	}else{
    		notic(data.trim(),20,'warning');
        au_error.play();
    	}
    },
  });
}
//解除装备
function remove(id,typ){
  $.ajax({
    url:"game.php", 
    data:{id:id,typ:typ,type:144}, 
    type:"POST",
    dataType:"text",
    success: function(data){
    	if(data.trim()=="remove-success"){
    		bags();
    		rechar();
    		notic("成功解除装备！",10,'success');
        au_weapon.play();
    	}else{
    		notic(data.trim(),20,'warning');
        au_error.play()
    	}
    },
  });
}
//使用道具
function used(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:145}, 
    type:"POST",
    dataType:"text",
    success: function(data){
    	if(data.trim()=="used-success"){
    		bags();
    		rechar();
    		notic("成功使用道具！",10,'success');
        au_used.play();
    	}else{
    		notic(data.trim(),20,'warning');
        au_error.play()
    	}
    },
  });
}

//信息面板的拖拽
function drag(id) {
	var odiv = document.getElementById(id)
	odiv.onmousedown = function(ev) {
		var ev = ev || event;
		var disX = ev.clientX - odiv.offsetLeft;
		var disY = ev.clientY - odiv.offsetTop;
		document.onmousemove = function(ev2) {
			var ev2 = ev2 || event;
			var left = ev2.clientX - disX;
			var top = ev2.clientY - disY;
			var w = document.documentElement.clientWidth || document.body.clientWidth;
			var h = document.documentElement.clientHeight || document.body.clientHeight;
			if(left > w - odiv.offsetWidth) {
				left = w - odiv.offsetWidth
			}
			if(left < 0) {
				left = 0;
			}
			if(top < 0) {
				top = 0;
			}
			if(top > h - odiv.offsetHeight) {
				top = h - odiv.offsetHeight
			}

			odiv.style.left = left + "px";
			odiv.style.top = top + "px"

		}
		document.onmouseup = function(ev2) {
			document.onmousemove = null
		}
	}
}
drag("charinfo")
drag("rankinfo")
drag("shopinfo")
drag("baginfo")

//普通事件推进
function step(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:21}, 
    type:"POST",
    dataType:"text",
    success: function(data){
    	if(data.trim()=="step-errors"){
    		window.location.href="index.php";
    		notic("系统错误，请重新登录",20,'error');
        au_error.play();		
    	}else{
    		$("#main-frame").html(data);
        au_page.play();
    	}
    },
  });
}
//重置游戏，保留30%银元
function replay(){
  $.ajax({
    url:"game.php", 
    data:{type:51}, 
    type:"POST",
    dataType:"text",
    success: function(data){
      location.reload(true);
    },
  });
}
//石头剪刀布进入
function ston(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:22}, 
    type:"POST",
    dataType:"text",
    success: function(data){
        $("#talk-view").html(data);
        au_ready.play();
    },
  });
}
//石头剪刀布事件处理
function stone(sid,id){
  $.ajax({
    url:"game.php", 
    data:{sid:sid,id:id,type:221}, 
    type:"POST",
    dataType:"text",
    success: function(data){
        $("#talk-view").html(data);
        au_rock.play();
    },
  });
}
//进入战斗场景
function atk(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:29}, 
    type:"POST",
    dataType:"text",
    success: function(data){
      if(data.trim()=="atk-errors"){
        window.location.href="index.php";
        notic("系统错误，请重新登录",20,'error'); 
        au_error.play(); 
      }else{
        $("#main-frame").html(data);
        au_fight.play();
      }
    },
  });
}
//战斗结算
function atkend(id){
  $.ajax({
    url:"game.php", 
    data:{id:id,type:294}, 
    type:"POST",
    dataType:"text",
    success: function(data){
        $("#main-frame").html(data);
    },
  }); 
}
//刷新题目
function getqu(){
  clearInterval(myTimer);
  $.ajax({
    url:"game.php", 
    data:{type:292}, 
    type:"POST",
    dataType:"text",
    success: function(data){
        $("#atk-char").html(data);
    },
  }); 
}
//刷新敌人血条
function npchp(){
  $.ajax({
    url:"game.php", 
    data:{type:293}, 
    type:"POST",
    dataType:"text",
    success: function(data){
        $("#npc-life").html(data);
    },
  }); 
}
//答题攻击判定
function subans(a){
  var id = $("#ans").val(); 
  $.ajax({
    url:"game.php", 
    data:{id:id,a:a,type:291}, 
    type:"POST",
    dataType:"text",
    success: function(data){
      if(data.trim()=="atk-success"){
        //$("#atk-npc").removeClass('animated bounceIn'); 
        $("#atk-npc").addClass('animated shake'); 
        setTimeout(function(){
          $('#atk-npc').removeClass('shake');
        }, 1000);
        au_atk.play();
        npchp();
        rechar();
        getqu();
      }
      else if(data.trim()=="atk-fail"){
        $("#atk-char").addClass('animated shake');
        setTimeout(function(){
          $('#atk-char').removeClass('shake');
        }, 1000);
        au_def.play();
        rechar();
        getqu();
      }
      else if(data.trim()=="char-win"){
        clearInterval(myTimer);
        au_win.play();
        atkend(11);    
      }
      else if(data.trim()=="char-fail"){
        clearInterval(myTimer);
        au_fail.play();
        atkend(12);      
      }else{
        getqu();
      }
    },
  }); 
}
//倒计时函数
var countdown = function(timeout) {
    var countUI = document.getElementById("count");
    if(!!countUI) {
        countUI.innerHTML = timeout;
        if (timeout == 0) {
            subans(9);
        }
        else {
            timeout--;
            setTimeout(function(){ 
                countdown(timeout)
            }, 1000);
        }
    }
}
//倒计时进度条   
function timbar(){
    count--;
    if(count<0){
      clearInterval(myTimer);
      subans(9);
    }else{
        var progressBar=document.getElementById("timbar");
        progressBar.style.width=count+"%";
    }
}
