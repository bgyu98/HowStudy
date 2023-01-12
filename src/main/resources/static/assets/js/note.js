// 주제 입력
$("#topicBtn").click(function() {
	alert("test");
	topic = $("#gTopic").val();
	mId = $("#mId").val();
	var data = {
		gTopic: topic, // 글 번호
		mId: mId, // 체크여부
	};
	$.ajax({
		url: "insertNoteTopic", // 요기에
		type: 'POST',
		data: data,
		success: function() {
		}, // success 
		error: function() {
			alert(실패);
		}
	}); // $.ajax */

	$("#gTopic").val("");
	$('#popup_bid').modal('hide');

});





// 썸머 라이브러리 세팅 
$('#summernote').summernote({
	height: 300,                 // 에디터 높이
	minHeight: null,             // 최소 높이
	maxHeight: null,             // 최대 높이
	focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
	lang: "ko-KR",					// 한글 설정
	placeholder: '최대 2048자까지 쓸 수 있습니다',//placeholder 설정
	toolbar: [
		// [groupName, [list of button]]
		//글꼴설정
		['fontname', ['fontname']],
		// 글자크기설증
		['fontsize', ['fontsize']],
		// 굵기,기울임꼴,밑줄,취소 선, 서식지우기
		['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
		// 글자색
		['color', ['forecolor', 'color']],
		// 표만들기
		['table', ['table']],
		// 글머리 기호, 번호매기기, 문단정렬
		['para', ['ul', 'ol', 'paragraph']],
		// 줄간격
		['height', ['height']],
		// 그럼첨부, 링크만들기, 동영상첨부
		['insert', ['picture', 'link', 'video']],
		// 코드보기, 확대해서보기, 도움말
		['view', ['fullscreen', 'help']]
	],
	// 추가한 글꼴
	fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
	// 추가한 폰트싸이즈
	fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
	callbacks : {
		onImageUpload : function(files, editor, welEditable) {     
			for (var i = 0; i < files.length; i++) {
				sendFile(files[i], this);
			}
		}
	}

});
/**
	* 이미지 파일 업로드
	*/
function sendFile(file, editor) {
	
	alert(editor)
	
	var form_data = new FormData();
	form_data.append('file', file);
	$.ajax({
		data : form_data,
		type : "POST",
		url : 'test',
		cache : false,
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(url) {
			alert(url);
			$(editor).summernote('insertImage', url, function($image) {
				$image.css('width', "25%");
			});
		
		},
		error: function(err) {
			alert("실패" + err);
			console.log("실패" + err);
		}
	});
}

// 새글2 클릭시 썸머노트 보이게
// 누른 값의 부모를 찾아 gtopic 값넣기
 $('.test').click(function() {
         $('#FormTitle').css('display', 'block');
		test = $(this).parents('span').parents('label').parents('.topic4').parents('.topic3').parents('.topic1').find('h5').text();
		$("#TopicName").val(test)
		
});


//
// 
$("#titleBtn").click(function(evt) {
	evt.stopPropagation();
	evt.preventDefault();

	alert("확인");
	topic = $("#TopicName").val();
	alert(topic);
	mId = $("#mId").val();
	alert(mId);
	title = $("#gTitle").val();
	alert(title);
	comment = $(".note-editable").html();
	console.log(comment);
	
	
	var data = {
		gTopic: topic, // 글 번호
		mId: mId, // 체크여부
		gTitle : title,
		gComment : comment
	};
	
	
	$.ajax({
		url: "insertNoteTitle", // 요기에
		type: 'POST',
		data: data,
		success: function() {
			alert("성공");
		}, // success 
		error: function() {
			alert("실패");
		}
	}); // $.ajax */

	$("#gTopic").val("");
	$('#popup_bid').modal('hide');

});


$(".clk").click(function(){
	
	alert("확인");
});
