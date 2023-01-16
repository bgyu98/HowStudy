document.addEventListener("DOMContentLoaded", function () {
  // 시간을 딜레이 없이 나타내기위한 선 실행

  realTimer();
  realTimer2();
  realTimer3();
  // 이후 0.5초에 한번씩 시간을 갱신한다.

  setInterval(realTimer, 500);
});

/* 타이머관련 수식 */
function realTimer() {
  const nowDate = new Date();

  const hour = nowDate.getHours();

  const min = nowDate.getMinutes();

  const sec = nowDate.getSeconds();

  document.getElementById("todaystudytimes").innerHTML =
    hour + ":" + addzero(min) + ":" + addzero(sec);
}

// 1자리수의 숫자인 경우 앞에 0을 붙여준다. -> 이부분은 실시간 변동시 사용하면 될듯

function addzero(num) {
  if (num < 10) {
    num = "0" + num;
  }

  return num;
}

function realTimer2() {
  const nowDate = new Date();

  const hour = nowDate.getHours();

  const min = nowDate.getMinutes();

  const sec = nowDate.getSeconds();

  document.getElementById("todayaveragetimes").innerHTML =
    hour + ":" + addzero2(min) + ":" + addzero(sec);
}

// 1자리수의 숫자인 경우 앞에 0을 붙여준다. -> 이부분은 실시간 변동시 사용하면 될듯

function addzero2(num) {
  if (num < 10) {
    num = "0" + num;
  }

  return num;
}

function addzero(num) {
  if (num < 10) {
    num = "0" + num;
  }

  return num;
}

function realTimer3() {
  const nowDate = new Date();

  const hour = nowDate.getHours();

  const min = nowDate.getMinutes();

  const sec = nowDate.getSeconds();

  document.getElementById("totalstudytime").innerHTML =
    hour + ":" + addzero3(min) + ":" + addzero(sec);
}

// 1자리수의 숫자인 경우 앞에 0을 붙여준다. -> 이부분은 실시간 변동시 사용하면 될듯

function addzero3(num) {
  if (num < 10) {
    num = "0" + num;
  }

  return num;
}

(function ($) {
  var check = function () {
    $(document).on("click", ".checkbutton", function () {
      alert("체크버튼 누름");

      // 누른 시간 체크
      var ck = $("#todaystudytimes").text();
      //alert("시간 : " + ck);

      // 방 번호 체크
      var sNum = $(this).parent().parent().find(".sNum").val();
      //alert("방 번호 : " + sNum);

      // 현재 시간 체크
      var today = new Date();
      var year = today.getFullYear();
      var month = ("0" + (today.getMonth() + 1)).slice(-2);
      var day = ("0" + today.getDate()).slice(-2);
      var dateString = year + "-" + month + "-" + day;
      // alert( 현재 날짜 : dateString);

      data = {
        sNum: sNum,
        sTime: ck,
        nowDay: dateString,
      };
      $.ajax({
        type: "get",
        url: "/study/saveTime",
        data: data,
        dataType: "text",
        success: function (json) {
          alert("성공");
        },
        error: function (e) {
          alert("실패");
          console.log(e);
        },
      });
    });
  };

  $(function () {
    check();
  });
})(jQuery);