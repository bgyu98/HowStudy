(function ($) {
  "use strict";
  $(".icon-fl-search-filled").click(function () {
    //alert("ok");
  });
  $(".swal2-container").css("z-index", "999999");
  $(".goRoom").on("click", function () {
<<<<<<< HEAD
   
    var seq = $(this).find(".sNum").val();
=======
    //alert("방 클릭");
    var title = $(this).parents(".modal-body").find("h3").text();
    //alert(title);
    var seq = $(this).parents(".modal-body").find(".modalseq").val();
>>>>>>> 2105f5711141b16883fb708481df88e69545a7b4
    // alert(seq);
    var who = $(this).parents(".modal-body").find(".modalid").val();
    //lert(who);

    if (who == "" || who == undefined) {
      alert("로그인 후 사용 가능합니다.");
      return false;
    } else {
      var data = {
        sNum: seq,
      };
      $.ajax({
        type: "post",
        url: "roomRog",
        data: data,
        success: function (json) {
          var url = "http://13.125.216.41:4000/?sTitle=" + title;
          window.open(url, "width=100%", "height=100%");
        },
        error: function () {
          alert("실패");
        },
      });
    }
  }); //되는거

  $(".content> h4 > a").on("click", function () {
    //alert("방 클릭");
    var seq = $(this).parents().find(".sNum").val();
    alert(seq);
    var url = "http://13.125.216.41:4000" + "/" + seq;
    window.open(url, "width=100%", "height=100%");
  });

  // Dom Ready
  // $(function () {
  buttonHeart2();

  // });
})(jQuery);

function checkD(e) {
  // select 선택시 실행
  // alert(d);
  var who = $(this).next().val();
  var day = {
    checkDate: e.value, // 선택한 옵션의 value 값
    mId: who, // 로그인id
  };

  d = "";

  $.ajax({
    type: "get",
    url: "checkdate",
    data: day,
    dataType: "json",

    success: function (json) {
      //alert("성공");
      //alert(checkdate);
      $("#favor").empty(); // 날짜 선택 하단부분의 방부분 초기화

      var c = "";
      c += "<div class='col-md-12' id='favor'>";
      c += " <div class='swiper-container show-shadow carousel6 pad-t-17 auctions' >";
      c += "<div class='swiper-wrapper'>";
      $.each(json, function (key, value) {
        d += "<div class='swiper-slide'>";
        d += "<div class='slider-item'>";
        d += "<div class='sc-card-product menu_card style2'>";

        d += "<div class='card-media style2'>";

        d += "<img src='../assets/images/studyRoom/" + value.sFile + ".png' alt='Image'>";
        d += "<input type='hidden' value = '" + value.sNum + "'/>";
        if (value.checkFavor == 0) {
          // 즐겨찾기 안한 경우
          d += "<button class='wishlist-button heart'>";
          d += "<span class='number-like'> " + value.sFavorNum + "</span>"; // 즐겨찾기
          d += "</button>";
        } else if (value.checkFavor == 1) {
          // 즐겨찾기 한 경우
          d += "<button class='wishlist-button2 public heart mg-t-6 active' id='wishlist-button2'>";
          d += "<span class='number-like'> " + value.sFavorNum + "</span>"; // 즐겨찾기
          d += "</button>";
        }

        d += "</div>";

        d += "<div class='card-title'>";
        d += "<h3><a href='item-details.html'>" + value.sTitle + "</a></h3>"; // 제목
        d += "<div class='tags' style='width: 25%;'>" + value.sCategory + "</div>"; // 선호태그
        d += "</div>";

        d += "<div class='meta-info style2'>";

        d += "<div class='author'>";

        d += "<div class='avatar'>";
        d += "<img src='../assets/images/logo/logo01.png' alt='Image'>";
        d += "</div>";

        d += "<div class='info'>";
        d += "<span>Creator</span>";
        d += " <h4> <a class='lid' value='" + value.mId + "'>" + value.mId; // 로그인 아이디
        d += "</a></h4>";
        d += "</div>";

        d += "</div>";

        d += "<div class='price'>";
        d += "<span>Date</span>";
        d += "<h5> " + value.sDate + "</h5>"; // 날짜
        d += "</div>";

        d += "</div>";

        d += "</div>";
        d += "</div>";
        d += "</div>";
        c += d;
        d = "";
      });

      c += "</div>";
      c += "<div class='swiper-pagination mg-t-13'></div>";
      c += "<div class='swiper-button-next btn-slide-next active'></div>";
      c += "<div class='swiper-button-prev btn-slide-prev'>";
      c += "</div>";
      c += "</div>";
      $(" #favor").append(c); // 날짜 선택 하단부분의 방부분에 해당 값들 출력
      swiper_fn2(); // ajax 이용시 swiper 구문 사용할 경우 제대로 먹히지 않는 오류 방지하여 swiperr function 호출
      goRoom(); // 방으로 이용하는 function 호출
    },
    error: function () {
      alert("실패");
    },
  });
}
// 방 이동하는 function
// function goRoom() {
//   $(".goRoom").on("click", function () {
//     // alert("방 클릭");
//     var seq = $(this).find(".sNum").val();
//     // alert(seq);
//     var url = "http://192.168.0.86:3000" + "/" + seq;
//     window.open(url, "width=100%", "height=100%");
//   });
// }

//swiper function
function swiper_fn2() {
  var swiper = new Swiper(".carousel6", {
    // autoplay: {
    //     delay: 5000,
    //     disableOnInteraction: false,
    //     },
    slidesPerView: 3,
    loop: false,
    spaceBetween: 30,
    navigation: {
      clickable: true,
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
    spaceBetween: 30,
    breakpoints: {
      768: {
        slidesPerView: 2,
        spaceBetween: 30,
      },
      1024: {
        slidesPerView: 3,
        spaceBetween: 30,
      },
    },
  });
}
