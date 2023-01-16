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
    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">

</head>

<body class="body header-fixed is_dark">


    <div id="wrapper">
        <div id="page" class="clearfix">
            <jsp:include page="../include/header.jsp"></jsp:include> <!-- header include -->
            <section class="tf-item tf-section">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-box-10">

                        </div>
                        
                        <div class="col-box-83">
                            <div class="flat-tabs items">
                                <ul class="menu-tab">
                                    <li><a href="../study/record?mId=${sessionScope.loginId}"><span>RECORD</span></a></li>
                                    <li><a href="../study/ranking"><span>RANKING</span></a></li>
                                    <li><a href="../study/todo?mId=${sessionScope.loginId}"><span>TO-DO</span></a></li>
                                    <li><a href="../study/note?mId=${sessionScope.loginId}"><span>NOTE</span></a></li>
                                </ul>
                                <div class="content-tab">
                                    <div class="content-inner">
                                        <div class="content-item">
                                            <div class="sc-box-icon no-box-shadown mgbt-0 none">
                                            </div>
                                            <!-- 여기임 -->
                                            <form action="insertTodo" id="todoForm" method="post">
                                                <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}">
                                              <div id="myDIV" class="header">
                                                <h1>My To Do List</h1><br/><br/><br/>
                                                <input id="tText" type="text" style="background: #fff;" name="todos"  placeholder="Title...">
                                                <button id="addBtn" class="btn">등록</button>                  
                                              </div>
                                              <ul id="myUL">
                                                <c:forEach items="${selectTodo}" var="temp">
                                                <li class="a" value="${temp.hSeq}"><span>${temp.todos}</span><span class='date'>${temp.todoTime}</span></li>
                                                </c:forEach>
                                              </ul>
                                              <div class="button_area">
                                                <div style="text-align: center;">
                                                  <button id="updateTodo" class="btn">완료</button>
                                                  <button  id="deleteTodo" class="btn">삭제</button>
                                                </div>
                                              </div>
                                            </form>
                                            <form action="selectCompletion" id="completion" method="post" style="margin-left: 22px;">
                                            <!-- 오른쪽 박스 -->
                                            <div>
                                              <div id="myDIV2" class="header2">
                                                <h1>Complete To Do List</h1>
                                              </div>
                                              <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}">
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
                            
                        </div>
                    </div>
                </div>
            </section>

            <!-- Footer -->
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

        <!-- Footer 넣음-->
        <jsp:include page="../include/footer.jsp"></jsp:include>
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
    <script src="../assets/js/todo.js"></script>
    

</body>

</html>