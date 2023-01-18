// document.addEventListener("DOMContentLoaded", function () {
//   // 시간을 딜레이 없이 나타내기위한 선 실행

//   realTimer();

//   // 이후 0.5초에 한번씩 시간을 갱신한다.

//   setInterval(realTimer, 500);
// });

// /* 타이머관련 수식 */
// function realTimer() {
//   const nowDate = new Date();

//   const hour = nowDate.getHours();

//   const min = nowDate.getMinutes();

//   const sec = nowDate.getSeconds();

//   document.getElementById("todaystudytimes").innerHTML =
//     hour + ":" + addzero(min) + ":" + addzero(sec);
// }

// // 1자리수의 숫자인 경우 앞에 0을 붙여준다. -> 이부분은 실시간 변동시 사용하면 될듯

// function addzero(num) {
//   if (num < 10) {
//     num = "0" + num;
//   }

//   return num;
// }

(function ($) {
  var check = function () {
    $(document).on("click", ".checkbutton", function () {
      alert("체크버튼 누름");

      // 누른 시간 체크
      var ck = $("#time").text();
      alert("시간 : " + ck);

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

var time = 0;
var starFlag = true;
$(document).ready(function () {
  buttonEvt();
});

function init() {
  document.getElementById("time").innerHTML = "00:00:00";
}

function buttonEvt() {
  var hour = 0;
  var min = 0;
  var sec = 0;
  var timer;

  // start btn
  $("#startbtn").click(function () {
    if (starFlag) {
      $(".fa").css("color", "#FAED7D");
      this.style.color = "#4C4C4C";
      starFlag = false;

      if (time == 0) {
        init();
      }

      timer = setInterval(function () {
        time++;

        min = Math.floor(time / 60);
        hour = Math.floor(min / 60);
        sec = time % 60;
        min = min % 60;

        var th = hour;
        var tm = min;
        var ts = sec;
        if (th < 10) {
          th = "0" + hour;
        }
        if (tm < 10) {
          tm = "0" + min;
        }
        if (ts < 10) {
          ts = "0" + sec;
        }

        document.getElementById("time").innerHTML = th + ":" + tm + ":" + ts;
      }, 1000);
    }
  });

  // pause btn
  $("#pausebtn").click(function () {
    if (time != 0) {
      $(".fa").css("color", "#FAED7D");
      this.style.color = "#4C4C4C";
      clearInterval(timer);
      starFlag = true;
    }
  });

  // stop btn
  $("#stopbtn").click(function () {
    if (time != 0) {
      $(".fa").css("color", "#FAED7D");
      this.style.color = "#4C4C4C";
      clearInterval(timer);
      starFlag = true;
      time = 0;
      init();
    }
  });
}
