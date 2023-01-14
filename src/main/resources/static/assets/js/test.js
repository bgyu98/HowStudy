$(function (){
 
$('input:checkbox').on('click', function(){
	console.log('체크박스 클릭');
  var chkValue = $('input:checkbox:checked').val();
  if(chkValue){
             $('#pass').css('display','block');
  }else{
             $('#pass').css('display','none');
  }
 
});
 
});