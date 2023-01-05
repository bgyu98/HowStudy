
$(document).ready(function() {

	//회원가입시 아이디 유효성 검사

	$('#mId').keyup(function() {

		let mId = $('#mId').val();
		let mIdCheck = /^[a-z0-9_]{4,12}$/




		if (!mIdCheck.test(mId)) {
			$("#chkNotice").html('4~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.<br><br>')
			$("#chkNotice").css('color', '#dc3545');
			$('#mId').focus()
			return false
		}


		//아이디 중복 확인        


		$.ajax({
			url: "./mIdCheck",
			type: "post",
			data: { mId: mId },
			dataType: 'json',
			success: function(result) {
				if (result == 1) {
					$("#chkNotice").html('누군가 이 아이디를 사용하고 있어요. <br><br>');
					$("#chkNotice").css('color', '#dc3545');
				} else {
					$("#chkNotice").html('멋진 아이디네요! <br><br>');
					$("#chkNotice").css('color', '#2fb380');
				}
			},
			error: function() {

				alert("서버요청실패");
			}
		}); // end of ajax


	});  //end of ID keyup


	$('#mPw').keyup(function() {

		//회원가입시 비밀번호 유효성 검사


		$('#chkNotice2').html('');

		let mPw = $('#mPw').val();
		let mPwchk = /(?=.*[0-9])(?=.*[a-z])(?=.*\W)(?=\S+$).{8,16}/


		if (!mPwchk.test(mPw)) {
			$("#chkNotice2").html('8~16자 소문자, 숫자, 특수문자를 사용하세요.<br><br>')
			$("#chkNotice2").css('color', '#dc3545');
			$('#mPw').focus()
			return false
		}


	}); // end of Pw keyup

	//비밀번호 일치 여부 

	$('#mPwchk').keyup(function() {


		if ($('#mPw').val() != $('#mPwchk').val()) {
			$('#chkNotice3').html('비밀번호가 일치하지 않습니다.<br><br>');
			$('#chkNotice3').css('color', '#dc3545');
		} else {
			$('#chkNotice3').html('비밀번호가 일치합니다. <br><br>');
			$('#chkNotice3').css('color', '#2fb380');
		}

	}); //end of mPwchk keyup



	//회원가입시 이름 유효성 검사

	$('#mName').keyup(function() {


		$('#chkNotice4').html('');

		let mName = $('#mName').val();
		let mNameCheck = /^[가-힣a-zA-Z]+$/

		if (!mNameCheck.test(mName)) {
			$("#chkNotice4").html('한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)<br><br>')
			$("#chkNotice4").css('color', '#dc3545');
			$('#mName').focus()
			return false
		}

	}); //end of mName keyup





	//회원가입시 전화번호 유효성 검사
	$('#mPhone').keyup(function() {

		$('#chkNotice5').html('');

		let mPhone = $('#mPhone').val();
		let mPhoneCheck = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/

		if (!mPhoneCheck.test(mPhone)) {
			$("#chkNotice5").html('(-)을 포함해 입력해 주세요.<br><br>')
			$("#chkNotice5").css('color', '#dc3545');
			$('#mPhone').focus()
			return false
		}

	}); //end of mPhone keyup




	//회원가입시 이메일 유효성 검사
	$('#mEmail').keyup(function() {


		$('#chkNotice6').html('');

		let mEmail = $('#mEmail').val();
		let mEailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if (!mEailCheck.test(mEmail)) {
			$("#chkNotice6").html('이메일 형식에 맞게 입력해 주세요.')
			$("#chkNotice6").css('color', '#dc3545');
			$('#mEmail').focus()
			return false
		}

	}); //end of mEmail keyup










}); //end of function 