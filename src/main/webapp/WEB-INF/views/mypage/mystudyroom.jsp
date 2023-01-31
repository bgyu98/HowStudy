<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- JSTL 사용-->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>HOWSTUDY</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">

    <!-- myStudy Style-->
    <link rel="stylesheet" type="text/css" href="../assets/css/mystudy.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/likeTag.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png">
</head>
<body class="body header-fixed is_dark connect-wal">
    <div id="wrapper">
        <div id="page" class="clearfix">
            <!-- header 넣음 -->
          <jsp:include page="../include/header.jsp"></jsp:include> 
            <!-- title page -->

            <section class="flat-title-page inner">
                <div class="overlay"></div>
                <div class="themesflat-container">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="page-title-heading mg-bt-12">
                        <h1 class="heading text-center">즐겨찾기</h1>
                      </div>
                      <div class="breadcrumbs style2">
                        <ul>
                          <li><a href="">마이페이지</a></li>
                          <li>즐겨찾기</li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              </section>








            <!-- favorite section start-->
            <section class="tf-section live-auctions style4 home5 mobie-style">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-md-12">
                            <br><br><br>
                            <div class="heading-live-auctions">
                                <h2 class="tf-title pb-23 text-left" style="margin-top: 3%;">
                                
                                    즐겨 찾기한 스터디룸 목록</h2>
                            </div>
                        </div>

                        <!-- 즐겨찾기한 목록 방 생성 -->
                        <div class="col-md-12">
                            <div class="swiper-container show-shadow carousel9 pad-t-17 auctions">
                                <div class="swiper-wrapper">
                                    <c:forEach items="${favorRoom}" var = "fr">
                                        
                                        <div class="swiper-slide">
                                            <div class="slider-item">	<!-- item start -->									
                                                <div class="sc-card-collection style-2 home2">
                                                    <div class="card-header sunho" style="border-radius: 15px; width:25%">
                                                        <h5>${fr.sCategory}</h5> <!-- 선호 태그 -->
                                                    </div>
                                                    <div class="card-bottom">
                                                        <div class="author">
                                                            <div class="sc-author-box style-2">
                                                                <div class="author-avatar">
                                                                    <img src="../assets/images/logo/logo01.png" alt="" class="avatar" style="height: 64px; width: 64px;">
                                                                    <div class="badge"><i class="ripple"></i></div>
                                                                </div>
                                                            </div>
                                                            <div class="content">
                                                                <h4><a>${fr.sTitle}</a></h4> <!-- 제목 -->
                                                                <div class="infor">
                                                                    <span>Created by</span>
                                                                    <span class="name"><a>${fr.mId}</a></span><!-- 작성자 -->
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <input type="hidden" value = "${fr.sNum}"/>
                                                        <button class="wishlist-button2 public heart mg-t-6 active" id="wishlist-button2"><span class="number-like">${fr.sFavorNum}</span></button> <!-- 즐겨찾기 개수 -->
                                                        <input type="hidden" value = '${sessionScope.loginId}'/>
                                                    </div>
                                                </div> 		
                                            </div><!-- item-->
                                        </div>
                                    </c:forEach>
                                </div>
                                <div class="swiper-pagination mg-t25"></div>
                                <div class="swiper-button-next btn-slide-next active"></div>
                                <div class="swiper-button-prev btn-slide-prev"></div>
                            </div>  
                        </div>
                    </div>
                     <!-- 즐겨찾기한 목록 방 끝 -->
                </div>
            </section>
            <!-- favorite section finish-->
            
            <!-- visited section start-->
            <section class="tf-section live-auctions home5 style2 bg-style3">
                <div class="themesflat-container">
                    <!-- 날짜 선택 select 문-->
                    <div class="row">
                        <div class="col-md-12">
                            <h2 class="tf-title pb-23 text-left">
                                방문한 목록 </h2>
                            <div class="tf-soft" style="display: inline-block; float: right; width: 12%; ">
                                <select class="checkdate" onchange="javascript:checkD(this);">
                                    <option class="checkdate"  value="alld">전체</option>
                                    <option class="checkdate" value="resentd">최근 하루</option>
                                    <option class="checkdate" value="resentw">최근 일주일</option>
                                    <option class="checkdate" value="resentm">최근 한 달</option>
                                </select>
                            </div>
                        </div>
        
                        
                        <!-- 날짜 선택 끝-->
                        <div class="col-md-12" id="favor">
                            <div class="swiper-container show-shadow carousel6 pad-t-17 auctions" >
                                <div class="swiper-wrapper" >
                                    <c:forEach items="${resentRoom}" var = "rR" >
                                    <div class="swiper-slide">
                                        <div class="slider-item">										
                                            <div class="sc-card-product menu_card style2">
                                                
                                                <div class="card-media style2">
                                                   
                                                    <img src="../assets/images/studyRoom/${rR.sFile}.png" alt="Image">
                                                    <input type="hidden"  class= "sNum" value = "${rR.sNum}"/>     <!-- 즐겨찾기 체크 용 글번호--> 
                                                    
                                                    <c:set var="cf" value="${rR.checkFavor}" />
                                                    <c:if test = "${cf eq 0}">
                                                    <button class="wishlist-button heart">
                                                        <span class="number-like"> ${rR.sFavorNum}</span> <!-- 즐겨찾기 개수 -->
                                                    </button>
                                                    </c:if>
                                                    <c:if test = "${cf eq 1}">
                                                    <button class="wishlist-button2 public heart mg-t-6 active" id="wishlist-button2">
                                                        <span class="number-like"> ${rR.sFavorNum}</span> <!-- 즐겨찾기 개수 -->
                                                    </button>
                                                    </c:if>
                                                   
                                                    <input type="hidden" value = '${sessionScope.loginId}'/> <!-- 즐겨찾기 체크용 로그인 아이디-->
                                                    
                                                </div>
                                                
                                                <div class="card-title">
                                                    <h3><a href="item-details.html">${rR.sTitle}</a></h3> <!-- 제목 -->
                                                    <div class="tags" style="width: 25%;">${rR.sCategory}</div>
                                                </div>
                                                <div class="meta-info style2">
                                                    <div class="author">
                                                        <div class="avatar">
                                                            <img src="../assets/images/logo/logo01.png" alt="Image">
                                                        </div>
                                                        
                                                        <div class="info">
                                                            <span>Creator</span>
                                                            <h4 ><a>${rR.mId} <!-- 로그인한 아이디 -->
                                                            </a> </h4>
                                                        </div>
                                                    </div>
                                                    <div class="fdate">
                                                        <span>Date</span>
                                                        <h5> ${rR.sDate}</h5>       <!-- 날짜-->
                                                    </div>
                                                </div>
                                            </div>    	
                                        </div><!-- item-->
                                    </div>
                                </c:forEach>
                                </div>
                                <div class="swiper-pagination mg-t-13"></div>
                                <div class="swiper-button-next btn-slide-next active"></div>
                                <div class="swiper-button-prev btn-slide-prev"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
             <!-- visited section finish-->
           
            
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



