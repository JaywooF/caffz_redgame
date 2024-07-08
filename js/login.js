//控制背景音乐开关
function playPause() {
    var music = document.getElementById('music');
    var music_btn = document.getElementById('music_btn');
    if (music.paused){
        music.play();
        music_btn.src = '../images/button/music.png';
    }
    else{
        music.pause();
        music_btn.src = '../images/button/music1.png'; 
    }
}

$("#submit").click(function(event){
  event.preventDefault();
  var usr = $("#usr").val();  //获取用户的值
  var pwd = $("#pwd").val();  //获取密码的值
  $.ajax({
    url:"check.php",  //编写登录的处理页面
    data:{usr:usr,pwd:pwd},  //将用户和密码传到处理页面
    type:"POST",
    dataType:"text",
    success: function(data){
      if(data.trim()=="login-success"){
        window.location.href="main.php";
      }else{
        new NoticeJs({
          text: data.trim(),
          position: 'middleCenter',
          type: 'info',
          timeout: 30,
          animation: {
            open: 'animated flipInX',
            close: 'animated flipOutX',
          }
        }).show();
      }
    },
  });
});