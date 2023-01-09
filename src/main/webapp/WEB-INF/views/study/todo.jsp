<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!--<![endif]-->
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>

<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Axies | NFT Marketplace HTML Template</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/todo.css">
    <style>
        .btn{  <!-- 모든 버튼에대한 css설정 -->
          text-decoration: none;
          font-size:2rem;
          color:white;
          padding:10px 20px 10px 20px;
          margin:20px;
          display:inline-block;
          border-radius: 10px;
          transition:all 0.1s;
          text-shadow: 0px -2px rgba(0, 0, 0, 0.44);
          font-family: 'Lobster', cursive; <!-- google font -->
        }
        .btn:active{
          transform: translateY(3px);
        }
        .btn.blue{
          background-color: #1f75d9;
          border-bottom:5px solid #165195;
        }
        .btn.blue:active{
          border-bottom:2px solid #165195;
        }
        .btn.red{
          background-color: #ff521e;
          border-bottom:5px solid #c1370e;
        }
        .btn.red:active{
          border-bottom:2px solid #c1370e;
        }
      </style>


    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">

</head>


    <body class="body header-fixed is_dark connect-wal">



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
                                            <a href="../index" rel="home" class="main-logo">
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
                                    <div class="mobile-button"><span></span></div><!-- /.mobile-button -->
                                    <nav id="main-nav" class="main-nav">
                                        <ul id="menu-primary-menu" class="menu">
                                            <li class="menu-item current-menu-item ">
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
                                        </ul>
                                    </nav><!-- /#main-nav -->    
                                    <div class="flat-search-btn flex">
                                        <div class="header-search flat-show-search" id="s1">
                                            <a href="#" class="show-search header-search-trigger">
                                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                    <mask id="mask0_334_638" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="1" y="1" width="18" height="17">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M1.66699 1.66666H17.6862V17.3322H1.66699V1.66666Z" fill="white" stroke="white"/>
                                                    </mask>
                                                    <g mask="url(#mask0_334_638)">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M9.67711 2.87312C5.9406 2.87312 2.90072 5.84505 2.90072 9.49903C2.90072 13.153 5.9406 16.1257 9.67711 16.1257C13.4128 16.1257 16.4527 13.153 16.4527 9.49903C16.4527 5.84505 13.4128 2.87312 9.67711 2.87312ZM9.67709 17.3322C5.26039 17.3322 1.66699 13.8182 1.66699 9.49902C1.66699 5.17988 5.26039 1.66666 9.67709 1.66666C14.0938 1.66666 17.6864 5.17988 17.6864 9.49902C17.6864 13.8182 14.0938 17.3322 9.67709 17.3322Z" fill="white"/>
                                                    <path d="M9.67711 2.37312C5.67512 2.37312 2.40072 5.55836 2.40072 9.49903H3.40072C3.40072 6.13174 6.20607 3.37312 9.67711 3.37312V2.37312ZM2.40072 9.49903C2.40072 13.4396 5.67504 16.6257 9.67711 16.6257V15.6257C6.20615 15.6257 3.40072 12.8664 3.40072 9.49903H2.40072ZM9.67711 16.6257C13.6784 16.6257 16.9527 13.4396 16.9527 9.49903H15.9527C15.9527 12.8664 13.1472 15.6257 9.67711 15.6257V16.6257ZM16.9527 9.49903C16.9527 5.5584 13.6783 2.37312 9.67711 2.37312V3.37312C13.1473 3.37312 15.9527 6.1317 15.9527 9.49903H16.9527ZM9.67709 16.8322C5.52595 16.8322 2.16699 13.5316 2.16699 9.49902H1.16699C1.16699 14.1048 4.99484 17.8322 9.67709 17.8322V16.8322ZM2.16699 9.49902C2.16699 5.46656 5.52588 2.16666 9.67709 2.16666V1.16666C4.9949 1.16666 1.16699 4.8932 1.16699 9.49902H2.16699ZM9.67709 2.16666C13.8282 2.16666 17.1864 5.46649 17.1864 9.49902H18.1864C18.1864 4.89327 14.3593 1.16666 9.67709 1.16666V2.16666ZM17.1864 9.49902C17.1864 13.5316 13.8282 16.8322 9.67709 16.8322V17.8322C14.3594 17.8322 18.1864 14.1047 18.1864 9.49902H17.1864Z" fill="white"/>
                                                    </g>
                                                    <mask id="mask1_334_638" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="13" y="13" width="6" height="6">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M14.2012 14.2999H18.3333V18.3333H14.2012V14.2999Z" fill="white" stroke="white"/>
                                                    </mask>
                                                    <g mask="url(#mask1_334_638)">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M17.7166 18.3333C17.5596 18.3333 17.4016 18.2746 17.2807 18.1572L14.3823 15.3308C14.1413 15.0952 14.1405 14.7131 14.3815 14.4774C14.6217 14.2402 15.0123 14.2418 15.2541 14.4758L18.1526 17.303C18.3935 17.5387 18.3944 17.9199 18.1534 18.1556C18.0333 18.2746 17.8746 18.3333 17.7166 18.3333Z" fill="white"/>
                                                    <path d="M17.7166 18.3333C17.5595 18.3333 17.4016 18.2746 17.2807 18.1572L14.3823 15.3308C14.1413 15.0952 14.1405 14.7131 14.3815 14.4774C14.6217 14.2402 15.0123 14.2418 15.2541 14.4758L18.1526 17.303C18.3935 17.5387 18.3944 17.9199 18.1534 18.1556C18.0333 18.2746 17.8746 18.3333 17.7166 18.3333" stroke="white"/>
                                                    </g>
                                                    </svg>
                                            </a>
                                            <div class="top-search">
                                                <form action="#" method="get" role="search" class="search-form">
                                                    <input type="search" id="s" class="search-field" placeholder="Search..." value="" name="s" title="Search for" required="">
                                                    <button class="search search-submit" type="submit" title="Search">
                                                        <i class="icon-fl-search-filled"></i>
                                                    </button>
                                                </form>
                                            </div>
                                        </div>
                                        

                                        <div class="admin_active" id="header_admin">
                                            <div class="header_avatar">
                                                <div class="popup-notification">
                                                    <div class="notification">
                                                        <span class="number">3</span>
                                                        <svg width="19" height="22" viewBox="0 0 19 22" fill="#fff" xmlns="http://www.w3.org/2000/svg">
                                                            <path d="M18.4915 15.495L17.209 13.65C17.0339 13.3992 16.9397 13.1009 16.939 12.795V7.5C16.939 5.51088 16.1488 3.60322 14.7423 2.1967C13.3357 0.790176 11.4281 0 9.43896 0C7.44984 0 5.54218 0.790176 4.13566 2.1967C2.72914 3.60322 1.93896 5.51088 1.93896 7.5V12.795C1.93824 13.1009 1.84403 13.3992 1.66896 13.65L0.386463 15.495C0.192273 15.7102 0.064576 15.977 0.018815 16.2632C-0.0269461 16.5494 0.0111884 16.8427 0.128607 17.1077C0.246026 17.3727 0.437699 17.598 0.680449 17.7563C0.923199 17.9147 1.20663 17.9993 1.49646 18H5.76396C5.9361 18.8477 6.39601 19.6099 7.06577 20.1573C7.73553 20.7047 8.57394 21.0038 9.43896 21.0038C10.304 21.0038 11.1424 20.7047 11.8122 20.1573C12.4819 19.6099 12.9418 18.8477 13.114 18H17.3815C17.6713 17.9993 17.9547 17.9147 18.1975 17.7563C18.4402 17.598 18.6319 17.3727 18.7493 17.1077C18.8667 16.8427 18.9049 16.5494 18.8591 16.2632C18.8133 15.977 18.6856 15.7102 18.4915 15.495ZM9.43896 19.5C8.97475 19.4987 8.52231 19.3538 8.14366 19.0853C7.76501 18.8168 7.4787 18.4377 7.32396 18H11.554C11.3992 18.4377 11.1129 18.8168 10.7343 19.0853C10.3556 19.3538 9.90317 19.4987 9.43896 19.5ZM1.49646 16.5C1.53036 16.4685 1.56056 16.4333 1.58646 16.395L2.89896 14.505C3.24909 14.0034 3.43751 13.4067 3.43896 12.795V7.5C3.43896 5.9087 4.0711 4.38258 5.19632 3.25736C6.32154 2.13214 7.84766 1.5 9.43896 1.5C11.0303 1.5 12.5564 2.13214 13.6816 3.25736C14.8068 4.38258 15.439 5.9087 15.439 7.5V12.795C15.4404 13.4067 15.6288 14.0034 15.979 14.505L17.2915 16.395C17.3174 16.4333 17.3476 16.4685 17.3815 16.5H1.49646Z" fill="white"/>
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
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>liked your items.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="wrap-box">
                                                                        <div class="heading">Yesterday</div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
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
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="wrap-box">
                                                                        <div class="heading">Yesterday</div>
                                                                        <div class="sc-box">
                                                                            <div class="content">
                                                                                <div class="avatar">
                                                                                    <img src="assets/images/avatar/avt-6.jpg" alt="">                                                                           
                                                                                </div>
                                                                                <div class="infor">
                                                                                        <span class="fw-7">Tyler Covington</span>      
                                                                                        <span>started following you.</span> 
                                                                                        <p>1 hour ago
                                                                                        </p>                                                                       
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
                    <h6>Dark mode <strong>Available</strong></h6>
                    <a href="#" class="light d-flex align-items-center">
                        <img src="../assets/images/icon/sun.png" alt="">
                    </a>
                    <a href="#" class="dark d-flex align-items-center is_active">
                        <img id="moon_dark" src="../assets/images/icon/moon-2.png" alt="">
                    </a>
                </div>
            </header>

            <!-- Header -->      
            
            <section class="tf-item tf-section">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-box-10">

                        </div>
                        
                        <div class="col-box-83">
                            <div class="flat-tabs items">
                                <ul class="menu-tab">
                                    <li><a href="record"><span>RECORD</span></a></li>
                                    <li><a href="ranking"><span>RANKING</span></a></li>
                                    <li><a href="todo"><span>TO-DO</span></a></li>
                                    <li><a href="note"><span>NOTE</span></a></li>
                                </ul>
                            </div><br/><br/><br/><br/><br/><br/><br/>
                            
                            <!-- 조ㅏ측-->
                            <div id="grid" style="margin-top: 100px; margin-left: 250px; margin-right: 250px;">
                                <form action="insertTodo" id="todoForm" method="post">
                                  <div id="myDIV" class="header">
                                    <h2>My To Do List</h2>
                                    <input id="tText" type="text" name="todos" style="width: 200;" placeholder="Title...">
                                    <input type="submit" id="addBtn" class="addBtn">
                                  </div>
                                
                                  
                                  <ul id="myUL">
                                    <c:forEach items="${selectTodo}" var="temp">
                                    
                                    <li class="a" value="${temp.hSeq}"><span>${temp.todos}</span><span class='date'>${temp.todoTime}</span></li>
                                    </c:forEach>
                                  </ul>
                            
                                  <div class="button_area">

                                    <div>
                                      
                                      <button class="btn red" id="deleteTodo">삭제</button>
                                      <button class="btn red" id="updateTodo" >완료</button>
                                    
                                    </div>

                                  </div>
                               
                                </form>
                                
                                <form action="selectCompletion" id="completion" method="post" style="margin-left: 20px;">
                                <!-- 오른쪽 박스 -->
                                <div>
                                  <div id="myDIV2" class="header2">
                                    <h2>Complete To Do List</h2>
                                  </div>
                            
                                  <ul id="myUL2">
                                    <c:forEach items="${completion}" var="com">
                                    
                                    <li class="a checked" value="${com.hSeq}"><span>${com.todos}</span><span class='date'>${com.todoTime}</span></li>
                                    </c:forEach>
                                  </ul>
                                  </ul>
                                </div>
                                </form>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </section>

            <!-- Footer 넣음-->
            <jsp:include page="../include/footer.jsp"></jsp:include>
        </div>
        <!-- /#page -->

        <!-- Modal Popup Bid -->
        <div class="modal fade popup" id="popup_bid_success" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-body space-y-20 pd-40">
                        <h3 class="text-center">Your Bidding
                            Successfuly Added</h3>
                        <p class="text-center">your bid <span class="price color-popup">(4ETH) </span> has been listing to our database</p>
                        <a href="#" class="btn btn-primary"> Watch the listings</a>
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
                        <p class="text-center">You must bid at least <span class="price color-popup">4.89 ETH</span>
                        </p>
                        <input type="text" class="form-control"
                            placeholder="00.00 ETH">
                        <p>Enter quantity. <span class="color-popup">5 available</span>
                        </p>
                        <input type="text" class="form-control quantity" value="1">
                        <div class="hr"></div>
                        <div class="d-flex justify-content-between">
                            <p> You must bid at least:</p>
                            <p class="text-right price color-popup"> 4.89 ETH </p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p> Service free:</p>
                            <p class="text-right price color-popup"> 0,89 ETH </p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p> Total bid amount:</p>
                            <p class="text-right price color-popup"> 4 ETH </p>
                        </div>
                        <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#popup_bid_success" data-dismiss="modal" aria-label="Close"> Place a bid</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>

    <!-- Javascript -->
    

</body>

</html>