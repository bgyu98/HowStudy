<!-- 한글 깨짐 방지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지-->


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
          font-size:14px;
          color:white;
          padding:5px 8px 5px 8px;
          margin:15px;
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
            <!-- header 넣음 -->
          <jsp:include page="../include/header.jsp"></jsp:include> 
            <section class="tf-item tf-section">
                <div class="themesflat-container">
                    <div>
                        <div >
                            <div class="flat-tabs items">
                                <ul class="menu-tab">
                                    <li><a href="record"><span>RECORD</span></a></li>
                                    <li><a href="ranking"><span>RANKING</span></a></li>
                                    <li><a href="todo"><span>TO-DO</span></a></li>
                                    <li><a href="note"><span>NOTE</span></a></li>
                                </ul>
                            </div><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><div id="test"  style="border-radius : 75px; margin-left : 400px; margin-right : 400px; background: #f5f7f9; "
                            ><br/>
                            
                            <!-- 조ㅏ측-->
                            
                            <div id="grid" style="margin-top: 35px; margin-left: 50px; margin-right: 50px; margin-bottom: -35px;">
                                
                                <form action="insertTodo" id="todoForm" method="post">
                                    <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}">
                                  <div id="myDIV" class="header">
                                    <h2>My To Do List</h2>

                                    <input id="tText" type="text" name="todos" style="width: 200;" placeholder="Title...">
                                    <input type="submit" id="addBtn" class="addBtn">
                                  </div>
                                
                                  
                                  <ul id="myUL">
                                    <c:forEach items="${selectTodo}" var="temp">
                                    
                                    <li class="a aLine" value="${temp.hSeq}"><span>${temp.todos}</span><span>${temp.todos}</span><span class='date'>${temp.todoTime}</span></li>
                                    
                                    </c:forEach>
                                  </ul>
                            
                                  <div class="button_area">

                                    <div>
                                      
                                    <button class="btn red" id="updateTodo" >완료</button>
                                      <button class="btn red" id="deleteTodo">삭제</button>

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
                                    
                                    <li class="a checked aLine" value="${com.hSeq}" style="max-height: 30px;"><span>${com.todos}</span><span class='date'>${com.todoTime}</span></li>
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