<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <!--<![endif]-->
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>



  <head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><![endif]-->
    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><![endif]-->
    <title>Axies | NFT Marketplace HTML Template</title>

    <meta name="author" content="themesflat.com" />
    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" / />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png" />
    <link rel="stylesheet" href="../assets/css/flags.css">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
    />
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
  </head>

  <body class="body header-fixed is_dark">
  <body class="body header-fixed is_dark">
    <!-- preloade -->
    <div class="preload preload-container">
      <div class="preload-logo"></div>
      <div class="preload-logo"></div>
    </div>
    <!-- /preload -->

    <div id="wrapper">
      <div id="page" class="clearfix">
        <header id="header_main" class="header_1 js-header">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div id="site-header-inner">
                  <div class="wrap-box flex">
                    <div id="site-logo" class="clearfix">
                      <div id="site-logo-inner">
                        <a href="index" rel="home" class="main-logo">
                          <img
                            id="logo_header"
                            src="../assets/images/logo/logo01.png"
                            alt="nft-gaming"
                            width="180"
                            height="80"
                            data-retina="assets/images/logo/logo_dark@2x.png"
                            data-width="133"
                            data-height="56"
                          />
                        </a>
                      </div>
                    </div>
                    <div class="mobile-button"><span></span></div>
                    <!-- /.mobile-button -->
                    <nav id="main-nav" class="main-nav">
                      <ul id="menu-primary-menu" class="menu">
                        <li class="menu-item current-menu-item">
                          <a href="../studyRoom/study">스터디룸</a>
                        </li>
                        <li class="menu-item menu-item-has-children">
                          <a href="#">공부기록</a>
                          <ul class="sub-menu">
                            <li class="menu-item"><a href="../study/record">RECORD</a></li>
                            <li class="menu-item"><a href="../study/ranking">RANKING</a></li>
                            <li class="menu-item"><a href="../study/todo">TO-DO</a></li>
                            <li class="menu-item"><a href="../study/note">NOTE</a></li>
                          </ul>
                        </li>
                        <li class="menu-item menu-item-has-children">
                          <a href="#">게시판</a>
                          <ul class="sub-menu">
                            <li class="menu-item"><a href="../board/notice">공지사항</a></li>
                            <li class="menu-item"><a href="../board/faq">FAQ</a></li>
                          </ul>
                        </li>
                        <li class="menu-item current-menu-item">
                          <a href="../meta/meta">메타버스</a>
                        </li>
                        <li class="menu-item current-menu-item">
                          <a href="../offline/off">오프라인</a>
                        </li>
                        <li class="menu-item current-menu-item">
                          <c:if test="${sessionScope.loginId==null}"> 
                            <a id="login" class="login"
                              href="../user/login">로그인</a>  
                          </c:if>
                          <c:if test="${sessionScope.loginId!=null}">
                            <li>
                              <button id="mypage1" class="mypage">
                              <img src="../assets/images/icon/usericon.png" alt="" />
                            </button>
                            <button id="mypage2" class="mypage" style="width: 30px; height: 30px;">
                              <img src="../assets/images/icon/drop.png" alt="" />
                            </button>
                          </c:if>
                        </li>
                      </ul>
                    </nav>
                    <!-- /#main-nav -->
                    <!-- /#main-nav -->
                 

                    

                    <div class="flat-search-btn flex">
                      <div class="header-search flat-show-search" id="s1">
                        <a href="#" class="show-search header-search-trigger">
                          <svg
                            width="20"
                            height="20"
                            viewBox="0 0 20 20"
                            fill="none"
                            xmlns="http://www.w3.org/2000/svg"
                          >
                            <mask
                              id="mask0_334_638"
                              style="mask-type: alpha"
                              maskUnits="userSpaceOnUse"
                              x="1"
                              y="1"
                              width="18"
                              height="17"
                            >
                              <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M1.66699 1.66666H17.6862V17.3322H1.66699V1.66666Z"
                                fill="white"
                                stroke="white"
                              />
                            </mask>
                            <g mask="url(#mask0_334_638)">
                              <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M9.67711 2.87312C5.9406 2.87312 2.90072 5.84505 2.90072 9.49903C2.90072 13.153 5.9406 16.1257 9.67711 16.1257C13.4128 16.1257 16.4527 13.153 16.4527 9.49903C16.4527 5.84505 13.4128 2.87312 9.67711 2.87312ZM9.67709 17.3322C5.26039 17.3322 1.66699 13.8182 1.66699 9.49902C1.66699 5.17988 5.26039 1.66666 9.67709 1.66666C14.0938 1.66666 17.6864 5.17988 17.6864 9.49902C17.6864 13.8182 14.0938 17.3322 9.67709 17.3322Z"
                                fill="white"
                              />
                              <path
                                d="M9.67711 2.37312C5.67512 2.37312 2.40072 5.55836 2.40072 9.49903H3.40072C3.40072 6.13174 6.20607 3.37312 9.67711 3.37312V2.37312ZM2.40072 9.49903C2.40072 13.4396 5.67504 16.6257 9.67711 16.6257V15.6257C6.20615 15.6257 3.40072 12.8664 3.40072 9.49903H2.40072ZM9.67711 16.6257C13.6784 16.6257 16.9527 13.4396 16.9527 9.49903H15.9527C15.9527 12.8664 13.1472 15.6257 9.67711 15.6257V16.6257ZM16.9527 9.49903C16.9527 5.5584 13.6783 2.37312 9.67711 2.37312V3.37312C13.1473 3.37312 15.9527 6.1317 15.9527 9.49903H16.9527ZM9.67709 16.8322C5.52595 16.8322 2.16699 13.5316 2.16699 9.49902H1.16699C1.16699 14.1048 4.99484 17.8322 9.67709 17.8322V16.8322ZM2.16699 9.49902C2.16699 5.46656 5.52588 2.16666 9.67709 2.16666V1.16666C4.9949 1.16666 1.16699 4.8932 1.16699 9.49902H2.16699ZM9.67709 2.16666C13.8282 2.16666 17.1864 5.46649 17.1864 9.49902H18.1864C18.1864 4.89327 14.3593 1.16666 9.67709 1.16666V2.16666ZM17.1864 9.49902C17.1864 13.5316 13.8282 16.8322 9.67709 16.8322V17.8322C14.3594 17.8322 18.1864 14.1047 18.1864 9.49902H17.1864Z"
                                fill="white"
                              />
                            </g>
                            <mask
                              id="mask1_334_638"
                              style="mask-type: alpha"
                              maskUnits="userSpaceOnUse"
                              x="13"
                              y="13"
                              width="6"
                              height="6"
                            >
                              <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M14.2012 14.2999H18.3333V18.3333H14.2012V14.2999Z"
                                fill="white"
                                stroke="white"
                              />
                            </mask>
                            <g mask="url(#mask1_334_638)">
                              <path
                                fill-rule="evenodd"
                                clip-rule="evenodd"
                                d="M17.7166 18.3333C17.5596 18.3333 17.4016 18.2746 17.2807 18.1572L14.3823 15.3308C14.1413 15.0952 14.1405 14.7131 14.3815 14.4774C14.6217 14.2402 15.0123 14.2418 15.2541 14.4758L18.1526 17.303C18.3935 17.5387 18.3944 17.9199 18.1534 18.1556C18.0333 18.2746 17.8746 18.3333 17.7166 18.3333Z"
                                fill="white"
                              />
                              <path
                                d="M17.7166 18.3333C17.5595 18.3333 17.4016 18.2746 17.2807 18.1572L14.3823 15.3308C14.1413 15.0952 14.1405 14.7131 14.3815 14.4774C14.6217 14.2402 15.0123 14.2418 15.2541 14.4758L18.1526 17.303C18.3935 17.5387 18.3944 17.9199 18.1534 18.1556C18.0333 18.2746 17.8746 18.3333 17.7166 18.3333"
                                stroke="white"
                              />
                            </g>
                          </svg>
                        </a>
                        <div class="top-search">
                          <form action="#" method="get" role="search" class="search-form">
                            <input
                              type="search"
                              id="s"
                              class="search-field"
                              placeholder="Search..."
                              value=""
                              name="s"
                              title="Search for"
                              required=""
                            />
                            <button class="search search-submit" type="submit" title="Search">
                              <i class="icon-fl-search-filled"></i>
                            </button>
                          </form>
                        </div>
                      </div>
                      <form name="myPage">
                      <div class="my-profile-layer" style="">
                        <div class="my-profile-layer-header">
                          <section class="my-profile-layer-info">
                            <div class="my-profile-layer-img-area">
                              <img src="../assets/images/icon/usericon.png" align="absleft" class="my-profile-layer-img"></div> 
                              <div class="my-profile-layer-info-tx">
                                <h5 class="my-profile-layer-info-name" name="mId"><%=session.getAttribute("loginId")%> 님 </h5> 
                                <p class="my-profile-layer-info-email"  name="mEmail"><%=session.getAttribute("loginEmail")%></p></div>
                              </section> 
                              <section class="my-profile-layer-user-grade">
                                <div class="my-profile-user-grade-container">
                                  <h6 class="my-grade-title">등급</h6> 
                                  <div class="my-grade-contents">
                                    <div class="my-grade-tx">프리미엄 회원</div> 
                                    <a href="#" class="purchase-ticket-btn">이용권 구매</a>
                                  </div> 
                                  <div class="ticket-date">~ 2023년 01월 8일</div>
                                </div>
                              </section> 
                      </div> 
                      <div class="my-profile-layer-content">
                        <div class="my-menu-area">
                          <ul class="my-menu-list">
                            <li class="my-menu-list-item move">
                              <a href="../user/modifyAccount?mId=${sessionScope.loginId}" class="my-menu-list-item-btn">내 프로필</a>
                            </li> 
                            <li class="my-menu-list-item move">
                              <a href="/camstudy/user/payment" class="my-menu-list-item-btn">결제내역</a>
                            </li> <li class="my-menu-list-item move"><a href="/camstudy/user/coupon" class="my-menu-list-item-btn">공부기록</a>
                            </li>
                            <li class="my-menu-list-item move"><a href="../mypage/mystudyroom" class="my-menu-list-item-btn">마이페이지</a>
                            </li>
                            </li> <li class="my-menu-list-item move guide"><a href="#" target="_blank" class="my-menu-list-item-btn">이용가이드</a></li> 
                            <li class="my-menu-list-item move guide">
                              <c:if test="${sessionScope.loginId!=null}">
                              <a target="_blank" class="my-menu-list-item-btn"  href="../user/logout">로그아웃</a>
                              </c:if>
                            </li> 

                           
                          </ul>
                          </div>
                        </div>
                      </div>
                    </form>

                      <div class="admin_active" id="header_admin">
                        <div class="header_avatar">
                          <div class="popup-notification">
                            <div class="notification">
                              <span class="number">3</span>
                              <svg
                                width="19"
                                height="22"
                                viewBox="0 0 19 22"
                                fill="#fff"
                                xmlns="http://www.w3.org/2000/svg"
                              >
                                <path
                                  d="M18.4915 15.495L17.209 13.65C17.0339 13.3992 16.9397 13.1009 16.939 12.795V7.5C16.939 5.51088 16.1488 3.60322 14.7423 2.1967C13.3357 0.790176 11.4281 0 9.43896 0C7.44984 0 5.54218 0.790176 4.13566 2.1967C2.72914 3.60322 1.93896 5.51088 1.93896 7.5V12.795C1.93824 13.1009 1.84403 13.3992 1.66896 13.65L0.386463 15.495C0.192273 15.7102 0.064576 15.977 0.018815 16.2632C-0.0269461 16.5494 0.0111884 16.8427 0.128607 17.1077C0.246026 17.3727 0.437699 17.598 0.680449 17.7563C0.923199 17.9147 1.20663 17.9993 1.49646 18H5.76396C5.9361 18.8477 6.39601 19.6099 7.06577 20.1573C7.73553 20.7047 8.57394 21.0038 9.43896 21.0038C10.304 21.0038 11.1424 20.7047 11.8122 20.1573C12.4819 19.6099 12.9418 18.8477 13.114 18H17.3815C17.6713 17.9993 17.9547 17.9147 18.1975 17.7563C18.4402 17.598 18.6319 17.3727 18.7493 17.1077C18.8667 16.8427 18.9049 16.5494 18.8591 16.2632C18.8133 15.977 18.6856 15.7102 18.4915 15.495ZM9.43896 19.5C8.97475 19.4987 8.52231 19.3538 8.14366 19.0853C7.76501 18.8168 7.4787 18.4377 7.32396 18H11.554C11.3992 18.4377 11.1129 18.8168 10.7343 19.0853C10.3556 19.3538 9.90317 19.4987 9.43896 19.5ZM1.49646 16.5C1.53036 16.4685 1.56056 16.4333 1.58646 16.395L2.89896 14.505C3.24909 14.0034 3.43751 13.4067 3.43896 12.795V7.5C3.43896 5.9087 4.0711 4.38258 5.19632 3.25736C6.32154 2.13214 7.84766 1.5 9.43896 1.5C11.0303 1.5 12.5564 2.13214 13.6816 3.25736C14.8068 4.38258 15.439 5.9087 15.439 7.5V12.795C15.4404 13.4067 15.6288 14.0034 15.979 14.505L17.2915 16.395C17.3174 16.4333 17.3476 16.4685 17.3815 16.5H1.49646Z"
                                  fill="white"
                                />
                              </svg>
                            </div>
                            <div class="avatar_popup2 mt-20">
                              <div class="show mg-bt-18">
                                <h4>Notifications</h4>
                                <a href="#">Show All</a>
                              </div>
                              <div class="flat-tabs">
                                <ul class="menu-tab">
                                  <li class="active"><span>All</span></li>
                                  <li><span>Unread</span></li>
                                </ul>
                                <div class="content-tab">
                                  <div class="content-inner">
                                    <div class="wrap-box">
                                      <div class="heading">Today</div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>liked your items.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="wrap-box">
                                      <div class="heading">Yesterday</div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="content-inner">
                                    <div class="wrap-box">
                                      <div class="heading">Today</div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                    <div class="wrap-box">
                                      <div class="heading">Yesterday</div>
                                      <div class="sc-box">
                                        <div class="content">
                                          <div class="avatar">
                                            <img src="../assets/images/avatar/avt-6.jpg" alt="" />
                                          </div>
                                          <div class="infor">
                                            <span class="fw-7">Tyler Covington</span>
                                            <span>started following you.</span>
                                            <p>1 hour ago</p>
                                          </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="mode_switcher">
            <a href="#" class="light d-flex align-items-center is_active">
              <img src="../assets/images/icon/sun.png" alt="" />
            </a>
            <a href="#" class="dark d-flex align-items-center is_active">
              <img src="../assets/images/icon/moon.png" alt="" />
            </a>
          </div>
        </header>

        <!-- Header -->

        <!-- title page -->

        <section class="tf-section live-auctions style2 no-pt-mb tl-pb-0">
          <br /><br /><br /><br /><br /><br /><br /><br /><br />

          <div class="themesflat-container">
            <div class="row" style="margin-top: 20px;">
              <div class="col-md-12">
                <div class="heading-live-auctions" style="margin-bottom: -10px">
                  <h2 class="tf-title pb-39" style="margin-left: 55px;"> 
                    <c:if test="${sessionScope.loginId!=null}">
                      <%=session.getAttribute("loginId")%> 님의 스터디룸
                    </c:if>
                  </h2>
                </div>
              </div>

              <div class="col-md-12" style="margin-bottom: 5%; width: 100%; display: flex; margin-left: 35px;">
                <div
                  class="swiper-container seller style2 seller-slider2 button-arow-style"
                  style="width: 900px; float: left"
                >
                  <div class="swiper-button-next btn-slide-next active"></div>
                  <div class="swiper-button-prev btn-slide-prev"></div>
                  <div class="swiper-wrapper">
                    <div class="study-item-img-wrap my">
                      <div class="swiper-slide">
                        <div class="slider-item">
                          <div class="sc-author-box style-2">
                            <div class="author-avatar">
                              <img
                                src="https://img.camstudy.us/room/common/img/title/roomImg_003.jpg"
                                alt=""
                              />
                              <div class="study-item-info-personnel-wrap">
                                <i class="fa-solid fa-user"></i>
                                <span class="study-item-info-personnel present"
                                  >&nbsp&nbsp0&nbsp/&nbsp</span
                                >
                                <span class="study-item-info-personnel maximum">&nbsp4 </span>
                              </div>
                              <div class="room-more-view-btn-area">
                                <button class="room-more-view-btn" tabindex="0" style="padding: 0%">
                                  <img
                                    src="../assets/images/icon/menuOpt.png"
                                    alt=""
                                    style="width: 35px; margin-left: 3px"
                                  />
                                </button>
                              </div>
                              <div id="room-more-list" class="room-more-item-list-layer" style="">
                                <ul class="room-more-item-list">
                                  <li class="room-more-item" style="cursor: pointer">삭제하기</li>
                                </ul>
                              </div>
                            </div>
                            <div class="study-item-tx-wrap my" style="text-align: center">
                              <em class="study-item-tx title">취준스터디</em>
                              <div class="study-item-tx-hashtag-wrap">
                                <p class="study-item-tx hashtag">#공부</p>
                                <p class="study-item-tx hashtag">#스터디</p>
                                <p class="study-item-tx hashtag">#코딩</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="study-item-img-wrap my">
                      <div class="swiper-slide">
                        <div class="slider-item">
                          <div class="sc-author-box style-2">
                            <div class="author-avatar">
                              <img
                                src="https://img.camstudy.us/room/common/img/title/roomImg_003.jpg"
                                alt=""
                              />
                              <div class="study-item-info-personnel-wrap">
                                <i class="fa-solid fa-user"></i>
                                <span class="study-item-info-personnel present"
                                  >&nbsp&nbsp0&nbsp/&nbsp</span
                                >
                                <span class="study-item-info-personnel maximum">&nbsp4 </span>
                              </div>
                              <div class="room-more-view-btn-area">
                                <button class="room-more-view-btn" tabindex="0" style="padding: 0%">
                                  <img
                                    src="../assets/images/icon/menuOpt.png"
                                    alt=""
                                    style="width: 35px; margin-left: 3px"
                                  />
                                </button>
                              </div>
                              <div id="room-more-list" class="room-more-item-list-layer" style="">
                                <ul class="room-more-item-list">
                                  <li class="room-more-item" style="cursor: pointer">삭제하기</li>
                                </ul>
                              </div>
                            </div>
                            <div class="study-item-tx-wrap my">
                              <em class="study-item-tx title">코딩공부</em>
                              <div class="study-item-tx-hashtag-wrap">
                                <p class="study-item-tx hashtag">#공부</p>
                                <p class="study-item-tx hashtag">#스터디</p>
                                <p class="study-item-tx hashtag">#코딩</p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="study-item-img-wrap my">
                      <div class="study-item-list-cover">
                        <p class="study-item-tx cover-title">
                          스터디 만들기에서 내 스터디를 만들어 보세요.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>

                <div
                  class="swiper-container seller style2 seller-slider2 button-arow-style"
                  style="max-width: 40%"
                >
                <a href="./createroom">
                  <div data-v-2bb159fc="" class="empty_my_study">
                    <button
                      id="maderoom"
                      style="background-color: unset; border: unset; padding: unset"
                    >
                      <img src="../assets/images/icon/plus.png" alt="" width="40" height="40" />
                    </button>
                    <p style="margin-top: 20px">나만의&nbsp;스터디를&nbsp;만들어&nbsp;보세요</p>
                  </div>
                </a>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- 랭킹목록 (슬라이더) -->
        <section class="tf-section category">
          <div class="themesflat-container">
            <div class="row" >
              <div class="col-md-12">
                <div class="heading-live-auctions" style="margin-top: 26px;">
                  <h2 class="tf-title pb-39">스터디룸 랭킹</h2>
                </div>
              </div>
              <div class="col-md-12">
                <div class="swiper-container carousel11">
                  <div class="swiper-wrapper">
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category1.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Digital Art</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category2.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Style</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category3.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Music</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category4.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Domain Name</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category5.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Sports</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category6.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Utilities</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category1.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Digital Art</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category2.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Style</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category3.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Music</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category4.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Domain Name</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category5.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Sports</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category6.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Utilities</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                  </div>
                </div>
                <div class="swiper-button-next btn-slide-next active"></div>
                <div class="swiper-button-prev btn-slide-prev"></div>
              </div>
            </div>
          </div>
        </section>

        <section class="tf-section live-auctions style3 pad-b-54 no-pt-mb mobie-pb-70">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12" style="margin-top: 30px">
                <div class="heading-live-auctions mg-bt-21" style="margin-bottom: -20px">
                  <h2 class="tf-title pad-l-7">선호 스터디룸</h2>
                </div>
              </div>
              <div class="col-md-12">
                <div class="tf-soft">
                  <div class="soft-right">
                    <div class="dropdown">
                      <button
                        class="btn btn-secondary dropdown-toggle"
                        type="button"
                        id="dropdownMenuButton4"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                        style="margin-left: 950%"
                      >
                        <svg
                          width="24"
                          height="24"
                          viewBox="0 0 24 24"
                          fill="none"
                          xmlns="http://www.w3.org/2000/svg"
                        >
                          <path
                            d="M3 7H21"
                            stroke="white"
                            stroke-width="1.5"
                            stroke-linecap="round"
                          />
                          <path
                            d="M6 12H18"
                            stroke="white"
                            stroke-width="1.5"
                            stroke-linecap="round"
                          />
                          <path
                            d="M10 17H14"
                            stroke="white"
                            stroke-width="1.5"
                            stroke-linecap="round"
                          />
                        </svg>
                        <span>태그설정</span>
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <h6>분야</h6>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>어학</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer active" href="#">
                            <span>자격증</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>취미</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>자기계발</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>독서</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>코딩</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>임용</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>공무원</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>학교</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-3.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-4.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-7.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item8.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-9.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/image-box-11.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item8.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-3.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-4.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-2.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-7.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item8.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-md-12 wrap-inner load-more text-center mg-t-4">
                <a href="#" id="loadmore" class="sc-button loadmore fl-button pri-3"
                  ><span>더보기</span></a
                >
              </div>
            </div>
          </div>
        </section>

        <!-- 전체목록 ( 페이징 )-->
        <section class="tf-section live-auctions top-picks style3 home7 mobie-pb-70">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="heading-live-auctions mg-bt-24">
                  <h2 class="tf-title">전체 스터디룸</h2>
                  <p class="roomlist">총 개 스터디 </p>
                </div>
              </div>

              <div class="col-md-12">
                <div class="top-pick-box">
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>

                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
              <div class="col-md-12 wrap-inner load-more text-center mg-t17">
                <a href="#" class="sc-button loadmore fl-button pri-3"><span>더보기</span></a>
              </div>
            </div>
          </div>
        </section>

        <!-- Footer -->
        <footer id="footer" class="clearfix">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-lg-3 col-md-12 col-12">
                <div class="widget widget-logo">
                  <div class="logo-footer" id="logo-footer" style="margin-top: -40px">
                    <img
                      id="logo_header"
                      src="../assets/images/logo/logo01.png"
                      alt="nft-gaming"
                      width="220"
                      height="120"
                    />
                    <p class="sub-widget-logo">
                      (주)HowStudy<br />
                      서울특별시 강남구 선릉로 112길 34
                    </p>
                  </div>
                </div>
              </div>
              <div class="col-lg-2 col-md-4 col-sm-5 col-5">
                <div class="widget widget-menu style-1">
                  <h5 class="title-widget">캠 스터디</h5>
                  <ul>
                    <li><a href="author01.html">이용가이드</a></li>
                  </ul>
                </div>
                <div class="widget-social style-1 mg-t32">
                  <ul>
                    <li>
                      <a href="#"><i class="fab fa-facebook"></i></a>
                    </li>

                    <li>
                      <a href="#"><i class="fab fa-youtube"></i></a>
                    </li>

                    <li class="mgr-none">
                      <a href="#"><i class="fa-brands fa-instagram"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-2 col-md-4 col-sm-7 col-7">
                <div class="widget widget-menu style-2">
                  <h5 class="title-widget">커뮤니티</h5>
                  <ul>
                    <li><a href="help-center.html">인스타그램</a></li>
                    <li><a href="auctions.html">페이스북</a></li>
                    <li><a href="item-details.html">유튜브</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-2 col-md-4 col-sm-5 col-5">
                <div class="widget widget-menu fl-st-3">
                  <h5 class="title-widget">오프라인</h5>
                  <ul>
                    <li><a href="explore-1.html">안내</a></li>
                  </ul>
                </div>
              </div>
              <div class="col-lg-3 col-md-6 col-sm-7 col-12">
                <div class="widget widget-subcribe">
                  <h5 class="title-widget">언어</h5>
                  <div class="form-subcribe">
                    <ul class="footer-menu-1depth-group langSelectArea">
                      <li class="footer-menu-2depth">
                        <select class="langSelect">
                          <option value="ko">Korea</option>
                          <option value="en">English</option>
                        </select>
                      </li>
                    </ul>
                  </div>
                  <div class="widget-social style-1 mg-t32">
                    <ul>
                      <li>
                        <a href="#"><i class="fab fa-facebook"></i></a>
                      </li>

                      <li>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                      </li>

                      <li class="mgr-none">
                        <a href="#"><i class="fa-brands fa-instagram"></i></a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </footer>
        <!-- /#footer -->
        <!-- Bottom -->
      </div>
      <!-- /#page -->
    </div>
    <!-- /#wrapper -->
      <!-- /#page -->

      <!-- Modal Popup Bid -->
      <div
        class="modal fade popup"
        id="popup_bid_success"
        tabindex="-1"
        role="dialog"
        aria-hidden="true"
      >
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body space-y-20 pd-40">
              <h3 class="text-center">Your Bidding Successfuly Added</h3>
              <p class="text-center">
                your bid <span class="price color-popup">(4ETH) </span> has been listing to our
                database
              </p>
              <a href class="btn btn-primary"> Watch the listings</a>
            </div>
          </div>
        </div>
      </div>
      <div class="modal fade popup" id="popup_bid" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body space-y-20 pd-40">
              <h3>Place a Bid</h3>
              <p class="text-center">
                You must bid at least <span class="price color-popup">4.89 ETH</span>
              </p>
              <input type="text" class="form-control" placeholder="00.00 ETH" />
              <p>Enter quantity. <span class="color-popup">5 available</span></p>
              <input type="text" class="form-control quantity" value="1" />
              <div class="hr"></div>
              <div class="d-flex justify-content-between">
                <p>You must bid at least:</p>
                <p class="text-right price color-popup">4.89 ETH</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>Service free:</p>
                <p class="text-right price color-popup">0,89 ETH</p>
              </div>
              <div class="d-flex justify-content-between">
                <p>Total bid amount:</p>
                <p class="text-right price color-popup">4 ETH</p>
              </div>
              <a
                href="#"
                class="btn btn-primary"
                data-toggle="modal"
                data-target="#popup_bid_success"
                data-dismiss="modal"
                aria-label="Close"
              >
                Place a bid</a
              >
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>

    <!--버튼 클릭 시 삭제하기 탭 보이기-->
    <script type="text/javascript">
      $(".room-more-view-btn").click(function () {
        $("#room-more-list").toggle();
      });
    </script>

    <script type="text/javascript">
      $("#mypage1").click(function () {
        $(".my-profile-layer").toggle();
      });

      $("#mypage2").click(function () {
        $(".my-profile-layer").toggle();
      });
    </script>


    <!-- 구글 자동 번역 API-->
