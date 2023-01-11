$(function() {

   $('input:checkbox').on('click', function() {
      console.log('체크박스 클릭');
      var chkValue = $('input:checkbox:checked').val();
      if (chkValue) {
         $('#pass').css('display', 'block');
      } else {
         $('#pass').css('display', 'none');
      }

   });

   $("#item-create .cate  li").click(function(){
      var test = $("#item-create #ct").text();
      $("#sCtaegoly").val(test);
   });
   
   $("#item-create2 .peopleNum  li").click(function(){
      var test = $("#item-create2 #num").text();
      const regex = /[^0-9]/g;
      const result = test.replace(regex, "");
      const number = parseInt(result);
      $("#sPeopleNum").val(number);
   });

   

});
	
	
	// 유효성 검사
	$("#btn").click(function(evt){
	evt.stopPropagation();
	evt.preventDefault();
		// 스터디룸 이름 유효성 검사
		let sTile = $("#sTitle").val()
		if (!sTile) { 
        $("#chkRoom").html('스터디룸 이름을 입력해 주세요.<br><br>')
		$("#chkRoom").css('color', '#dc3545');
   		$('#sTitle').focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
    	return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
    	}else {$("#chkRoom").html('')};
    	// 스터디룸 이미지 유효성 검사
		let file = $("#file").val()
		if (!file) { 
        $("#chkRoom1").html('스터디룸 이미지를 입력해 주세요.<br><br>')
		$("#chkRoom1").css('color', '#dc3545');
   		$('#file').focus();
    	return false; 
    	}else {$("#chkRoom1").html('')};
    	// 스터디룸 선호카테고리 유효성 검사
    	let ctae = $("#sCtaegoly").val()
		if (!ctae) { 
        $("#chkRoom2").html('<br>카테고리를 선택해 주세요.<br><br>')
		$("#chkRoom2").css('color', '#dc3545');
   		$('#foc').focus();
    	return false; 
    	}else {$("#chkRoom2").html('')};
    	// 스터디 인원수 유효성 검사
    	let num = $("#sPeopleNum").val()
		if (!num) { 
        $("#chkRoom3").html('<br>인원수를 선택해 주세요.<br><br>')
		$("#chkRoom3").css('color', '#dc3545');
   		$('#num').focus();
    	return false; 
    	}else {$("#chkRoom3").html('')};


		$("form").submit();
});
	
	

