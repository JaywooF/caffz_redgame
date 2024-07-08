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


function tops(id){
  $.ajax({
    url:"save.php",  //编写登录的处理页面
    data:{id:id,type:2},  //将用户和密码传到处理页面
    type:"POST",
    dataType:"text",
    success: function(data){
      new NoticeJs({
        text: data.trim(),
        position: 'middleCenter',
        type: 'success',
        timeout: 30,
        animation: {
          open: 'animated flipInX',
          close: 'animated flipOutX',
        }
      }).show();
    },
  });
}

function del(id){
  $.ajax({
    url:"save.php",  //编写登录的处理页面
    data:{id:id,type:3},  //将用户和密码传到处理页面
    type:"POST",
    dataType:"text",
    success: function(data){
      new NoticeJs({
        text: data.trim(),
        position: 'middleCenter',
        type: 'warning',
        timeout: 30,
        animation: {
          open: 'animated flipInX',
          close: 'animated flipOutX',
        }
      }).show();
      window.location.href='book.php';
    },
  });
}

