<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
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

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">

</head>

<body class="body header-fixed is_dark">

    <!-- preloade -->
    <div class="preload preload-container">
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
            
            




    <!-- /#wrapper -->

    <a id="scroll-top"></a>

    <!-- Javascript -->
    <script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/jquery.easing.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/plugin.js"></script>
    <script src="../assets/js/shortcodes.js"></script>
    <script src="../assets/js/main.js"></script>
    <script src="../assets/js/count-down.js"></script>
    <script src="../assets/js/swiper-bundle.min.js"></script>
    <script src="../assets/js/price-ranger.js"></script>
    <script src="../assets/js/web3.min.js"></script>
	<script src="../assets/js/moralis.js"></script>
	<script src="../assets/js/nft.js"></script>

</body>

</html>