<script src="https://translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>

<script type="text/javascript">
  /* 구글 번역 초기화 */
  function googleTranslateElementInit() {new google.translate.TranslateElement({pageLanguage: 'ko',autoDisplay: true}, 'google_translate_element');}
</script>
<script type="text/javascript">
  /* 새 UI 선택 클릭 이벤트가 발생하면
  감춤 처리한 구글 번역 콤보리스트에
  선택한 언어를 적용해 변경 이벤트를 발생시키는 코드  */
  document.querySelector('.translation-links').addEventListener('click',function(event) {
      let el = event.target;
      if(el != null){
          while(el.nodeName == 'FONT' || el.nodeName == 'SPAN'){el = el.parentElement;}//data-lang 속성이 있는 태그 찾기
          const tolang = el.dataset.lang; // 변경할 언어 코드 얻기
          const gtcombo = document.querySelector('.goog-te-combo');
          if (gtcombo == null) {
              alert("Error: Could not find Google translate Combolist.");
              return false;
          }
          gtcombo.value = tolang; // 변경할 언어 적용
          gtcombo.dispatchEvent(new Event('change')); // 변경 이벤트 트리거
      }
      return false;
  });
</script>


    <!-- Javascript -->
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/jquery.easing.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/plugin.js"></script>
    <script src="../assets/js/count-down.js"></script>
    <script src="../assets/js/shortcodes.js"></script>
    <script src="../assets/js/swiper-bundle.min.js"></script>
    <script src="../assets/js/swiper.js"></script>
    <script src="../assets/js/web3.min.js"></script>
    <script src="../assets/js/moralis.js"></script>
    <script src="../assets/js/nft.js"></script>
  </body>
</html>
