
$(document).ready(function() {

	//아이디 찾기
	$("#findId").click(function() {

		$('idForm').submit();
		var param = $('#idForm').serialize();
		console.log(param);


		$.ajax({
			type: 'post',
			url: 'findId',
			data: param,
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			async: false,
			success: function(result) {
				if (result != "0") {
					$("#chkNotice7").html('회원님의 아이디는 ' + result + ' 입니다.');
					$("#chkNotice7").css('color', '#2fb380');
				} else {
					$("#chkNotice7").html('일치하는 회원 정보가 없습니다.');
					$("#chkNotice7").css('color', '#dc3545');

				}


			},
			error: function() {

				alert("서버요청실패");
			}
		})
	})


	//닫기 버튼 눌렀을 때 다 날라가게
	$("#closeid").click(function() {


		$('#mName').val('');
		$('#mPhone').val('');
		$('#chkNotice7').html('');
	})





	//비번 찾기
	$("#findPw").click(function() {
		var param = $('#pwForm').serialize();
		console.log(param);

		$.ajax({
			type: 'post',
			url: 'findPw',
			data: param,
			contentType: "application/x-www-form-urlencoded;charset=utf-8",
			async: false,
			success: function(result) {
				//alert("<" + result + ">");
				if (result.trim() == 'success') {
					$("#chkNotice8").html('임시 비밀번호 발송 완료!');
					$("#chkNotice8").css('color', '#2fb380');
				} else {
					$("#chkNotice8").html('일치하는 회원 정보가 없습니다.');
					$("#chkNotice8").css('color', '#dc3545');

				}
			},
			error: function(err) {

				alert("서버요청실패");
				console.log(err);
			}
		})
		return false;//return 을 false 로 주지 않을 시, 계속 리다이렉트가 되면서 weet alert가 뜨지 않음


	})



	//닫기 버튼 눌렀을 때 다 없어지게
	$("#closepw").click(function() {  
		
		
	  	$('.bk').val('');
		$('#mEmail').val('');
		$('#chkNotice8').html('');
		 
	});



  





}); //end of function 