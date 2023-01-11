<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <head>
    <meta charset="utf-8" />
    <title>HOWSTUDY - 구매페이지</title>

    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
  </head>

  
<body class="body header-fixed is_dark connect-wal">


    <div id="wrapper">
      <div id="page" class="clearfix">
        <jsp:include page="../include/header.jsp"></jsp:include> <!-- header include -->

        <!-- 메인 페이지 시작 -->
        
        <section class="flat-title-page inner">
          <div class="overlay"></div>
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="page-title-heading mg-bt-12">
                  <h1 class="heading text-center">이용권 구매</h1>
                </div>
                <div class="breadcrumbs style2">
                  <ul>
                    <!-- <li><a href="index.html">Home</a></li> -->
                    <!-- <li>Login</li> -->
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>

        

        <div class="tf-section post-details">
          <div class="themesflat-container">
            <div class="post">
              <div class="inner-content">

                <!-- 주의사항 시작 -->
                <hr/>
                        <div>
                        <h2 style="text-align: center;">교환 환불 불가 ❗❗</h2>
                        <br/>
                        <br/>
                        <h4 style="text-align: center;"> '프리미엄 이용권' 은 교환 및 환불이 어려운 점 양해 부탁드립니다.</h4>
                        <br/>
                        <br/>
                        <h5 style="text-align: center;"> 💎 프리미엄 이용권 혜택 💎 </h5>
                        <br/>
                        <h6 style="text-align: center;"> 1️⃣ To-Do List</h6>
                        <br/>
                        <h6 style="text-align: center;"> 2️⃣ 요점정리</h6>
                        <br/>
                        <h6 style="text-align: center;"> 3️⃣ 스톱워치</h6>
                        <br/>
                        <br/>
                        <h5 style="text-align: center;"> 등과 같은 많은 서비스를 이용해 보세요.</h5>
                      </div>
                      <hr/>
                      <!-- 주의사항 끝 -->
                <div class="swiper-container show-shadow carousel2 pad-t-20 button-arow-style">
                  <div class="swiper-wrapper">
                    <!--여기부터 한 블럭 forEach-->
                    <c:forEach var="list" items="${list}" varStatus="status">
                            <div class="swiper-slide">
                              <div class="slider-item">
                                <div class="sc-card-collection">
                                    <div class="media-images-box">
                                      <img src="../assets/images/box-item/${list.tClass}.png" alt="" />
                                      <div class="bottom-media">
                                      </div>
                                    </div>
                                  </a>
                                  <div class="card-bottom">
                                    <div class="author">
                                      <div class="sc-author-box style-2">
                                        <div class="author-avatar">
                                        </div>
                                      </div>
                                      <div class="content" style="width: 205px;">
                                        <h4 class="ticketName">${list.tClass}</h4>
                                        <br/>
                                       <div class="infor">
                                          <span class="name">${list.tContext}</span>
                                        </div>
                                      </div>
                                    </div>
                                    <!-- <button class="sc-button style bag fl-button pri-3" style="margin-top: auto;">
                                      <span>구매하기</span>
                                    </button> -->
                                    <!-- 위에거 쓸라다가 다크모드 호환 안 돼서 바꿈-->
                                    <!-- style="position: relative;left: 44px;top: 15px;" -->
                                    <div style="position: relative;left: 16px;top: 10px;"><h3 class="ticketPrice" style="display: inline;left: 45px;position: relative;"> ${list.tPrice}</h3><h3 style="display: inline;position: relative;left: 50px;">원</h3>
                                    <a name="ticketBuy" href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style bag fl-button pri-3" style="position: relative; top: 23px;left: 8px;"><span>구매하기</span></a>
                                  </div>
                                </div>
                                </div>
                              </div>
                            </div>
                          </c:forEach>
                          <!--여까지 한 블럭-->
                            
                            </div>
                          </div>
                        </div>
                        

                      </div>
          </div>
      </div>
                  <!-- <div class="swiper-button-next btn-slide-next"></div>
                  <div class="swiper-button-prev btn-slide-prev"></div> // 양쪽 방향 버튼 // 이 페이지에서는 버튼 필요 없어서 껐습니다. -->
                </div>
              </div>
            </div>
          </div>
          </div>
        </section>

        <!-- 메인 페이지 끝-->
        <!-- 모달 창 시작 -->
        <div class="modal fade popup" id="popup_bid" tabindex="-1" role="dialog" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
                  <div class="modal-body space-y-20 pd-40">
                      <h3>구매하시겠습니까?</h3>
                      <p class="text-center"><span class="price color-popup">선택하신 상품</span></p>
                      <input id="selectName" type="text" class="" value="" readonly>
                      <p class="text-center"><span class="price color-popup">선택하신 상품의 가격</span></p>
                      <input id="selectPrice" type="text" class="" value="" readonly>
                      <div class="hr"></div>
                      <a id="nextModal" href="#" class="btn btn-primary" data-toggle="modal" data-target="#pay_bid" data-dismiss="modal" aria-label="Close">확인</a>
                  </div>
              </div>
          </div>
      </div> 
      <!--모달 끝-->
      
      
      <!-- 결제 모달 창 시작 -->
      <form action="paySuccess" id="paySuccess" method="post" >
      <div class="modal fade popup" id="pay_bid" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal-body space-y-20 pd-40">
                    <h3>결제 방식을 선택해주세요</h3>
                    <input id="submitName" type="hidden" name="tClass" value="">
                    <input id="submitPrice" type="hidden" name="pAmount" value="">
                    <input id="submitPayment" type="hidden" name="payWith" value="">
                    <input id="submitId" type="hidden" name="mId" value='<%=session.getAttribute("loginId")%>'>
                    
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#popup_bid_success" data-dismiss="modal" aria-label="Close"><button class="sc-button style bag fl-button" id="kakaoPay" name="kakaoPay" value="카카오페이"><img src="../assets/images/pay/payment_icon_yellow_medium.png"></button></a>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#popup_bid_success" data-dismiss="modal" aria-label="Close"><button class="sc-button style bag fl-button"  id="tossPay" name="tossPay" value="토스페이"><img src="../assets/images/pay/tosspay.png"></button></a>
                    <button id="testbtn" type="submit" name="testbtn">테스트버튼</button>
                </div>
            </div>
        </div>
    </div>
   </form>
    <!-- 결제 모달 끝-->


    <!-- 메인 페이지 끝 -->
        <jsp:include page="../include/footer.jsp"></jsp:include> <!-- footer include -->
      <!-- /#page -->
    <!-- /#wrapper -->
    
    <a id="scroll-top"></a>

    <!-- 페이 api -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <!-- script end -->
  </body>
</html>