<!-- 선호태그 모달 시작-->
<form action="updatelikeTag" id="updatelikeTag" >
    <div class="modal fade popup" id="popup_bid3" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
              <div class="modal-body pd-40" id="likeTagMargin">
                  <h3 style="margin-bottom: 30px;">나의 관심 주제</h3>
                  <input id="mId" type="hidden" name="mId" value="${sessionScope.loginId}">


                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="취업"><span><img src="../assets/images/likeTag/취업.png">취업</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="독서"><span><img src="../assets/images/likeTag/독서.png">독서</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="어학" ><span><img src="../assets/images/likeTag/어학.png">어학</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="임용"><span><img src="../assets/images/likeTag/임용.png">임용</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="공무원"><span><img src="../assets/images/likeTag/공무원.png">공무원</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="대학수능"><span><img src="../assets/images/likeTag/대학수능.png">대학수능</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="자격증"><span><img src="../assets/images/likeTag/자격증.png">자격증</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="학교공부"><span><img src="../assets/images/likeTag/학교공부.png">학교공부</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="기타" ><span><img src="../assets/images/likeTag/기타.png">기타</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="코딩"><span><img src="../assets/images/likeTag/코딩.png">코딩</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="이직"><span><img src="../assets/images/likeTag/이직.png">이직</span></label>
                  <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="자기계발"><span><img src="../assets/images/likeTag/자기계발.png">자기계발</span></label>

                  <button id="likeTag" style="margin-left: 136px; margin-top: 15px;">선택 완료</button>
              </div>
          </div>
      </div>
  </div>
  </form>
  <!--선호태그 모달 끝-->











        <!-- Footer 넣음-->
        <jsp:include page="../include/footer.jsp"></jsp:include>
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>

    <script src="../assets/js/likeTag.js"></script>

</body>

</html>