/**
 * isMobile
 * Parallax
 * flatContentBox
 * flatCounter
 * flatIsotopeCase
 * flatAccordion
 * swClick
 * buttonHeart
 * buttonHeart2
 * goTop
 * WOW
 * toggleMenu
 * topSearch
 * flatProgressBar
 * popUpLightBox
 * donatProgress
 * Preloader
 * clearcheckbox
 * flatAccordions
 * dropdown
 * no_link
 * flcustominput
 * tabs
 * copycode
 * fasterPreview
 * viewShop
 */

(function ($) {
  "use strict";

  var isMobile = {
    Android: function () {
      return navigator.userAgent.match(/Android/i);
    },
    BlackBerry: function () {
      return navigator.userAgent.match(/BlackBerry/i);
    },
    iOS: function () {
      return navigator.userAgent.match(/iPhone|iPad|iPod/i);
    },
    Opera: function () {
      return navigator.userAgent.match(/Opera Mini/i);
    },
    Windows: function () {
      return navigator.userAgent.match(/IEMobile/i);
    },
    any: function () {
      return (
        isMobile.Android() ||
        isMobile.BlackBerry() ||
        isMobile.iOS() ||
        isMobile.Opera() ||
        isMobile.Windows()
      );
    },
  };

  var Parallax = function () {
    if ($().parallax && isMobile.any() == null) {
      $(".parallax").parallax("50%", 0.2);
    }
  };

  var flatContentBox = function () {
    $(window).on("load resize", function () {
      var mode = "desktop";
      if (matchMedia("only screen and (max-width: 1199px)").matches) mode = "mobile";
      $(".themesflat-content-box").each(function () {
        var margin = $(this).data("margin");
        if (margin) {
          if (mode === "desktop") {
            $(this).attr("style", "margin:" + $(this).data("margin"));
          } else if (mode === "mobile") {
            $(this).attr("style", "margin:" + $(this).data("mobilemargin"));
          }
        }
      });
    });
  };

  var flatCounter = function () {
    if ($(document.body).hasClass("counter-scroll")) {
      var a = 0;
      $(window).scroll(function () {
        var oTop = $(".tf-counter").offset().top - window.innerHeight;
        if (a === 0 && $(window).scrollTop() > oTop) {
          if ($().countTo) {
            $(".tf-counter")
              .find(".number")
              .each(function () {
                var to = $(this).data("to"),
                  speed = $(this).data("speed");

                $(this).countTo({
                  to: to,
                  speed: speed,
                });
              });
          }
          a = 1;
        }
      });
    }
  };

  var flatIsotopeCase = function () {
    $(".box-gallery").each(function () {
      if ($().isotope) {
        var $container = $(".isotope-gl");
        $(".flat-filter-isotope li").on("click", function () {
          var selector = $(this).find("a").attr("data-filter");
          $(".flat-filter-isotope li").removeClass("active");
          $(this).addClass("active");
          $container.isotope({ filter: selector });
          return false;
        });
      }
    });
  };

  var flatAccordion = function () {
    var args = { duration: 600 };
    $(".flat-toggle .toggle-title.active").siblings(".toggle-content").show();
    $(".flat-toggle.enable .toggle-title").on("click", function () {
      $(this).closest(".flat-toggle").find(".toggle-content").slideToggle(args);
      $(this).toggleClass("active");
    });
    $(".flat-accordion .toggle-title").on("click", function () {
      if (!$(this).is(".active")) {
        $(this)
          .closest(".flat-accordion")
          .find(".toggle-title.active")
          .toggleClass("active")
          .next()
          .slideToggle(args);
        $(this).toggleClass("active");
        $(this).next().slideToggle(args);
      } else {
        $(this).toggleClass("active");
        $(this).next().slideToggle(args);
      }
    });
  };

  var flatAccordion2 = function () {
    var args = { duration: 600 };
    $(".flat-toggle2 .toggle-title.active").siblings(".toggle-content").show();

    $(".flat-toggle2.enable .toggle-title").on("click", function () {
      $(this).closest(".flat-toggle2").find(".toggle-content").slideToggle(args);
      $(this).toggleClass("active");
    }); // toggle

    $(".flat-accordion2 .toggle-title").on("click", function () {
      if (!$(this).is(".active")) {
        $(this)
          .closest(".flat-accordion2")
          .find(".toggle-title.active")
          .toggleClass("active")
          .next()
          .slideToggle(args);
        $(this).toggleClass("active");
        $(this).next().slideToggle(args);
      } else {
        $(this).toggleClass("active");
        $(this).next().slideToggle(args);
      }
    }); // accordion

    // arow
    $("flat-toggle2").on("click", function () {
      $(this).addClass("active");
    });
  };

  var swClick = function () {
    function activeLayout() {
      $(".switcher-container")
        .on("click", "a.sw-light", function () {
          $(this).toggleClass("active");
          $("body").addClass("home-boxed");
          $("body").css({ background: "#f6f6f6" });
          $(".sw-pattern.pattern").css({ top: "100%", opacity: 1, "z-index": "10" });
        })
        .on("click", "a.sw-dark", function () {
          $(".sw-pattern.pattern").css({ top: "98%", opacity: 0, "z-index": "-1" });
          $(this).removeClass("active").addClass("active");
          $("body").removeClass("home-boxed");
          $("body").css({ background: "#fff" });
          return false;
        });
    }

    function activePattern() {
      $(".sw-pattern").on("click", function () {
        $(".sw-pattern.pattern a").removeClass("current");
        $(this).addClass("current");
        $("body").css({
          background: 'url("' + $(this).data("image") + '")',
          "background-size": "30px 30px",
          "background-repeat": "repeat",
        });
        return false;
      });
    }

    activeLayout();
    activePattern();
  };
  var buttonHeart2 = function () {
    $(document).on("click", ".wishlist-button2", function () {
      var seq = $(this).prev().val(); // 23
      var who = $(this).next().val();
      // alert(seq);
      alert(who);
      var check = 0; // 하트 체크 여부
      // 버튼 on of 관련 문
      var iteration = $(this).data("iteration") || 1;
      switch (iteration) {
        case 1:
          $(this).removeClass("active");
          var val = parseInt($(this).find("span").text()) - 1;
          // 여기에 처음 눌렀을때 관련 ajax 문 작성
          //alert("하트 첫번째누름");
          $(this).find("span").text(val);
          check = 1;
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
        mId: who,
      };

      $.ajax({
        type: "get",
        url: "/mypage/heartcheck",
        data: data,
        dataType: "json",
        success: function (json) {
          // alert("성공");
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

  var buttonHeart = function () {
    $(document).on("click", ".wishlist-button", function () {
      var iteration = $(this).data("iteration") || 1;
      var seq = $(this).prev().val(); // 23
      var who = $(this).next().val(); // jd222
      var check = 0;
      if (who == "") {
        alert("로그인 후 이용가능한 서비스 입니다.");
        return false;
      }
      //alert(who);
      //alert(seq);
      switch (iteration) {
        case 1:
          $(this).addClass("active");
          var val = parseInt($(this).find("span").text()) + 1;
          //alert("하트 첨누름");
          check = 2;
          $(this).find("span").text(val);
          break;
        case 2:
          $(this).removeClass("active");
          var val = parseInt($(this).find("span").text()) - 1;
          check = 1;
          //alert("하트 두번째누름");
          $(this).find("span").text(val);
          break;
      }

      var data = {
        sNum: seq, // 글 번호
        check: check, // 체크여부
        mId: who, // 로그인한 아이디 ( 즐겨찾기 누른 사람 )
      };

      $.ajax({
        type: "get",
        url: "/mypage/heartcheck",
        data: data,
        dataType: "json",
        success: function (json) {
          // alert("성공");
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

  var goTop = function () {
    $(window).scroll(function () {
      if ($(this).scrollTop() > 800) {
        $("#scroll-top").addClass("show");
      } else {
        $("#scroll-top").removeClass("show");
      }
    });

    $("#scroll-top").on("click", function () {
      $("html, body").animate({ scrollTop: 0 }, 1000, "easeInOutExpo");
      return false;
    });
  };

  new WOW().init();

  var toggleMenu = function () {
    $(".header-menu").on("click", function () {
      $(".side-menu__block").addClass("active");
    });

    $(".side-menu__block-overlay,.side-menu__toggler, .scrollToLink").on("click", function (e) {
      $(".side-menu__block").removeClass("active");
      e.preventDefault();
    });
  };

  var topSearch = function () {
    $(document).on("click", function (e) {
      var clickID = e.target.id;
      if (clickID !== "s") {
        $(".top-search").removeClass("show");
      }
    });
    $(document).on("click", function (e) {
      var clickID = e.target.class;
      if (clickID !== "a111") {
        $(".show-search").removeClass("active");
      }
    });

    $(".show-search").on("click", function (event) {
      event.stopPropagation();
    });
    $(".search-form").on("click", function (event) {
      event.stopPropagation();
    });
    $(".show-search").on("click", function (event) {
      if (!$(".top-search").hasClass("show")) {
        $(".top-search").addClass("show");
        event.preventDefault();
      } else $(".top-search").removeClass("show");
      event.preventDefault();
      if (!$(".show-search").hasClass("active")) $(".show-search").addClass("active");
      else $(".show-search").removeClass("active");
    });
  };

  var search = function () {
    $(".header-search").on("click", function () {
      $(".form-checkbox").find("input").prop("checked", false);
    });

    $("a.clear-checkbox").on("click", function (e) {
      e.preventDefault();
    });
  };

  var flatProgressBar = function () {
    $(".couter").appear(
      function () {
        $(".chart").easyPieChart({
          easing: "easeOut",
          lineWidth: 5,
          size: 90,
          scaleColor: false,
          barColor: "#FD4A36",
          trackColor: "#FFE2DE",
          animate: 5000,
          onStep: function (from, to, percent) {
            $(this.el).find(".percent").text(Math.round(percent));
          },
        });
      },
      {
        offset: 400,
      }
    );
  };

  var popUpLightBox = function () {
    if ($(".lightbox-image").length) {
      $(".lightbox-image").fancybox({
        openEffect: "fade",
        closeEffect: "fade",
        helpers: {
          media: {},
        },
      });
    }
  };

  var donatProgress = function () {
    $(".content-progress-box").appear(function () {
      $(this)
        .find("div.donat-bg")
        .each(function () {
          $(this)
            .find(".custom-donat")
            .delay(600)
            .animate(
              {
                width: $(this).attr("data-percent"),
              },
              1000,
              "easeInCirc"
            );
        });
    });
  };

  var Preloader = function () {
    setTimeout(function () {
      $(".preload").fadeOut("slow", function () {
        $(this).remove();
      });
    }, 800);
  };

  var clearcheckbox = function () {
    $(".clear-checkbox").on("click", function () {
      $(".form-checkbox").find("input").prop("checked", false);
    });

    $("a.clear-checkbox").on("click", function (e) {
      e.preventDefault();
    });
  };

  var clearcheckbox2 = function () {
    $(".box-check")
      .find("a")
      .on("click", function () {
        $(this).toggleClass("active");
      });
    $(".clear-check").on("click", function () {
      $(".box-check").find("a").removeClass("active");
    });

    $("a.clear-check").on("click", function (e) {
      e.preventDefault();
    });

    $(".box-check")
      .find("a")
      .on("click", function (e) {
        e.preventDefault();
      });
  };

  var flatAccordions = function () {
    var args = { easing: "easeOutExpo", duration: 500 };
    $(".widget-category.active").find(".content-wg-category").show();
    $(".title-wg-category").on("click", function () {
      if (!$(this).parent().is(".active")) {
        $(this)
          .parent()
          .toggleClass("active")
          .children(".content-wg-category")
          .slideToggle(args)
          .children(".content-wg-category")
          .slideToggle(args);
        this.addClass("show");
      } else {
        $(this).parent().toggleClass("active");
        $(this).next().slideToggle(args);
      }
    });
  };

  var dropdown = function (id) {
    var obj = $(id + ".dropdown");
    var btn = obj.find(".btn-selector");
    var dd = obj.find("ul");
    var opt = dd.find("li");
    dd.hide();
    obj
      .on("mouseenter", function () {
        dd.show();
        dd.addClass("show");
        $(this).css("z-index", 1000);
      })
      .on("mouseleave", function () {
        dd.hide();
        $(this).css("z-index", "auto");
        dd.removeClass("show");
      });

    opt.on("click", function () {
      dd.hide();
      var txt = $(this).text();
      opt.removeClass("active");
      $(this).addClass("active");
      btn.text(txt);
    });
  };

  //정환 드롭다운 추가
  var dropdownjh = function (id) {
    var obj = $(id + ".dropdownjh");
    var btn = obj.find(".btn-selector");
    var dd = obj.find("ul");
    var opt = dd.find("li");
    dd.hide();
    obj
      .on("mouseenter", function () {
        dd.show();
        dd.addClass("show");
        $(this).css("z-index", 1000);
      })
      .on("mouseleave", function () {
        dd.hide();
        $(this).css("z-index", "auto");
        dd.removeClass("show");
      });

    opt.on("click", function () {
      dd.hide();
      var txt = $(this).text();
      opt.removeClass("active");
      $(this).addClass("active");
      btn.text(txt);
    });
  };

  //정환 드롭다운 추가
  var dropdownjh = function (id) {
    var obj = $(id + ".dropdownjh");
    var btn = obj.find(".btn-selector");
    var dd = obj.find("ul");
    var opt = dd.find("li");
    dd.hide();
    obj
      .on("mouseenter", function () {
        dd.show();
        dd.addClass("show");
        $(this).css("z-index", 1000);
      })
      .on("mouseleave", function () {
        dd.hide();
        $(this).css("z-index", "auto");
        dd.removeClass("show");
      });

    opt.on("click", function () {
      dd.hide();
      var txt = $(this).text();
      opt.removeClass("active");
      $(this).addClass("active");
      btn.val(txt);
    });
  };

  var no_link = function () {
    $("a.nolink").on("click", function (e) {
      e.preventDefault();
    });
    $(".icon_menu .icon a").on("click", function (e) {
      e.preventDefault();
    });
  };

  var no_link = function () {
    $("a.nolink").on("click", function (e) {
      e.preventDefault();
    });
    $(".icon_menu .icon a").on("click", function (e) {
      e.preventDefault();
    });
  };

  var flcustominput = function () {
    $("input[type=file]").change(function (e) {
      $(this).parents(".uploadFile").find(".filename").text(e.target.files[0].name);
    });
  };

  var tabs = function () {
    $(".flat-tabs").each(function () {
      $(this).find(".content-tab").children().hide();
      $(this).find(".content-tab").children().first().show();
      $(this)
        .find(".menu-tab")
        .children("li")
        .on("click", function () {
          var liActive = $(this).index();
          var contentActive = $(this)
            .siblings()
            .removeClass("active")
            .parents(".flat-tabs")
            .find(".content-tab")
            .children()
            .eq(liActive);
          contentActive.addClass("active").fadeIn("slow");
          contentActive.siblings().removeClass("active");
          $(this)
            .addClass("active")
            .parents(".flat-tabs")
            .find(".content-tab")
            .children()
            .eq(liActive)
            .siblings()
            .hide();
          swiper_tab();
        });
    });
  };

  var swiper_tab = function () {
    var swiper_tab = new Swiper(".seller-slider3", {
      slidesPerView: 2,
      loop: false,
      spaceBetween: 30,
      navigation: {
        clickable: false,
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      grabCursor: false,
      breakpoints: {
        500: {
          slidesPerView: 3,
          spaceBetween: 30,
        },
        640: {
          slidesPerView: 4,
          spaceBetween: 30,
        },
        768: {
          slidesPerView: 5,
          spaceBetween: 30,
        },
        1070: {
          slidesPerView: 7,
          spaceBetween: 30,
        },
        1400: {
          slidesPerView: 9,
          spaceBetween: 30,
        },
      },
    });
  };
  var viewShop = function () {
    $(".list").on("click", function (event) {
      $(".list").addClass("active");
      $(".grid").removeClass("active");
      event.preventDefault();
      $(".flat-tabs").find(".content-item").fadeOut(150);
      $(".flat-tabs").find(".content-item2").fadeIn(150);
    });
    $(".grid").on("click", function (event) {
      $(".grid").addClass("active");
      $(".list").removeClass("active");
      event.preventDefault();
      $(".flat-tabs").find(".content-item2").fadeOut(150);
      $(".flat-tabs").find(".content-item").fadeIn(150);
    });
  };

  var items = function () {
    $(".icon-fl-search-filled").click(function () {
      var items = $('#searchFrm input[name="items"]').val();

      if (items == null) {
      } else {
        $("#searchFrm")
          .attr("action", "../studyRoom/searchItems?items=" + items)
          .submit();
      }
    });
  };

  // 	Enter 시 검색 기능 구현
  $("#searchFrm").on("submit", function () {
    var items = $('#searchFrm input[name="items"]').val();
    // event keyCode가 13번 (enter) 일때
    if (items == null) {
    } else {
      $("#searchFrm").attr("action", "../studyRoom/searchItems?items=" + items);
    }
  });

  var copycode = function () {
    $(".btn-copycode").on("click", function () {
      $(".inputcopy").select();
      document.execCommand("copy");
      alert("copy completed !");
    });
  };
  $("#profileimg").click(function (e) {
    $("#tf-upload-img").click();
  });

  function fasterPreview(uploader) {
    if (uploader.files && uploader.files[0]) {
      $("#profileimg").attr("src", window.URL.createObjectURL(uploader.files[0]));
    }
  }

  $("#tf-upload-img").change(function () {
    fasterPreview(this);
  });

  // 태그별 스터디룸 출력

  $(document).on("change", "#selectStudyRoom", function (url) {
    var keyword = $(this).val();

    $.ajax({
      url: "study2",
      data: { sCategory: keyword },
      type: "post",
      cache: "false",
      async: false,
      contentType: "application/x-www-form-urlencoded;charset=UTF-8",
      dataType: "json",
      success: function (result) {
        //console.log(result);
        var d = "";
        var c = "";
        $("#sectionId").empty();
        c += "<div class='themesflat-container'>";
        c += "<div class='row'>";
        c += "<div class='col-md-12' style='margin-top: 30px'>";
        c += "<div class='heading-live-auctions mg-bt-21' style='margin-bottom: -20px'>";
        c += "<h2 class='tf-title pad-l-7'>선호 스터디룸</h2>";
        c += "</div>";
        c += "</div>";
        c += "<div class='col-md-12'>";
        c +=
          "<div class='tf-soft' style='display: inline-block; float: right; width: 12%; height: 60%;'>";
        c += "<select id='selectStudyRoom' style='width: 100%; height: 100%;'>";
        c +=
          "<option class='selectOpt' hidden='' disabled='disabled' selected='selected' value='' style = 'color: rgb(0, 0, 0);' >태그선택</option > ";
        c += "<option class='selectOpt' id='job' name='keyword'>취업</option>";
        c += "<option class='selectOpt' id='book' name='keyword'>독서</option>";
        c += "<option class='selectOpt' id='lan' name='keyword'>어학</option>";
        c += "<option class='selectOpt' id='teac' name='keyword'>임용</option>";
        c += "<option class='selectOpt' id='Offi' name='keyword'>공무원</option>";
        c += "<option class='selectOpt' id='stu' name='keyword'>대학수능</option>";
        c += "<option class='selectOpt' id='cer' name='keyword'>자격증</option>";
        c += "<option class='selectOpt' id='scstu' name='keyword'>학교공부</option>";
        c += "<option class='selectOpt' id='etc' name='keyword'>기타</option>";
        c += "<option class='selectOpt' id='cord' name='keyword'>코딩</option>";
        c += "<option class='selectOpt' id='Turn' name='keyword'>이직</option>";
        c += "</select>";
        c += "</div>";
        c += "</div>";

        $.each(result, function (key, value) {
          d += "<div id='tagListForm' class='fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6'>";
          d += "<div class='sc-card-product'>";
          d += "<form id='studyTagList'>";
          d += "<div class='price' style='margin-bottom: 7px; margin-top: -5px;'>";
          d +=
            "<span id='countNum'>스터디 정원 &nbsp; " + value.sPeopleNum + " &nbsp;/&nbsp;4</span>";
          d += "</div>";
          d += "<div class='card-media'>";
          d +=
            "<a href='item-details.html'/><img src='../assets/images/studyRoom/" +
            value.sFile +
            ".png'/></a>";
          d += "<div class='button-place-bid'>";
          if (value.sPw == "") {
            d +=
              "<a id='sangsae' href='#' data-toggle='modal' data-target=.popup class='sc-button style-place-bid style bag fl-button pri-3'><span>상세보기</span></a>";
          } else {
            d +=
              "<a id='sangsae1' href='#' data-toggle='modal' data-target=.sPwConfirm class='sc-button style-place-bid style bag fl-button pri-3'><span>상세보기</span></a>";
          }
          d += "</div>";
          d +=
            "<button class='wishlist-button heart'><span class='number-like'>100</span></button>";
          d += "</div>";
          d += "<div class='card-title'>";
          d += "<h5 class='style2'><a href='item-details.html'>" + value.sTitle + "</a></h5>";
          d += "<div class='tags'>" + value.sCategory + "</div>";
          d += "</div>";
          d += "<div class='meta-info'>";
          d += "<div class='author' id='creatby'>";
          d += "<span>CREATE BY&nbsp; &nbsp; </span>";
          d += "<span class='pricing' id='createMid'>" + value.smId + "</span>";
          d += "</div>";
          d += "</div>";
          d += "</form>";
          d += "</div>";
          d += "</div>";
          c += d;
          d = "";
        });

        c += "<div class='col-md-12 wrap-inner load-more text-center mg-t-4'>";
        c += "<a href='#'' id='loadmore' class='sc-button loadmore fl-button pri-3'>";
        c += "<span>더보기</span></a>";
        c += "</div>";
        c += "</div>";
        c += "</div>";

        $("#sectionId").append(c);
        loadmore();

        $("#selectStudyRoom").change(function (url) {
          var keyword = $(this).val();
        });
      },
      error: function (request, status, error) {
        alert("에러");
        console.log("상태코드: " + request.status);
        console.log("메세지: " + request.responseText);
        console.log("에러설명: " + error);
      },
    });
  });

  var loadmore = function () {
    $(".fl-item").slice(0, 8).show();
    $(".fl-blog.fl-item2").slice(0, 6).show();
    $(".fl-collection.fl-item3").slice(0, 3).show();
    $(".fl-item.fl-item4").slice(0, 15).show();
    $(".fl-item.fl-item5").slice(0, 7).show();

    $("#loadmore").on("click", function (e) {
      e.preventDefault();

      $(".fl-item:hidden").slice(0, 4).slideDown();
      $(".fl-item2:hidden").slice(0, 3).slideDown();
      $(".fl-item3:hidden").slice(0, 3).slideDown();
      $(".fl-item4:hidden").slice(0, 5).slideDown();
      $(".fl-item5:hidden").slice(0, 13).slideDown();
      if ($(".fl-item:hidden").length == 0) {
        $("#loadmore").hide();
      }
      if ($(".fl-item2:hidden").length == 0) {
        $("#loadmore").hide();
      }
      if ($(".fl-item3:hidden").length == 0) {
        $("#loadmore").hide();
      }
      if ($(".fl-item4:hidden").length == 0) {
        $("#loadmore").hide();
      }
      if ($(".fl-item5:hidden").length == 0) {
        $("#loadmore").hide();
      }
    });
  };

  $("#deletecus").click(function (evt) {
    evt.stopPropagation();
    evt.preventDefault();

    var mId = $("#mId").val();
    var mPw = document.querySelector('input[name="mPw"]').value;

    $.ajax({
      url: "./passwordConfirm?mId=" + mId,
      type: "post",
      data: { mId: mId, mPw: mPw },

      success: function () {
        alert(mId);
        alert(mPw);
        var url = "./passwordConfirm?mId=" + mId;
        location.replace(url);
      },
      error: function () {
        alert("서버요청실패");
      },
    });
  });

  //	스터디룸 패스워드 확인
  $(document).ready(function () {
    $("#popup_bid2").on("show.bs.modal", function (e) {
      var sNum = $(e.relatedTarget).data("num");
      var sPw = $(e.relatedTarget).data("pw");
      alert(sNum + ": 비번 : " + sPw);
      $(this).find("#hiddenNum").val(sNum);
      $(this).find("#insertPw").val(sPw);
      $(".alertDanger").hide();
    });

    $("#btnCustom").on("click", function () {
      var number = $("#hiddenNum").val();
      alert("방번호좀 가져가라" + number);
      // 비번 성공 시 파라미터 가지고 이동 할 url 변수처리
      var moveURL = "../studyRoom/chat?sNum=" + number;
      if ($("input[name=s]").val() == $("#insertPw").val()) {
        alert("동일");
        $(".alertDanger").hide();
        $("#btnCustom").attr("href", moveURL);
      } else {
        alert("일치ㄴㄴ");
        $(".alertDanger").show();
        document.querySelector("#btnCustom").removeAttribute("href");
      }
    });
  });

  // Dom Ready
  $(function () {
    goTop();
    flatContentBox();
    topSearch();
    flatIsotopeCase();
    flatAccordion();
    flatAccordion2();
    swClick();
    popUpLightBox();
    toggleMenu();
    Parallax();
    flatCounter();
    tabs();
    buttonHeart();
    buttonHeart2();
    flatProgressBar();
    donatProgress();
    clearcheckbox();
    clearcheckbox2();
    flatAccordions();
    no_link();
    dropdown("#item_category");
    dropdown("#buy");
    dropdown("#all-items");
    dropdown("#artworks");
    dropdown("#sort-by");
    dropdown("#sort-by2");
    dropdown("#sort-by3");
    dropdown("#sort-by4");
    dropdown("#item-create");
    dropdown("#item-create2");
    dropdown("#item-create3");
    flcustominput();
    copycode();
    swiper_tab();
    viewShop();
    Preloader();
    items();
  });
})(jQuery);
