
var aLiList = document.querySelector('#myUL');
console.log(aLiList);
aLiList.addEventListener('click', function(ev) {
	console.log(ev.target.tagName);
	if (ev.target.tagName === 'LI') {
		ev.target.classList.toggle('checked');

	}

})



// todo 버튼 클릭 이벤트 연결
$('.addBtn').click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();

	
	var formData = $("#todoForm").serialize();
	$.ajax({
		url: "./insertTodo",
		type: "post",
		data: formData,

		success: function(result) {
			//화면을 다 지우고 전체내용을 가져온 것으로 다시 붙이기
			var str = JSON.parse(result);
			var test = '';
			$.each(str, function(k, v) {

				test += '<li class="' + v.hSeq + '"><span>' + v.todos + '</span><span class="date"> ' + v.todoTime +
					'</span >';
				test += '</li>';

			});

			
			$("#myUL").empty();
			$('#myUL').append(test);
		},
		error: function() {

			alert("서버요청실패");
		}
	});

	$("#tText").val("");
});




// 삭제

$("#deleteTodo").click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();
	var oUlcheck = document.querySelector("#myUL");
	var oChecked = oUlcheck.querySelectorAll('.checked');		// checked 클래스 를 찾아서 함수에 저장
	var arr = [];
	for (i = 0; i < oChecked.length; i++) {
		arr.push($(oChecked[i]).val());

	}
	console.log(arr);


	var parms = '?hSeq=' + arr;
	var formData = $("#todoForm").serialize();
	$.ajax({
		url: "./deleteTodo" + parms,
		type: "post",
		data: formData,

		success: function() {
			for (i = 0; i < oChecked.length; i++) {
				$(oChecked[i]).remove();
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

	var parms = '?hSeq=' + arr;
	var formData = $("#todoForm").serialize();
	$.ajax({
		url: "./updateTodo" + parms,
		type: "post",
		data: formData,

		success: function(result) {
			alert("성공");
			for (i = 0; i < oChecked.length; i++) {
				$(oChecked[i]).remove();	
			}
			var str = JSON.parse(result);
			var test = '';
			$.each(str, function(k, v) {
				test += '<li class="' + v.hSeq + '"><span>' + v.todos + '</span><span class="date"> ' + v.todoTime +
					'</span >';
				test += '</li>';

			});
			$("#myUL2").empty();
			$('#myUL2').append(test);
		},
		error: function() {
	
		}
	});




});