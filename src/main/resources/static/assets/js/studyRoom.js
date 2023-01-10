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
		alert("클릭");
		var test = $("#item-create #ct").text();
		alert(test);
		$("#sCtaegoly").val(test);
	});
	
	$("#item-create2 .peopleNum  li").click(function(){
		alert("클릭2");
		var test = $("#item-create2 #num").text();
		alert(test);
		const regex = /[^0-9]/g;
		const result = test.replace(regex, "");
		const number = parseInt(result);
		$("#sPeopleNum").val(number);
	});

	

});