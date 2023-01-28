var Tlqkf = $("#firstNum").val();  //기존에 있던 rNum(신고번호)값
$(function () {
    $('#che').click(function () {
        alert(Tlqkf);
    })

})


document.addEventListener("DOMContentLoaded", function () {

    rNumReload();
  // 이후 3초에 한번씩 시간을 갱신한다.
    setInterval(rNumReload, 3000);
});






function rNumReload() {
    $.ajax({
        type: "post",
        url: "dashboard",
        dataType: "html",
        success: function (rNum) {
            $('#firstNum2').val(rNum);
        },
        error: function () {
            
        },

        
    });



}

Notification.requestPermission();
//표시할 알림 내용, 왼쪽이 타이틀, 바디가 내용입니다...
new Notification("새로운 신고건이 있습니다!", {body:'신고 내역을 확인해 주세요.'});

//알림 권한 요청
var permission = Notification.requestPermission();
console.log(permission)

// 데스크탑 알림 권한 요청
function getNotificationPermission() {
    Notification.requestPermission(function (result) {
        if(result == 'denied') { //차단했을때
            Notification.requestPermission();
            alert('알림을 차단하셨습니다.\n브라우저의 사이트 설정에서 변경하실 수 있습니다.');
            return false;
        }
        else if (result == 'granted'){ //허용했을때
            alert('알림을 허용하셨습니다.');
        }
    });
}





