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
          0;
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
      //alert(who);
      var check = 0; // ?????? ?????? ??????
      // ?????? on of ?????? ???
      var iteration = $(this).data("iteration") || 1;
      switch (iteration) {
        case 1:
          $(this).removeClass("active");
          var val = parseInt($(this).find("span").text()) - 1;
          // ????????? ?????? ???????????? ?????? ajax ??? ??????
          //alert("?????? ???????????????");
          $(this).find("span").text(val);
          check = 1;
          break;
        case 2:
          $(this).addClass("active");
          var val = parseInt($(this).find("span").text()) + 1;
          // ????????? ????????? ????????? ??? ?????? ajax??? ??????
          //alert("?????? ???????????????");
          $(this).find("span").text(val);
          check = 2;
          break;
      }

      //alert(check);
      var data = {
        sNum: seq, // ??? ??????
        check: check, // ????????????
        mId: who,
      };

      $.ajax({
        type: "get",
        url: "/mypage/heartcheck",
        data: data,
        dataType: "json",
        success: function (json) {
          // alert("??????");
          // alert(json.sFavorNum);
        },
        error: function () {
          alert("??????");
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

      if (who == "" || who == "undefined") {
        Swal.fire({
          icon: "Error",
          title: "Error",
          text: "????????? ??? ?????????????????????.",

          confirmButtonColor: "red", // confrim ?????? ?????? ??????

          confirmButtonText: "??????", // confirm ?????? ????????? ??????
        }).then((result) => {
          if (result.isConfirmed) {
            return false;
          }
        });
        return false;
      }
      //alert(who);
      //alert(seq);
      switch (iteration) {
        case 1:
          $(this).addClass("active");
          var val = parseInt($(this).find("span").text()) + 1;
          //alert("?????? ?????????");
          check = 2;
          $(this).find("span").text(val);
          break;
        case 2:
          $(this).removeClass("active");
          var val = parseInt($(this).find("span").text()) - 1;
          check = 1;
          //alert("?????? ???????????????");
          $(this).find("span").text(val);
          break;
      }

      var data = {
        sNum: seq, // ??? ??????
        check: check, // ????????????
        mId: who, // ???????????? ????????? ( ???????????? ?????? ?????? )
      };

      $.ajax({
        type: "get",
        url: "/mypage/heartcheck",
        data: data,
        dataType: "json",
        success: function (json) {
          // alert("??????");
          // alert(json.sFavorNum);
        },
        error: function () {
          alert("??????");
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

  //?????? ???????????? ??????
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

  //?????? ???????????? ??????
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

  // 	Enter ??? ?????? ?????? ??????
  $("#searchFrm").on("submit", function () {
    var items = $('#searchFrm input[name="items"]').val();
    // event keyCode??? 13??? (enter) ??????
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

  // ????????? ???????????? ??????

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
        c += "<h2 class='tf-title pad-l-7'>?????? ????????????</h2>";
        c += "</div>";
        c += "</div>";
        c += "<div class='col-md-12'>";
        c +=
          "<div class='tf-soft' style='display: inline-block; float: right; width: 12%; height: 60%;'>";
        c += "<select id='selectStudyRoom' style='width: 100%; height: 100%;'>";
        c +=
          "<option class='selectOpt' hidden='' disabled='disabled' selected='selected' value='' style = 'color: rgb(0, 0, 0);' >????????????</option > ";
        c += "<option class='selectOpt' id='job' name='keyword'>??????</option>";
        c += "<option class='selectOpt' id='book' name='keyword'>??????</option>";
        c += "<option class='selectOpt' id='lan' name='keyword'>??????</option>";
        c += "<option class='selectOpt' id='teac' name='keyword'>??????</option>";
        c += "<option class='selectOpt' id='Offi' name='keyword'>?????????</option>";
        c += "<option class='selectOpt' id='stu' name='keyword'>????????????</option>";
        c += "<option class='selectOpt' id='cer' name='keyword'>?????????</option>";
        c += "<option class='selectOpt' id='scstu' name='keyword'>????????????</option>";
        c += "<option class='selectOpt' id='etc' name='keyword'>??????</option>";
        c += "<option class='selectOpt' id='cord' name='keyword'>??????</option>";
        c += "<option class='selectOpt' id='Turn' name='keyword'>??????</option>";
        c += "</select>";
        c += "</div>";
        c += "</div>";

        $.each(result, function (key, value) {
          d += "<div id='tagListForm' class='fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6'>";
          d += "<div class='sc-card-product'>";
          d += "<form id='studyTagList'>";
          d += "<div class='price' style='margin-bottom: 7px; margin-top: -5px;'>";
          d +=
            "<span id='countNum'>????????? ?????? &nbsp; " + value.sPeopleNum + " &nbsp;/&nbsp;4</span>";
          d += "</div>";
          d += "<div class='card-media'>";
          d +=
            "<a href='item-details.html'/><img src='../assets/images/studyRoom/" +
            value.sFile +
            ".png'/></a>";
          d += "<div class='button-place-bid'>";
          if (value.sPw == "") {
            d +=
              "<a id='sangsae' href='#' data-toggle='modal' data-target=." +
              value.sTitle +
              " class='sc-button style-place-bid style bag fl-button pri-3'><span>????????????</span></a>";
          } else {
            d +=
              "<a id='sangsae1' href='#' data-toggle='modal' data-target=." +
              value.sTitle +
              "1 class='sc-button style-place-bid style bag fl-button pri-3'><span>????????????</span></a>";
          }
          d += "</div>";
          d += "<input type='hidden' value=" + value.sNum + " />";
          if (value.check == 0) {
            d += "<button class='wishlist-button heart'>";
            d += "<span class='number-like'>" + value.sFavorNum + "</span>";
            d += "</button>";
          } else if (value.check == 1) {
            d +=
              "<button class='wishlist-button2 public heart mg-t-6 active' id='wishlist-button2'>";
            d += "<span class='number-like'>" + value.sFavorNum + "</span>";
            d += "</button>";
          }
          d += " <input type='hidden' value=" + value.loginId + " />";
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
        c += "<span>?????????</span></a>";
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
        alert("??????");
        console.log("????????????: " + request.status);
        console.log("?????????: " + request.responseText);
        console.log("????????????: " + error);
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

        var url = "./passwordConfirm?mId=" + mId;
        location.replace(url);
      },
      error: function () {
        alert("??????????????????");
      },
    });
  });

  //	???????????? ???????????? ??????
  $(document).ready(function () {
    $("#popup_bid2").on("show.bs.modal", function (e) {
      var sNum = $(e.relatedTarget).data("num");
      var sPw = $(e.relatedTarget).data("pw");
      //alert(sNum + ": ?????? : " + sPw);
      $(this).find("#hiddenNum").val(sNum);
      $(this).find("#insertPw").val(sPw);
      $(".alertDanger").hide();
    });

    $("#btnCustom").on("click", function () {
      var number = $("#hiddenNum").val();
      //alert("???????????? ????????????" + number);
      // ?????? ?????? ??? ???????????? ????????? ?????? ??? url ????????????
      var moveURL = "../studyRoom/chat?sNum=" + number;
      if ($("input[name=s]").val() == $("#insertPw").val()) {
       // alert("??????");
        $(".alertDanger").hide();
        $("#btnCustom").attr("href", moveURL);
      } else {
       // alert("????????????");
        $(".alertDanger").show();
        document.querySelector("#btnCustom").removeAttribute("href");
      }
    });
  });

  // ?????? ?????? ?????? ?????? ??????, ????????? ????????? ???????????? ?????? ????????? ??????
function checkDate3(event) {
//alert("??????")
  var regdate2 = document.getElementById("regdate2");
  regdate2.value = null;
  regdate2.setAttribute("min", regdate1.value);
}
// checkdate1 finish

// checkDate2 start ( ????????? ?????? ??????)
function checkDate4(event) {
  function colorize() {
    var r = Math.floor(Math.random() * 200);
    var g = Math.floor(Math.random() * 200);
    var b = Math.floor(Math.random() * 200);
    var color = "rgba(" + r + ", " + g + ", " + b + ", 0.7)";
    return color;
  }
  var day1 = regdate1.value;
  var day2 = regdate2.value;
 // alert("?????? ??????  :" + day1 + day2)
  if (day1 == "") {
    // ?????? ?????? ?????? ????????? ??????
    alert("????????? ???????????? ??????????????????.");
    regdate2.value = null;
  }

    var vo = { date1: day1, date2: day2 };
    var labelList2 = new Array();
    var valueList2 = new Array();

    var colorList2 = new Array();

    $.ajax({
      url: "saveDate",
      type: "get",
      data: vo,
      cache: "false",
      async: false,
      contentType: "application/x-www-form-urlencoded;charset=UTF-8",
      dataType: "json",

      success: function (json2) {
        //alert("??????dsds");
        //alert(json2);
        $.each(json2, function (index, value) {
          //alert(value.sDate);
          labelList2.push(value.sCategory);
          valueList2.push(parseInt(value.sCount));
          colorList2.push(colorize());
        });

        var data2 = {
          labels: labelList2,
          datasets: [
            {
              label: "?????? ??? ???????????? ??????",
              backgroundColor: colorList2,
              data: valueList2,
            },
          ],
          options: {
            title: {
              display: true,
              text: "?????? ??? ???????????? ??????",
            },
          },
        };
        console.log(data2);
        if (window.chartObj != undefined) {
          window.chartObj.destroy();
        }

        var ctx2 = document.getElementById("canvas-daychart").getContext("2d");
        chartObj = new Chart(ctx2, {
          type: "pie",
          data: data2,
          options: {
            legend: {
              position: "top",
            },
            scales: {
              xAxes: [
                {
                  ticks: {
                    display: false,
                  },
                },
              ],
              yAxes: [
                {
                  ticks: {
                    display: false,
                  },
                },
              ],
            },
            plugins: {
              //???????????? ????????? ?????? ?????? (????????? ??????????????? ????????? ????????? ????????? ???????????????)
              datalabels: {
                borderRadius: 4,
                color: "#4e342e",
                font: {
                  weight: "bold",
                },
                formatter: function (value, context) {
                  var idx = context.dataIndex;
                  return context.chart.data.labels[idx]; // ?????? ?????? ????????? ( ex) ?????? , ?????? , ...)
                },
                padding: 1,
                align: "end",
              },
            },
          },
        });
      },
      error: function (err) {
        alert("error");
        console.log(err);
      },
    }); //end of ajax
  }

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
