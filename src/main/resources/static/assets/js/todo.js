
$.ajax({
	url: "../assets/js/todo.json",
	type: "get",
	success: function(oResult) {
		if (oResult && 0 < oResult.todo.length) {
			newLine(oResult.todo, "#myUL") //(배열, "위치")
		}
	}
});

$.ajax({
	url: "../assets/js/complete.json",
	type: "get",
	success: function(oResult) {
		if (oResult && 0 < oResult.complete.length) {
			newLine(oResult.complete, "#myUL2")
		}
	}
});

  var aLiList = document.querySelector('#myUL');
  console.log(aLiList);
      aLiList.addEventListener('click', function(ev) {
		    console.log(ev.target.tagName);
        if (ev.target.tagName === 'LI') {
          ev.target.classList.toggle('checked');
        }
      })


// todo 버튼 클릭 이벤트 연결
 	$('.addBtn').click(function () {

	var iLine = $("#tText").val();
	var oToday = new Date().toLocaleString();

	var addList = [{
		"title": iLine,
		"inputDate": oToday
	}]

	newLine(addList, "#myUL");

		 console.log("되나여");
		console.log($("form"));
  	$("form").submit();
  	});


      



// todo 새글 등록
function newLine(arr, name) {
	for (i = 0; i < arr.length; i++) {
		$(name).append("<li><span>" + arr[i].title + "</span><span class='date'>" + arr[i].inputDate + "</span></li>");
	}
}

// 삭제
function deleteHref() {
	var oUlcheck = document.querySelector("#myUL"); //왼쪽칸의 li만 가져옴
	var oChecked = oUlcheck.querySelectorAll('.checked');
	for (i = 0; i < oChecked.length; i++) {
		$(oChecked[i]).remove();
	}
};

addLine// 완료
function endHref() {
	var oUlcheck = document.querySelector("#myUL");
	var oChecked = oUlcheck.querySelectorAll('.checked');
	for (i = 0; i < oChecked.length; i++) {
		oChecked[i].classList.toggle('checked');
		$("#myUL2").append(oChecked[i]);
	}
};
