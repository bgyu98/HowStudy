<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml"
xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
    <!--<![endif]-->
    <!-- 한글 깨짐 방지-->
    <%@ page language="java" contentType="text/html; charset=UTF-8"%>
        <!DOCTYPE html>
        <!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml"
        xml:lang="en-US" lang="en-US"> <![endif]-->
        <!--[if (gte IE 9)|!(IE)]><!-->
        <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
            <!--<![endif]-->

            <!-- JSTL 사용-->
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

                <head>
                    <!-- Basic Page Needs -->
                    <meta charset="utf-8">
                    <!--[if IE]><meta http-equiv='X-UA-Compatible'
                    content='IE=edge,chrome=1'><![endif]-->
                    <title>Axies | NFT Marketplace HTML Template</title>

                    <meta name="author" content="themesflat.com">

                    <!-- Mobile Specific Metas -->
                    <meta
                        name="viewport"
                        content="width=device-width, initial-scale=1, maximum-scale=1">

                    <!-- Theme Style -->
                    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">

                    <!-- myStudy Style-->
                    <link rel="stylesheet" type="text/css" href="../assets/css/mystudy.css">

                    <!-- Favicon and Touch Icons -->
                    <link rel="shortcut icon" href="assets/icon/Favicon.png">
                    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">

                    <!-- 타이머 -->
                    <link
                        href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
                        rel="stylesheet"
                        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
                        crossorigin="anonymous">
                    <script type="text/javascript" src="record.js"></script>

                    <!-- chart.js -->
                    <script
                        src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script>
                </head>
                <style>
                    * {
                        margin: 0;
                        padding: 0;
                    }

                    .box {
                        width: 200px;
                        height: 200px;
                    }
                    .timerBox {
                        width: 200px;
                        outline: 2px solid black;
                    }
                    .timerBox .time {
                        font-size: 30pt;
                        color: #4C4C4C;
                        text-align: center;
                        font-family: sans-serif;
                    }
                    .btnBox {
                        margin: 20px auto;
                        text-align: center;
                    }
                    .btnBox .fa {
                        margin: 0 5px;
                        font-size: 30pt;
                        color: #FAED7D;
                        cursor: pointer;
                    }

                    input[type="date"]:before {
                        content: attr(data-placeholder);
                        width: 100%;
                    }

                    input[type='date']:focus::before,
                    input[type='date']:valid::before {
                        display: none;
                    }
                    
                </style>

                <body class="body header-fixed is_dark connect-wal">
                    <div id="wrapper">
                        <div id="page" class="clearfix">
                            <!-- header 넣음 -->
                            <jsp:include page="../include/header.jsp"></jsp:include>
                            <!-- Header -->
                            <!-- body section-->
                            <section class="tf-item tf-section">
                                <div class="themesflat-container">
                                    <div class="row">

                                        <div class="col-box-12">
                                            <div class="flat-tabs items">
                                                <ul class="menu-tab">
                                                    <li>
                                                        <a href="../study/record?mId=${sessionScope.loginId}">
                                                            <span>RECORD</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="../study/ranking">
                                                            <span>RANKING</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="../study/todo?mId=${sessionScope.loginId}">
                                                            <span>TO-DO</span></a>
                                                    </li>
                                                    <li>
                                                        <a href="../study/note?mId=${sessionScope.loginId}">
                                                            <span>NOTE</span></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="content-tab">
                                                <div class="content-inner">
                                                    <div class="content-item">
                                                        <div class="sc-box-icon no-box-shadown mgbt-0 none"></div>
                                                        <!-- 여기임 -->
                                                        <!-- main section-->
                                                        <section class="tf-section live-auctions style4 home4 live-auctions-style7">
                                                            <!-- 닉네임 출력 -->
                                                            <div class="themesflat-container">
                                                                <div class="row">
                                                                    <div class="col-box-12">
                                                                        <div class="heading-live-auctions">
                                                                            <c:if test="${sessionScope.loginId!=null}">
                                                                                <h2 class="tf-title pb-40 text-left" style="margin-top: 3%;">
                                                                                    <%=session.getAttribute("loginId")%>
                                                                                    님의 스터디룸
                                                                                </h2>
                                                                            </c:if>
                                                                        </div>
                                                                    </div>

                                                                    <!-- 오늘 공부한 시간 출력 -->
                                                                    <div class="fl-collection fl-item3 col-box-4">
                                                                        <div class="sc-card-collection style-2 sc-card-style7">
                                                                            <div
                                                                                class="card-header"
                                                                                style="color : var(--primary-color); border-radius: 1rem; width:50%;">
                                                                                <h3 style="color:#ff8787">오늘 공부 시간</h3>
                                                                            </div>
                                                                            <div class="card-bottom">
                                                                                <div class="author" style="margin: 0 auto;">
                                                                                    <div class="content">
                                                                                        <h4>
                                                                                            <span id="todaystudytimes">${time.todayStudyTime}</span></h4>
                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- 일 평균 공부한 시간 출력 -->
                                                                    <div class="fl-collection fl-item3 col-box-4">
                                                                        <div class="sc-card-collection style-2 sc-card-style7">
                                                                            <div
                                                                                class="card-header"
                                                                                style="color : var(--primary-color); border-radius: 1rem; width:50%">
                                                                                <h3 style="color:#ff8787">일 평균 공부 시간</h3>
                                                                            </div>
                                                                            <div class="card-bottom">
                                                                                <div class="author" style="margin: 0 auto;">
                                                                                    <div class="content ">
                                                                                        <h4>
                                                                                            <span id="todayaveragetimes">${time.todayAvgTime}</span></h4>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <!-- 전체 공부한 시간 출력 -->
                                                                    <div class="fl-collection fl-item3 col-box-4">
                                                                        <div class="sc-card-collection style-2 sc-card-style7">
                                                                            <div
                                                                                class="card-header"
                                                                                style="color : var(--primary-color); border-radius: 1rem; width:50%;">
                                                                                <h3 style="color:#ff8787">전체 공부 시간</h3>
                                                                            </div>
                                                                            <div class="card-bottom">
                                                                                <div class="author" style="margin: 0 auto;">
                                                                                    <div class="content ">
                                                                                        <h4>
                                                                                            <span id="totalstudytime">${time.totalStudyTime}</span></h4>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>

                                                                    <!-- 타이머 -->
