<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">

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
                  <h1 class="heading text-center">FAQ</h1>
                </div>
                <div class="breadcrumbs style2">
                  <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="#">Notice</a></li>
                    <li>FAQ</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- flat-accordion -->
        <section class="tf-section wrap-accordion">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <h2 class="tf-title-heading ct style-2 fs-30 mg-bt-10">자주 묻는 질문</h2>
                <h5 class="sub-title help-center mg-bt-32">
                  빠른 상담을 원하신다면 슬랙봇 채팅 서비스를 이용해 주세요. <br />
                  운영시간 : 평일 09:00 ~ 18:00 / 주말 · 공휴일 휴무
                </h5>
              </div>
              <div class="col-md-12">
                <c:forEach items ="${faqlist}" var="faqvo">
                <div class="flat-accordion2">
                  <div class="flat-toggle2">
                    <h6 class="toggle-title">${faqvo.fTITLE}</h6>
                    <div class="toggle-content">
                      <p>
                        ${faqvo.fCOMMENT}
                      </p>
                    </div>
                  </div>

                  </c:forEach>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- Bottom -->
        <!-- Footer -->
        <jsp:include page="../include/footer.jsp"></jsp:include> <!-- header include -->
      </div>
      <!-- /#page -->
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>



  </body>
</html>
