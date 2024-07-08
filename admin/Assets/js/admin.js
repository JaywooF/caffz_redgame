$("#submit").click(function(event){
  event.preventDefault();
  var part = $("#part").val();  //获取用户的值
  var text = $("#text").val();  //获取用户的值
  $.ajax({
    url:"save.php",  //编写登录的处理页面
    data:{text:text,part:part,type:1},  //将用户和密码传到处理页面
    type:"POST",
    dataType:"text",
    success: function(data){
      if(data.trim()=="send-success"){
        location.reload(true);
      }else{
        new NoticeJs({
          text: data.trim(),
          position: 'middleCenter',
          type: 'error',
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


function b_pas(id){
  $.ajax({
    url:"data.php",  //编写登录的处理页面
    data:{id:id,type:52},  //将用户和密码传到处理页面
    type:"POST",
    dataType:"text",
    success: function(data){
      location.reload(true);
    },
  });
}

function b_del(id){
  $.ajax({
    url:"data.php",  //编写登录的处理页面
    data:{id:id,type:51},  //将用户和密码传到处理页面
    type:"POST",
    dataType:"text",
    success: function(data){
      window.location.href='book.php';
    },
  });
}

