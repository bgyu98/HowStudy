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
    <link rel="shortcut icon" href="assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png" />
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
                <h2 class="tf-title-heading ct style-1">회원정보 수정</h2>

                <div class="flat-form box-login-email">
                  <div class="form-inner">
                    <form method="post" id="modifyForm" action="modifyForm">
                      <input
                        name="mId"
                        tabindex="1"
                        aria-required="true"
                        required
                        type="text"
                        readonly
                        value="${userInfo.mId}"
                      />
                      <input
                       id="mPw"
                        name="mPw"
                        tabindex="2"
                        value=""
                        aria-required="true"
                        type="text"
                        placeholder="비밀번호"
                        required
                      />
                      <input
                        name="mName"
                        tabindex="3"
                        value=""
                        aria-required="true"
                        type="text"
                        placeholder="이름"
                        style="margin-top: 10px;"
                      />
                      <input
                        name="mPhone"
                        tabindex="4"
                        value=""
                        aria-required="true"
                        type="text"
                        placeholder="전화번호"
                      />
                      <input
                        name="mEmail"
                        tabindex="5"
                        value=""
                        aria-required="true"
                        type="text"
                        placeholder="이메일"
                      />

                      <button
                        class="submit"
                        id="modifyBtn"
                        type="submit"
                        name="modifyBtn"
                        style="margin-right: 20px; margin-left: 60px; margin-top: 15px"
                      >
                        수정하기
                      </button>
                    </form>
                   <a href="../user/passwordConfirm?mId=${userInfo.mId}">
                    <button
                          id="delete"
                          class="submit"
                          type="submit"
                          name="delete"
                          style="margin-top: 15px"
                        >
                          회원탈퇴
                        </button> </a>
                    
                  </div>
                  
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
