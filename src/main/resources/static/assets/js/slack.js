
//퀵메뉴용
$(document).ready(function(){
   //스크롤이벤트
  var currentPosition = parseInt($(".quickmenu").css("top"));
    $(window).scroll(function() {
   //속도애니메이트 
   var position = $(window).scrollTop(); 
      $(".quickmenu").stop().animate({"top":position+currentPosition+"px"},500);

   
      
  });
});