<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <head>
    <meta charset="utf-8" />
    <title>HOWSTUDY - 구매 완료 페이지</title>

    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png" />
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
                  <h1 class="heading text-center">구매 성공!</h1>
                </div>
                
                <div class="breadcrumbs style2">
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- 주문완료 내용 시작 -->
	<section style="text-align:center;margin-bottom: 300px;position: relative;top: 100px;">
        <br/>
        <h2>결제가 성공적으로 이루어졌습니다.</h2></br></br></br>
        <h3>구매해 주셔서 감사합니다.</h3></br></br></br></br>
        <h4>아래의 결제정보를 확인해 주세요.</br>회원가입시 입력한 이메일로 결제 내역이 전송됩니다.</h4></br></br>

        <!-- 파라미터 넘긴거 받기 -->
        <%
            String selectName = request.getParameter("selectName");
            String selectPrice = request.getParameter("selectPrice");
        %>
        <!-- 넘겨받은 파라미터 출력 -->
        <div>이용권이름 : <%= selectName %></div>
        <div>이용권가격 : <%= selectPrice %></div>


        <!--구매제품 설명 시작-->
            <div class="col-xl-3 col-lg-6 col-md-6 col-12">
                <h4 class="title-create-item">구매하신 제품</h4>
               <div class="sc-card-product">
                   <div class="card-media">
                       <a href="item-details.html"><img src="..assets/images/box-item/image-box-6.jpg" alt="Image"></a>
                       <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                       <div class="featured-countdown">
                           <span class="slogan"></span>
                           <span class="js-countdown" data-timer="716400" data-labels=" :  ,  : , : , "></span>
                       </div>
                   </div>
                   <div class="card-title">
                       <h5><a href="item-details.html">"Cyber Doberman #766”</a></h5>
                       <div class="tags">bsc</div>
                   </div>
                   <div class="meta-info">
                       <div class="author">
                           <div class="avatar">
                               <img src="assets/images/avatar/avt-9.jpg" alt="Image">
                           </div>
                           <div class="info">
                               <span>Owned By</span>
                               <h6> <a href="author02.html">Freddie Carpenter</a></h6>
                           </div>
                       </div>
                       <div class="price">
                           <span>Current Bid</span>
                           <h5> 4.89 ETH</h5>
                       </div>
                   </div>
                   <div class="card-bottom">
                       <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style bag fl-button pri-3"><span>구매하기</span></a>
                       <a href="activity1.html" class="view-history reload">View History</a>
                   </div>
               </div>
            </div>
            <!-- 구매제품 설명 끝 -->

        <a href="main"><button type="button" class="btn btn-success">메인 화면으로</button></a>
        
    </section>
        
        <!-- 주문완료 끝 -->
        

                </div>
              </div>
            </div>
          </div>
          </div>
        </section>

        <!-- 메인 페이지 끝-->
        <!-- footer 삽입 -->
        <jsp:include page="../include/footer.jsp"></jsp:include> 
      <!-- /#page -->
    <!-- /#wrapper -->
    
    <a id="scroll-top"></a>
  </body>
</html>
