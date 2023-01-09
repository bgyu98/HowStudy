<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

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
    <link rel="stylesheet" type="text/css" href="../assets/css/likeTag.css">

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
                                <h1 class="heading text-center">Signup</h1>
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
                            <h2 class="tf-title-heading ct style-1">
                                회원가입
                            </h2>
                            <div class="flat-form box-login-social">
                                <div class="box-title-login">
                                    <h5>Signup with social</h5>
                                </div>
                                <ul>
                                    <li>
                                        <a href="#" class="sc-button style-2 fl-button pri-3">
                                            <i class="icon-fl-google-2"></i>
                                            <span>Google</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#" class="sc-button style-2 fl-button pri-3">
                                            <i class="icon-fl-facebook"></i>
                                            <span>Facebook</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="flat-form box-login-email">
                                <div class="box-title-login">
                                    <h5>Or Signup with email</h5>
                                </div>
                               

                                <div class="form-inner">
                                    <form method="post" id="insert-customer" action="insertCustomer">
                                        <input id="mId" name="mId" tabindex="1"  aria-required="true" required type="text" placeholder="아이디"  required>
                                        <p id="chkNotice" name="chkNotice" size="2" style="font-size: small;"></p>
                                        <input id="mPw" name="mPw" tabindex="3"   aria-required="true" type="password" placeholder="비밀번호" required>
                                        <p id="chkNotice2" name="chkNotice2" size="2" style="font-size: small;"></p>
                                        <input id="mPwchk" name="mPwchk" tabindex="3"  aria-required="true" type="password" placeholder="비밀번호 재확인" required>
                                        <p id="chkNotice3"  name="chkNotice3" size="2" style="font-size: small;"></p>
                                        <input id="mName" name="mName" tabindex="3"  aria-required="true" type="text"  placeholder="이름" required>
                                        <p id="chkNotice4"  name="chkNotice4" size="2" style="font-size: small;"></p>
                                        <input id="mPhone" name="mPhone" tabindex="3"  aria-required="true" type="text" placeholder="전화번호" required>
                                        <p id="chkNotice5"  name="chkNotice5" size="2" style="font-size: small;"></p>
                                        <input id="mEmail" name="mEmail" tabindex="2"   aria-required="true" type="email" placeholder="이메일" required>
                                        <p id="chkNotice6"  name="chkNotice6" size="2" style="font-size: small;"></p>
                                        
                                        
                                        <div class="row-form style-1">
                                            <input type="button" class="sc-button.fl-button.pri-3:hover" data-toggle="modal" data-target="#popup_bid" name="signup"  id="signup" style="margin: auto;"  value="가입하기"/>
                                        </div>
                                        <!-- 모달 시작-->
                                        <div class="modal fade popup" id="popup_bid" tabindex="-1" role="dialog" aria-hidden="true">
                                          <div class="modal-dialog modal-dialog-centered" role="document">
                                              <div class="modal-content">
                                                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                      <span aria-hidden="true">&times;</span>
                                                  </button>
                                                  <div class="modal-body space-y-20 pd-40">
                                                      <h3>나의 관심 주제</h3>
                                                      <input id="submitName" type="hidden" name="selectName" value="">
                                                      <input id="submitPrice" type="hidden" name="selectPrice" value="">
                                                      
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="취업"><span><img src="../assets/images/likeTag/취업.png">취업</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="독서"><span><img src="../assets/images/likeTag/독서.png">독서</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="어학" ><span><img src="../assets/images/likeTag/어학.png">어학</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="임용"><span><img src="../assets/images/likeTag/임용.png">임용</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="공무원"><span><img src="../assets/images/likeTag/공무원.png">공무원</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="대학수능"><span><img src="../assets/images/likeTag/대학수능.png">대학수능</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="자격증"><span><img src="../assets/images/likeTag/자격증.png">자격증</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="학교공부"><span><img src="../assets/images/likeTag/학교공부.png">학교공부</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="기타" ><span><img src="../assets/images/likeTag/기타.png">기타</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="코딩"><span><img src="../assets/images/likeTag/코딩.png">코딩</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="이직"><span><img src="../assets/images/likeTag/이직.png">이직</span></label>
                                                      <label class="box-check-input"><input type="checkbox" class="likeTag" name="mTag" value="자기계발"><span><img src="../assets/images/likeTag/자기계발.png">자기계발</span></label>
                                                      
                                                      <button id="likeTag">테스트버튼</button>
                                                  </div>
                                              </div>
                                          </div>
                                      </div>
                                     </form>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>
            </section>
        <!-- Bottom -->
        <!-- header 넣음 -->
        <jsp:include page="../include/footer.jsp"></jsp:include> 
        </div>
        <!-- /#page -->
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>
    <script src="../assets/js/signup.js"></script>
    <script src="../assets/js/likeTag.js"></script>

</body>

</html>