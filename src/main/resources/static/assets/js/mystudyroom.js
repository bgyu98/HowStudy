(function ($) {
  "use strict";
  var buttonHeart2 = function () {
    $(".wishlist-button2").on("click", function () {
      var seq = $(this).prev().val(); // 23
      // alert(seq);
      var check = 0; // 하트 체크 여부
      // 버튼 on of 관련 문
      var iteration = $(this).data("iteration") || 1;
      switch (iteration) {
        case 1:
          $(this).removeClass("active");
          var val = parseInt($(this).find("span").text()) - 1;
          // 여기에 처음 눌렀을때 관련 ajax 문 작성
          //alert("하트 첫번째누름");
          check = 1;
          $(this).find("span").text(val);
          break;
        case 2:
          $(this).addClass("active");
          var val = parseInt($(this).find("span").text()) + 1;
          // 여기에 두번째 눌렀을 때 관련 ajax문 작성
          //alert("하트 두번째누름");
          $(this).find("span").text(val);
          check = 2;
          break;
      }

      //alert(check);
      var data = {
        sNum: seq, // 글 번호
        check: check, // 체크여부
      };

      $.ajax({
        type: "get",
        url: "heartcheck",
        data: data,
        dataType: "json",
        success: function (json) {
          alert("성공");
          // alert(json.sFavorNum);
        },
        error: function () {
          alert("실패");
        },
      });
      iteration++;
      if (iteration > 2) iteration = 1;
      $(this).data("iteration", iteration);
    });
  };
  // Dom Ready
  // $(function () {
  buttonHeart2();
  // });
})(jQuery);

function checkD(e) {
  // select 선택시 실행
  // alert(d);
  var day = {
    date: e.value, // 선택한 옵션의 value 값
  };

  d = "";

  $.ajax({
    type: "get",
    url: "checkdate",
    data: day,
    dataType: "json",

    success: function (json) {
      alert("성공");
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

        d += "<a><img src='../assets/images/box-item/image-box-29.jpg' alt='Image'></a>";
        d += "<button class='wishlist-button heart'>";
        d += "<span class='number-like'> " + 100 + "</span>"; // 즐겨찾기
        d += "</button>";

        d += "</div>";

        d += "<div class='card-title'>";
        d += "<h3><a href='item-details.html'>" + value.sTitle + "</a></h3>"; // 제목
        d += "<div class='tags'>" + value.sCategory + "</div>"; // 선호태그
        d += "</div>";

        d += "<div class='meta-info style2'>";

        d += "<div class='author'>";

        d += "<div class='avatar'>";
        d += "<img src='../assets/images/avatar/avt-28.jpg' alt='Image'>";
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
      swiper_fn2();
    },
    error: function () {
      alert("실패");
    },
  });
}
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
