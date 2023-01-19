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
$(document).on("change", "#selectRoom", function () {
  var selectroom = $("#selectRoom option:selected").val();

  // alert(" 고른 태그 :  " + selectroom);

  $.ajax({
    type: "get",
    url: "/study/saveTime",
    data: selectroom,
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
  tagTime();
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

/* tagtime start */
var tagTime = function () {
  function colorize() {
    var r = Math.floor(Math.random() * 200);
    var g = Math.floor(Math.random() * 200);
    var b = Math.floor(Math.random() * 200);
    var color = "rgba(" + r + ", " + g + ", " + b + ", 0.7)";
    return color;
  }
  var labelList = new Array();
  var valueList = new Array();
  var colorList = new Array();

  $.ajax({
    url: "saveTagTime",
    type: "post",
    cache: "false",
    async: false,
    contentType: "application/x-www-form-urlencoded;charset=UTF-8",
    dataType: "json",
    success: function (json) {
      //alert("성공");
      $.each(json, function (key, value) {
        labelList.push(value.sCategory);
        //alert(value.sCategory);
        //alert(value.total);
        //valueList.push(value.total);
        valueList.push(parseInt(value.total));
        colorList.push(colorize());
      });
      var chartData = {
        labels: labelList,
        datasets: [
          {
            label: "태그 별 공부 시간",
            backgroundColor: colorList,
            data: valueList,
          },
        ],
        options: {
          title: {
            display: true,
            text: "태그 별 공부 시간",
          },
        },
      };
      var ctx = document.getElementById("canvas-tagchart").getContext("2d");
      new Chart(ctx, {
        type: "pie",
        data: chartData,
      });
    },
    error: function (error) {
      alert("실패");
      alert(error.log);
      console.log(error);
    },
  });
}; /* tagtime finish*/

// 왼쪽 날짜 선택 했을 경우, 오른쪽 날짜의 최솟값을 왼쪽 날짜로 지정
function checkDate1(event) {
  var regdate2 = document.getElementById("regdate2");
  regdate2.value = null;
  regdate2.setAttribute("min", regdate1.value);
}
// checkdate1 finish

// checkDate2 start ( 오른쪽 날짜 지정)
function checkDate2(event) {
  function colorize() {
    var r = Math.floor(Math.random() * 200);
    var g = Math.floor(Math.random() * 200);
    var b = Math.floor(Math.random() * 200);
    var color = "rgba(" + r + ", " + g + ", " + b + ", 0.7)";
    return color;
  }
  var day1 = regdate1.value;
  var day2 = regdate2.value;

  if (day1 == "") {
    // 날짜 선택 관련 유효성 검사
    alert("왼쪽의 날짜부터 선택해주세요.");
    regdate2.value = null;
  }

  var vo = { date1: day1, date2: day2 };
  var labelList2 = new Array();
  var valueList2 = new Array();
  var colorList2 = new Array();
  $.ajax({
    url: "saveDateTime",
    type: "get",
    data: vo,
    cache: "false",
    async: false,
    contentType: "application/x-www-form-urlencoded;charset=UTF-8",
    dataType: "json",

    success: function (json2) {
      alert("성공dsds");
      //alert(json2);
      $.each(json2, function (index, value) {
        alert(value.sDate);
        labelList2.push(value.sDate);
        valueList2.push(parseInt(value.total));
        colorList2.push(colorize());
      });

      var data2 = {
        labels: labelList2,
        datasets: [
          {
            label: "날짜 별 공부 시간",
            backgroundColor: colorList2,
            data: valueList2,
          },
        ],
        options: {
          title: {
            display: true,
            text: "날짜 별 공부 시간",
          },
        },
      };
      console.log(data2);
      if (window.chartObj != undefined) {
        window.chartObj.destroy();
      }

      var ctx2 = document.getElementById("canvas-daychart").getContext("2d");
      chartObj = new Chart(ctx2, {
        type: "bar",
        data: data2,
      });
    },
    error: function (err) {
      alert("error");
      console.log(err);
    },
  }); //end of ajax
}
