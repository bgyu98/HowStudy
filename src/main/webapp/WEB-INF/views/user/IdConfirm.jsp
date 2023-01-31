<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>

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
  </head>

  
<body class="body header-fixed is_dark connect-wal">


    <div id="wrapper">
      <div id="page" class="clearfix">
        <!-- header 넣음 -->
        <jsp:include page="../include/header.jsp"></jsp:include> 

        <!-- Header -->

        <!-- title page -->
        <section class="flat-title-page inner">
          <div class="overlay"></div>
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="page-title-heading mg-bt-12">
                  <h1 class="heading text-center">My Account</h1>
                </div>
                <div class="breadcrumbs style2">
                  <ul>
                    <li><a href="index.html">Home</a></li>
                    <li>Signup</li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="tf-login tf-section">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-12">
                <h2 class="tf-title-heading ct style-1">비밀번호 확인</h2>

                <div class="flat-form box-login-email">
                  <div class="form-inner">
                    <form method="post" id="userDelete" action="userDelete">
                      <input
                        id="mId"
                        name="mId"
                        tabindex="1"
                        aria-required="true"
                        required
                        type="hidden"
                        value="${sessionScope.loginId}"
                      />
                      <input
                        id="mPw"
                        name="mPw"
                        tabindex="1"
                        value=""
                        aria-required="true"
                        required
                        type="text"
                        required
                      />

                      <button
                        class="submit"
                        type="submit"
                        name="userDelete"
                        style="margin-left: 105%; margin-top: -75px; width: 17%"
                      >
                        확인
                      </button>
                      <div style="color: red; font-size: 15px; font-weight: bold">${message}</div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
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
