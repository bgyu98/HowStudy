
var aLiList = document.querySelector('#myUL');
console.log(aLiList);
aLiList.addEventListener('click', function(ev) {
	console.log(ev.target.tagName);
	if (ev.target.tagName === 'LI') {
		ev.target.classList.toggle('checked');

	}

})



// todo 버튼 클릭 이벤트 연결
$('#addBtn').click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();

	
	var formData = $("#todoForm").serialize();
	$.ajax({
		url: "./insertTodo",
		type: "post",
		data: formData,

		success: function(result) {
			//화면을 다 지우고 전체내용을 가져온 것으로 다시 붙이기
			var str = JSON.parse(result);	// 전체내용 리스트로 가져온값 풀기
			var test = '';				   // 푼 내용을 담을 변수
			$.each(str, function(k, v) {

				test += '<li class="a" value="' + v.hSeq + '"><span>' + v.todos + '</span><span class="date"> ' + v.todoTime +
					'</span >';
				test += '</li>';
			});

			
			$("#myUL").empty();			//화면 ul태그의 내용 삭제
			$('#myUL').append(test);	// 삭제된 ul태그에 내용 붙이기
			$('#tText').val('');
		},
		error: function() {

			alert("서버요청실패");
		}
	});


});




// 삭제

$("#deleteTodo").click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();
	var oUlcheck = document.querySelector("#myUL");				
	var oChecked = oUlcheck.querySelectorAll('.checked');		// checked 클래스 를 찾아서 함수에 저장
	var arr = [];		// 클릭한 값을 담을 리스트
	for (i = 0; i < oChecked.length; i++) {			
		console.log($(oChecked[i]).val());		
		arr.push($(oChecked[i]).val());			// 클릭한 값의 내용을 arr변수에 하나씩 담기
	}

	var parms = '?hSeq=' + arr;					//  파라메터로 보낼 값 변수에 저장
	$.ajax({
		url: "./deleteTodo" + parms,		
		type: "post",


		success: function() {
			for (i = 0; i < oChecked.length; i++) {			
				$(oChecked[i]).remove();				// 클릭한 값 삭제
			}


		},
		error: function() {

			alert("서버요청실패");
		}
	});

});


// 완료
$("#updateTodo").click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();
	var oUlcheck = document.querySelector("#myUL");
	var oChecked = oUlcheck.querySelectorAll('.checked');		// checked 클래스 를 찾아서 함수에 저장
	var arr = [];

	for (i = 0; i < oChecked.length; i++) {
		arr.push($(oChecked[i]).val());

	}

	var mId = $("#mId").val();

	var parms = '?hSeq=' + arr + "&mId="+mId;

	$.ajax({
		url: "./updateTodo" + parms,

		success: function(result) {

			for (i = 0; i < oChecked.length; i++) {
				$(oChecked[i]).remove();	
			}
			var str = JSON.parse(result);
			var test = '';

			$.each(str, function(k, v) {
				test += '<li class="a checked" vlaue=' + v.hSeq + '"><span>' + v.todos + '</span><span class="date"> ' + v.todoTime +
					'</span >';
				test += '</li>';

			});

			
			$("#myUL2").empty();
			$('#myUL2').append(test);
		},
		error: function(err) {
			console.log(err);
		}
	});




});