var first = $("#firstNum").val();  //기존에 있던 rNum(신고번호)값
// alert("1."+first);
$(function () {
    $('#che').click(function () {
        alert(first);
    })

})


document.addEventListener("DOMContentLoaded", function () { //돔 이벤트 리스너
    rNumReload();   //를
    setInterval(rNumReload, 3000); // 이후 3초에 한번씩 시간을 갱신한다.
});

function rNumReload() {
    $.ajax({
        type: "post",
        url: "rNum",
        success: function (rNum) {
            var first = $("#firstNum").val();  //기존에 있던 rNum(신고번호)값
            $('#firstNum2').val(rNum);
            var second = $('#firstNum2').val();
            if (first != second) {
                Notification.requestPermission();
                //표시할 알림 내용, 왼쪽이 타이틀, 바디가 내용입니다...
                new Notification("새로운 신고건이 있습니다!", {body:'신고 내역을 확인해 주세요.'});

                $('#firstNum').val(second);
            }
            var first = $('#firstNum').val();

        },
        error: function (err) {
            
        },

        
    });

}

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



