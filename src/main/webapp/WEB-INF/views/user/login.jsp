<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지-->
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

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">


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
                                <h1 class="heading text-center">Login</h1>
                            </div>
                            <div class="breadcrumbs style2">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <li>Login</li>
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
                            <h2 class="tf-title-heading ct style-1">
                                로그인
                            </h2>

                            <div class="flat-form box-login-social">
                                <div class="box-title-login">
                                    <h5>Login with social</h5>
                                </div>
                                <ul>
                                    <li> 
                                  <a href="https://kauth.kakao.com/oauth/authorize?client_id=60fba32f81035c06fdb413a6e0d5bf99&redirect_uri=http://localhost:8888/user/kakaoLogin&response_type=code" class="sc-button style-2 fl-button pri-3" >
                                            <i class="icon-fl-facebook"></i>
                                            <span>KAKAO login</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="sc-button style-2 fl-button pri-3">
                                            <i class="icon-fl-facebook"></i>
                                            <span>NAVER</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="flat-form box-login-email">
                                <div class="box-title-login">
                                    <h5>Or login with email</h5>
                                </div>

                                <div class="form-inner">
                                    <form method="POST" id="insert-customer" action="loginCustomer">
                                        <input id="mId" name="mId" tabindex="1"  aria-required="true" required type="text" placeholder="아이디" required>
                                        <input id="mPw" name="mPw" tabindex="3"  aria-required="true" type="password" placeholder="비밀번호" required>
                                        
                                        <div class="row-form style-1">
                                            <a href="#" class="forgot-pass">비밀번호 찾기</a>
                                        </div>
                                        <div class="row-form style-1">
                                            <button class="submit" type="submit" name="submit" style=" margin: auto;">로그인</button>
                                        </div>
                                        
                                        <div class="box-title-login">
                                            <h5>아직 회원이 아니신가요?</h5>
                                        </div>
       

                                     <!--  <button class="submit">Login</button>-->
                                    </form>
                                    
                            

                                    <div class="row-form style-1">
                                        <button onclick="location.replace('../user/signup');" class="submit" type="submit" name="submit"  style="margin: auto;">가입하기</button>
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