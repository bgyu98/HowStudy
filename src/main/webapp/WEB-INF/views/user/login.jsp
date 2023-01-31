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
    <title>HOWSTUDY</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png">


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
                                <h1 class="heading text-center">로그인</h1>
                            </div>
                            <div class="breadcrumbs style2">
                                <ul>
                                    <li><a href="">스터디룸</a></li>
                                    <li>로그인</li>
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
                          

                            <div class="flat-form box-login-social">
                                <div class="box-title-login">
                                    <h5>Login with social</h5>
                                </div>
                                <ul>
                                   
                                   <a href="https://kauth.kakao.com/oauth/authorize?client_id=60fba32f81035c06fdb413a6e0d5bf99&redirect_uri=http://localhost:8888/user/kakaoLogin&response_type=code" style="margin: auto;">
                                    <img src="../assets/images/icon/kakao_logink.png">  
                                        </a>
                                   
                                  
                                </ul>
                            </div>

                            <div class="flat-form box-login-email">
                                <div class="box-title-login">
                                    <h5>H O W S T U D Y</h5>
                                </div>

                                <div class="form-inner">
                                    <form method="POST" id="insert-customer" action="loginCustomer">
                                        <input id="mId" name="mId" tabindex="1"  aria-required="true" required type="text" placeholder="아이디" required>
                                        <input id="mPw" name="mPw" tabindex="3"  aria-required="true" type="password" placeholder="비밀번호" required>
                                         
                                        <div class="row-form style-1">
                                            <a class="forgot-pass" data-toggle="modal" data-target="#forgot-id" name="findid"  id="findid" style="margin: auto; font-size: 13px;"  >아이디 찾기</a>
                                            <a class="forgot-pass" data-toggle="modal" data-target="#forgot-pass" name="findpw"  id="findpw" style="margin: auto; font-size: 13px;" >비밀번호 찾기</a>
                                        </div>
                                        <br> 
                                        <div class="flat-form box-login-social">
                                            <button class="submit" type="submit" name="submit">로그인</button>
                                        </div>
                                        
                                        <br> <br> <br>
                                        <div class="box-title-login">
                                            <h5>회원이 아니신가요?</h5>
                                        </div>
       

                                     <!--  <button class="submit">Login</button>-->
                                    </form>
                                    
                            

                                    <div class="flat-form box-login-social">
                                        <button onclick="location.replace('../user/signup');" class="submit" type="submit" name="submit">가입하기</button>
                                    </div>
                                
                                </div>

                            </div>
                            <!-- 아이디찾기 모달 시작-->

                            <div class="modal fade popup" id="forgot-id" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="closeid" name="closeid">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <div class="modal-body space-y-20 pd-40">
                                            <form class="form" method="post" id="idForm">
                                            <h3>아이디 찾기</h3>
                                             <br> <br>
                                            <input id="mName" name="mName" tabindex="1"  aria-required="true" required type="text" placeholder="이름" required>
                                            <br>
                                            <input id="mPhone" name="mPhone" tabindex="1"  aria-required="true" required type="text" placeholder="연락처 (ex.010-1234-5678)" required>
                                            <br> <br>
                                            <p id="chkNotice7"  name="chkNotice7" size="2" ></p>
                                            <br>
                                            <button type="button" class="button" id="findId" style="margin-left: 150px;">확인</button>
                                            
                                          </form>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- 아이디찾기 모달 끝-->



                             <!-- 비번찾기 모달 시작-->
                           

                            <div class="modal fade popup" id="forgot-pass" tabindex="-1" role="dialog" aria-hidden="true">
                                <div class="modal-dialog modal-dialog-centered" role="document">
                                    <div class="modal-content">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close" id="closepw" name="closepw">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                        <div class="modal-body space-y-20 pd-40">   
                                            <form class="form" method="post" id="pwForm">
                                            <h3>비밀번호 찾기</h3>  
                                            <br> <br>
                                            <input id="mId" name="mId" class="bk" tabindex="1"  aria-required="true" required type="text" placeholder="아이디" required>
                                            <br>
                                            <input id="mEmail" name="mEmail" tabindex="1"  aria-required="true" required type="text" placeholder="이메일" required>
                                            <br> <br>
                                            <p id="chkNotice8"  name="chkNotice8" size="2" ></p>
                                            <br>
                                            <button class="button" id="findPw"  style="margin-left: 150px;">확인</button>
                                        </form>
                                        </div>
                                    </div>
                                </div>
                            </div> 


                             <!-- 비번찾기 모달 끝 -->
                          









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

    <script src="../assets/js/login.js"></script>

</body>

</html>