
$('.likeTag').change(function() {

	// 설정 시작
	var maxChecked = 3;
	if( maxChecked==$("input[name=mTag]:checkbox:checked").length ) {			// 클릭한 갯수를 총갯수 변수와 비교
            $(":checkbox:not(:checked)").attr("disabled", "disabled");			// 총갯수와 동일 할 경우 disabled속성을 주어 다른 체크박스 선택 막기
        } else {
            $("input[name=mTag]:checkbox").removeAttr("disabled");				//  
        }
		

		
});
	
k