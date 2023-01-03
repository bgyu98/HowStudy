
var aLiList = document.querySelector('#myUL');
console.log(aLiList);
aLiList.addEventListener('click', function(ev) {
	console.log(ev.target.tagName);
	if (ev.target.tagName === 'LI') {
		ev.target.classList.toggle('checked');

	}

})



// todo 버튼 클릭 이벤트 연결
$('.addBtn').click(function() {
	evt.stopPropagation();
	evt.preventDefault();

	var iLine = $("#tText").val();
	var oToday = new Date().toLocaleString();

	var addList = [{
		"title": iLine,
		"inputDate": oToday
	}]

	newLine(addList, "#myUL");

	console.log("되나여");

});






// todo 새글 등록
function newLine(arr, name) {
	console.log("삭제");
	for (i = 0; i < arr.length; i++) {
		$(name).append("<li><span>" + arr[i].title + "</span><span class='date'>" + arr[i].inputDate + "</span></li>");
	}
}

// 삭제
function deleteHref(evt) {
	evt.stopPropagation();
	evt.preventDefault();
	var oUlcheck = document.querySelector("#myUL"); //왼쪽칸의 li만 가져옴
	var oChecked = oUlcheck.querySelectorAll('.checked');
	for (i = 0; i < oChecked.length; i++) {
		$(oChecked[i]).remove();
	}

	// 
	$("#todoForm").attr("action", "deleteTdo");
};

var a = [];

$("#deleteTodo").click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();
	var oUlcheck = document.querySelector("#myUL");
	var oChecked = oUlcheck.querySelectorAll('.checked');		// checked 클래스 를 찾아서 함수에 저장
	var arr = [];
	for (i = 0; i < oChecked.length; i++) {
		$("#myUL2").append(oChecked[i]);
			arr.push($(oChecked[i]).val());

	}
		console.log(arr);



	$("#todoForm").attr("action", "deleteTodo?hSeq="+arr);
	$("#todoForm").submit();
	
	
});


// 완료
$("#updateTodo").click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();
	var oUlcheck = document.querySelector("#myUL");
	var oChecked = oUlcheck.querySelectorAll('.checked');		// checked 클래스 를 찾아서 함수에 저장
	var arr = [];
	for (i = 0; i < oChecked.length; i++) {
		$("#myUL2").append(oChecked[i]);
			arr.push($(oChecked[i]).val());

	}
		console.log(arr);



	$("#todoForm").attr("action", "updateTodo?hSeq="+arr);
	$("#todoForm").submit();
	
	
});