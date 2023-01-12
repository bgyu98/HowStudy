<%@ page language="java" contentType="text/html; charset=UTF-8"%> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <!-- 한글 깨짐 방지 -->

  <head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><![endif]-->
    <title>Axies | NFT Marketplace HTML Template</title>

    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/flags.css" />

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png" />
  </head>
  <body class="body header-fixed is_dark">
    <!-- preloade -->
    <div class="preload preload-container">
      <div class="preload-logo"></div>
    </div>
    <!-- /preload -->

    <div id="wrapper">
      <div id="page" class="clearfix">
        <jsp:include page="../include/header.jsp"></jsp:include>

        <!-- title page -->
        <section class="flat-title-page inner">
          <div class="overlay"></div>
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="page-title-heading mg-bt-12">
                  <h1 class="heading text-center">Explore 1</h1>
                </div>
                <div class="breadcrumbs style2">
                  <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Explore</a></li>
                    <li>Explore 1</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>

        <div class="tf-section sc-explore-1">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="wrap-box explore-1 flex mg-bt-40">
                  <div class="seclect-box style-1">
                    <div id="item_category" class="dropdown">
                      <a href="#" class="btn-selector nolink">태그설정</a>
                      <ul>
                        <li><span>취업</span></li>
                        <li class="active"><span>독서</span></li>
                        <li><span>어학</span></li>
                        <li><span>임용</span></li>
                        <li><span>공무원</span></li>
                        <li><span>대학수능</span></li>
                        <li><span>자격증</span></li>
                        <li><span>학교공부</span></li>
                        <li><span>기타</span></li>
                        <li><span>코딩</span></li>
                        <li><span>이직</span></li>
                      </ul>
                    </div>
                  </div>
                  <div class="seclect-box style-2 box-right"></div>
                </div>
              </div>
              <c:forEach items="${searchList}" var="vo">
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
                        <a href="item-details.html">${vo.sTitle}</a>
                      </h5>
                      <div class="tags">${vo.sCategory}</div>
                    </div>

                    <div class="meta-info">
                      <div class="author">
                        <div class="info">
                          <h6><a href="author02.html">${vo.sComment}</a></h6>
                        </div>
                      </div>
                      <div class="price">
                        <span>총 인원수 : ${vo.sPeopleNum}</span>
                      </div>
                    </div>
                    
                    <div class="card-bottom">
                      <a href="activity1.html" class="view-history reload">View</a>
                    </div>
                  </div>
                </div>
              </c:forEach>

              <div class="col-md-12 wrap-inner load-more text-center">
                <a href="#" id="loadmore" class="sc-button loadmore fl-button pri-3"
                  ><span>더보기</span></a
                >
              </div>
            </div>
          </div>
        </div>

        <!-- Footer -->
        <jsp:include page="../include/footer.jsp"></jsp:include>
        <!-- header include -->

        <!-- Bottom -->
      </div>
      <!-- /#bottom -->
    </div>
    <!-- /#page -->
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
    <script src="../assets/js/swiper-bundle.min.js"></script>
    <script src="../assets/js/web3.min.js"></script>
    <script src="../assets/js/moralis.js"></script>
    <script src="../assets/js/nft.js"></script>
  </body>
</html>
