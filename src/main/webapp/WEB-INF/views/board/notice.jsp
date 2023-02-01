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
    <title>HOWSTUDY</title>

    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/flags.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/likeTag.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slack.css">

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
                  <h1 class="heading text-center">공지사항</h1>
                </div>
                <div class="breadcrumbs">
                  <ul>
                    <li><a href="">게시판</a></li>    
                    <li>공지사항</li>
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
                      ><span style="color:#ff8787">Read More</span></a
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













        <!-- Footer 넣음-->
        <jsp:include page="../include/footer.jsp"></jsp:include>
        <!-- Bottom -->
      </div>
      <!-- /#page -->
    </div>
    <!-- /#wrapper -->
 <!--슬랙봇 추가-->
 <div class="quickmenu">

  <ul style="text-decoration: none">
    <a href="https://app.slack.com/client/T04K98KG26R/C04K5JX8NDU" onclick="window.open(this.href, '_blank', 'width=400, height=800'); return false;"><img src="/assets/images/icon/slack.png"></img></a>
    
  </ul>
</div>
    <a id="scroll-top"></a>
    <script src="../assets/js/likeTag.js"></script>
    <script src="../assets/js/slack.js"></script>
  </body>
</html>
