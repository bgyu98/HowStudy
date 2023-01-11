<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    <link rel="stylesheet" href="../assets/css/summernote-lite.css">

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
             <!-- header 넣음 -->
          <jsp:include page="../include/header.jsp"></jsp:include> 
          <!-- Header -->          
            
            <section class="tf-item tf-section">
                <div class="flat-tabs items">
                <ul class="menu-tab">
                    <li><a href="record"><span>RECORD</span></a></li>
                    <li><a href="ranking"><span>RANKING</span></a></li>
                    <li><a href="todo"><span>TO-DO</span></a></li>
                    <li><a href="note"><span>NOTE</span></a></li>
                </ul></div>
                <div class="themesflat-container">
                    <div class="row">
                        
                        <div class="col-box-17">
                            <div id="side-bar" class="side-bar style-3 item">
                                <div class="widget widget-filter style-1 mgbt-0">
                                    <div class="header-widget-filter">
                                        <h4 class="title-widget">새글 등록</h4>
                                        <a href="#" class="clear-checkbox btn-filter style-2" data-toggle="modal" data-target="#popup_bid"  name="signup"  id="signup">
                                            클릭
                                        </a>
                                    </div>
                                </div>     
                                <div class="divider"></div>   
                                 
                                <div class="wrap-category">
                                    <c:forEach items="${selectNote}" var="note">
                                    <c:set var="cf" value="${note.gTopic}" />
                                    <c:if test = "${cf ne null}">
                                    <div class="widget widget-category boder-bt topic1">
                                        <div class="title-wg-category topic2">

                                            <h5 class="title-widget style-2 ">${note.gTopic}</h5>
                                            
                                            <i class="far fa-chevron-up"></i>
                                        </div>
                                        <div class="content-wg-category topic3">
                                            <form action="#" class="form-checkbox topic4">
                                                <label>
                                                    <span><a href="#" class="test">새글 등록2</a></span>
                                                </label><br>
                                                <c:forEach var="stemp" items="${fn:split(note.gTitle,'/')}">
                                                <label> 
                                                         <span class="clk">${stemp}</span>
                                                </label><br>
                                            </c:forEach>
                                            </form>
                                        </div>
                                    </div>
                                    </c:if>
                                    </c:forEach>
                                </div>
                                <!-- 모달 시작-->
                                <form action="insertNoteTopic" method="post" id="FormTopic"></form>
                                <div class="modal fade popup" id="popup_bid" tabindex="-1" role="dialog" aria-hidden="true">
                                    <div class="modal-dialog modal-dialog-centered" role="document">
                                        <div class="modal-content">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                            
                                            <div class="modal-body space-y-20 pd-40">
                                                <h3>주제입력</h3>
                                                <input id="mId" type="hidden" name="mId" value="${sessionScope.loginId}">

                                                
                                               <input type="text" id="gTopic" name="gTopic" >
                                                
                                                <input type="button" id="topicBtn" value="등록">
                                            </div>
                                            
                                        </div>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                        
                        <div class="col-box-83">
                            <div class="flat-tabs items">
                               
                                <div class="content-tab">
                                    <div class="content-inner">
                                        <!-- <div class="content-item"><div class="sc-box-icon no-box-shadown mgbt-0 none">
                                        </div> -->
                                            <!-- 여기 -->
                                            <form action="insertNoteTitle" method="post" id="FormTitle"  style='display:none'>
                                                <input id="mId" class="mId" type="hidden" name="mId" value="${sessionScope.loginId}">
                                                <input type="hidden" id="TopicName" name="gTopic"  class="gTopic">
                                                <input type="text" id="gTitle" name="gTitle" style="width: 40%;" class="gTitle" placeholder="제목" />
                                                <br><br> 
                                                <textarea id="summernote" name="gComment" class="gComment"></textarea>
                                                <button id="titleBtn">test</button>
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
        <!-- Footer 넣음-->
        <jsp:include page="../include/footer.jsp"></jsp:include>
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

    <script src="../assets/js/summernote-lite.js"></script>
    <script src="../assets/js/summernote-ko-KR.js"></script>
    <script src="../assets/js/note.js"></script>
 


</body>

</html>