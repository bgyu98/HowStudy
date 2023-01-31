<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지-->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>


  <head>
    <!-- Basic Page Needs -->
    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><![endif]-->
    <title>HOWSTUDY</title>

    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/likeTag.css" />

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
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
                  <h1 class="heading text-center">내 프로필</h1>
                </div>
                <div class="breadcrumbs style2">
                  <ul>
                    <li><a href="">마이페이지</a></li>
                    <li>내 프로필</li>
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
                      <input id="mId" name="mId" tabindex="1" aria-required="true" required type="text"
                        value="${sessionScope.loginId}" readonly />
                      <input id="mPw" name="mPw" tabindex="2" aria-required="true" type="text" placeholder="비밀번호"
                        required />
                      <input name="mName" tabindex="3" value="" aria-required="true" type="text" placeholder="이름"
                        style="margin-top: 10px;" />
                      <input name="mPhone" tabindex="4" value="" aria-required="true" type="text" placeholder="전화번호" />
                      <input name="mEmail" tabindex="5" value="" aria-required="true" type="text" placeholder="이메일" />
                      <div class="modifyBtn" style="text-align: center; display: inline-block; width: 100%">
              
                        <a href="../user/passwordConfirm?mId=${userInfo.mId}"></a>
                        <button class="submit" id="modifyBtn" type="submit" name="modifyBtn" style="width: 40%;">
                          수정하기
                        </button></a>
                        <br> <br> <br>
                        <div class="box-title-login">
                            <h5>서비스를 그만 이용 하시겠습니까?</h5>
                        </div>
                      </div>
                    </form>
                    <div class="modifyBtn" style="text-align: center; display: inline-block; width: 100%">
                    <a href="../user/passwordConfirm?mId=${userInfo.mId}">
                      <button style="width: 40%;" id="deletecus">
                        회원탈퇴
                      </button></a>
                    </div>
                  </div>

                </div>

              </div>

            </div>
          </div>
      </div>
    </div>
    </section>



 <!-- 선호태그 모달 시작-->
 <form action="updatelikeTag" id="updatelikeTag" >
  <div class="modal fade popup" id="popup_bid3" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
            <div class="modal-body pd-40" id="likeTagMargin">
                <h3 style="margin-bottom: 30px;">나의 관심 주제</h3>
                <input id="mId" type="hidden" name="mId" value="${sessionScope.loginId}">

                
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
                
                <button id="likeTag" style="margin-left: 136px; margin-top: 15px;">선택 완료</button>
            </div>
        </div>
    </div>
</div>
</form>
<!--선호태그 모달 끝-->



    <!-- Footer -->
    <jsp:include page="../include/footer.jsp"></jsp:include> 

  
    <!-- Bottom -->
    </div>
    <!-- /#page -->
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>
    <script src="../assets/js/likeTag.js"></script>


 





  </body>

</html>