<!-- 
                                                                    <div>
                                                                        <div id='box' class="box">
                                                                            <div id='timerBox' class="timerBox">
                                                                                <div id="time" class="time" style="color: white;">00:00:00</div>
                                                                            </div>
                                                                            <div class="btnBox">
                                                                                <i id="startbtn" class="fa fa-play" aria-hidden="true"></i>
                                                                                <i id="pausebtn" class="fa fa-pause" aria-hidden="true"></i>
                                                                                <i id="stopbtn" class="fa fa-stop" aria-hidden="true"></i>
                                                                            </div>
                                                                        </div>
                                                                        <input type="hidden" class="sNum" value="29">
                                                                       
                                                                        <div>
                                                                            <button class="checkbutton">체크버튼</button>
                                                                        </div>
                                                                    </div> -->

                                                                </div>
                                                                <!-- 누적 공부시간 section -->
                                                                <section class="col-md-12 col-lg-6" style="float: left; padding-top: 10%; ">
                                                                    <!--//col-->
                                                                    <div class="col-md-12 col-lg-6">
                                                                        <div class="app-card app-card-chart h-100 shadow-sm">
                                                                            <div class="app-card-header p-3">
                                                                                <div class="row justify-content-between align-items-center">
                                                                                    <div class="col-auto">
                                                                                        <h4 class="app-card-title">
                                                                                            누적 공부시간 ( 날짜를 체크해주세요 )</h4>
                                                                                    </div>
                                                                                    <!--//col-->
                                                                                </div>
                                                                                <!--//row-->
                                                                            </div>
                                                                            <!--//app-card-header-->
                                                                            <div class="app-card-body p-3 p-lg-4">
                                                                                <div class="mb-3 d-flex">

                                                                                    <input
                                                                                        type="date"
                                                                                        class="regdate1"
                                                                                        id="regdate1"
                                                                                        name="regdate1"
                                                                                        onchange="checkDate1(event)"
                                                                                       >
                                                                                    <span>~</span>
                                                                                    <input
                                                                                        type="date"
                                                                                        class="regdate2"
                                                                                        id="regdate2"
                                                                                        name="regdate2"
                                                                                        onchange="checkDate2(event)"
                                                                                        >
                                                                                </div>
                                                                                <div class="chart-container">
                                                                                    <canvas
                                                                                        id="canvas-daychart"
                                                                                        style="border-radius: 5px; height: 300px; width: 150%; "></canvas>
                                                                                </div>
                                                                            </div>
                                                                            <!--//app-card-body-->
                                                                        </div>
                                                                        <!--//app-card-->
                                                                    </div>
                                                                    <!--//col-->
                                                                </section>
                                                                <!-- 누적 공부시간 section finish-->

                                                                <!-- 태그별 공부시간 section -->
                                                                <section class="col-md-12 col-lg-6" style="float: right; padding-top: 10%; ">
                                                                    <!--//col-->
                                                                    <div class="col-md-12 col-lg-6">
                                                                        <div class="app-card app-card-chart h-100 shadow-sm">
                                                                            <div class="app-card-header p-3">
                                                                                <div class="col-auto">
                                                                                    <h4 class="app-card-title">태그별 공부시간</h4>
                                                                                </div>
                                                                                <!--//row-->
                                                                            </div>
                                                                            <!--//app-card-header-->
                                                                            <div class="app-card-body p-3 p-lg-4">

                                                                                <div class="chart-container">
                                                                                    <canvas
                                                                                        id="canvas-tagchart"
                                                                                        style="border-radius: 5px; height: 300px; width: 100%; "></canvas>
                                                                                </div>
                                                                            </div>
                                                                            <!--//app-card-body-->
                                                                        </div>
                                                                        <!--//app-card-->
                                                                    </div>
                                                                    <!--//col-->
                                                                </section>
                                                                <!-- 태그별 공부시간 section finish-->
                                                            </div>
                                                        </section>
                                                        <!-- section finish-->

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </section>
                            <!-- body section finish-->

                            <!-- Footer 넣음-->
                            <jsp:include page="../include/footer.jsp"></jsp:include>
                        </div>

                    </div>
                    <!-- Footer -->

                    <!-- /#page -->

                    <!-- Modal Popup Bid -->
                    <div
                        class="modal fade popup"
                        id="popup_bid_success"
                        tabindex="-1"
                        role="dialog"
                        aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <div class="modal-body space-y-20 pd-40">
                                    <h3 class="text-center">Your Bidding Successfuly Added</h3>
                                    <p class="text-center">your bid
                                        <span class="price color-popup">(4ETH)
                                        </span>
                                        has been listing to our database</p>
                                    <a href="href" class="btn btn-primary">
                                        Watch the listings</a>
                                </div>
                            </div>
                        </div>

                        <div
                            class="modal fade popup"
                            id="popup_bid"
                            tabindex="-1"
                            role="dialog"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                                <div class="modal-content">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                    <div class="modal-body space-y-20 pd-40">
                                        <h3>Place a Bid</h3>
                                        <p class="text-center">You must bid at least
                                            <span class="price color-popup">4.89 ETH</span>
                                        </p>
                                        <input type="text" class="form-control" placeholder="00.00 ETH">
                                        <p>Enter quantity.
                                            <span class="color-popup">5 available</span>
                                        </p>
                                        <input type="text" class="form-control quantity" value="1">
                                        <div class="hr"></div>
                                        <div class="d-flex justify-content-between">
                                            <p>
                                                You must bid at least:</p>
                                            <p class="text-right price color-popup">
                                                4.89 ETH
                                            </p>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <p>
                                                Service free:</p>
                                            <p class="text-right price color-popup">
                                                0,89 ETH
                                            </p>
                                        </div>
                                        <div class="d-flex justify-content-between">
                                            <p>
                                                Total bid amount:</p>
                                            <p class="text-right price color-popup">
                                                4 ETH
                                            </p>
                                        </div>
                                        <a
                                            href="#"
                                            class="btn btn-primary"
                                            data-toggle="modal"
                                            data-target="#popup_bid_success"
                                            data-dismiss="modal"
                                            aria-label="Close">
                                            Place a bid</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- /#wrapper -->

                        <a id="scroll-top"></a>
                        <script src="../assets/js/todo.js"></script>
                        <script src="../assets/js/record.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
                        <script
                            type="text/javascript"
                            src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>

                        <script
                            src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.23.0/moment.min.js"></script>
                        <script
                            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
                        <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>

                    </body>

                </html>