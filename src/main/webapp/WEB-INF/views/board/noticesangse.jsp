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
                  <h1 class="heading text-center">Detail</h1>
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

        <div class="tf-section post-details">
          <div class="themesflat-container">
            <div class="wrap-flex-box style">
              <div class="post">
                <div class="inner-content">
                  <h2 class="title-post">${notice.nTITLE}</h2>
                  <div class="divider"></div>
                  <div class="meta-post flex mg-bt-31">
                    <div class="box"></div>
                    <div class="box left">
                      <div class="inner boder pad-r-50">
                        <p style="font-size: 15px">조회수 : ${ncnt.nCNT}</p>
                      </div>
                      <div class="inner mg-l-39 mg-r-1">
                        <p style="font-size: 15px">${notice.nDATE}</p>
                      </div>
                    </div>
                  </div>
                  <div class="image">
                    <img src="../assets/images/noticeImage/${notice.nMAINREALNAME}" width="100%" />
                  </div>
                  <div class="inner-post mg-t-40">
                    <h3 class="heading mg-bt-16">${notice.nSUBTITLE}</h3>
                    <p class="mg-bt-24">${notice.nCOMMENT}</p>
                  </div>
                  <div class="sc-widget style-1">
                    <div class="widget widget-tag style-2">
                      <h4 class="title-widget">태그</h4>
                      <ul>
                        <li>${notice.nTAG1}</li>
                        <li>${notice.nTAG2}</li>
                        <li>${notice.nTAG3}</li>
                      </ul>
                    </div>
                    <div class="widget widget-social style-2"></div>
                  </div>
                  <div class="divider d2"></div>
                </div>
              </div>
              <div class="side-bar details">
                <div class="widget widget-recent-post mg-bt-43">
                  <h3 class="title-widget mg-bt-23">다음 글</h3>
                  <ul>
                    <li class="box-recent-post" style="flex-direction: row; display: block">
                      <div class="box-feature"></div>
                      <c:forEach items="${noticeNext}" var="vo">
                        <div class="box-content">
                          <a href="../board/noticesangse?nNUM=${vo.nNUM}" class="title-recent-post"
                            >${vo.nTITLE}</a
                          >
                          <span
                            ><span class="sub-recent-post">${vo.nSUBTITLE}</span
                            ><a href="../board/noticesangse?nNUM=${vo.nNUM}" class="day-recent-post"
                              >${vo.nDATE}</a
                            ></span
                          >
                        </div>
                        <br />
                      </c:forEach>
                    </li>
                  </ul>
                </div>
                <div class="widget widget-tag style-1">
                  <h3 class="title-widget mg-bt-23">태그</h3>
                  <ul>
                    <li>
                      <a href="blog.html" class="box-widget-tag" style="font-size: 15px"
                        >${notice.nTAG1}</a
                      >
                    </li>
                    <li>
                      <a href="blog.html" class="box-widget-tag" style="font-size: 15px"
                        >${notice.nTAG2}</a
                      >
                    </li>
                    <li>
                      <a href="blog.html" class="box-widget-tag" style="font-size: 15px"
                        >${notice.nTAG3}</a
                      >
                    </li>
                  </ul>
                </div>
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
