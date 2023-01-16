<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%> <%@ taglib
  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" href="../assets/css/flags.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
    />
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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
                  <h1 class="heading text-center">Notice</h1>
                </div>
                <div class="breadcrumbs">
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

        <div class="tf-section sc-card-blog dark-style2">
          <div class="themesflat-container">
            <div class="row">
              <c:forEach items="${noticeContent}" var="noticevo">
                <div class="fl-blog fl-item2 col-lg-4 col-md-6">
                  <article class="sc-card-article">
                    <div class="card-media" style="text-align: center">
                      <img src="../assets/images/noticeimage/${noticevo.nREALNAME}" height="20%" />
                    </div>
                    <div class="text-article">
                      <h3>${noticevo.nTITLE}</h3>
                      <p>${noticevo.nSUBTITLE}</p>
                    </div>
                    <a
                      href="../board/noticesangse?nNUM=${noticevo.nNUM}"
                      class="sc-button fl-button pri-3"
                      ><span>Read More</span></a
                    >
                    <div class="meta-info" style="float: right; margin-right: 6px">
                      <div class="date">${noticevo.nDATE}</div>
                    </div>
                  </article>
                </div>
              </c:forEach>
              <div class="col-md-12 wrap-inner load-more text-center mg-t-10">
                <a href="blog.html" id="loadmore" class="sc-button loadmore fl-button pri-3"
                  ><span>더보기</span></a
                >
              </div>
            </div>
          </div>
        </div>

        <!-- Footer 넣음-->
        <jsp:include page="../include/footer.jsp"></jsp:include>
        <!-- Bottom -->
      </div>
      <!-- /#page -->
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>
  </body>
</html>
