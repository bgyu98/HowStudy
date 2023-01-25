<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
  <!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
  <!--[if (gte IE 9)|!(IE)]><!-->
  <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!--<![endif]-->
  <!-- 한글 깨짐 방지 -->
  <%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />


        <!-- Reponsive -->
        <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">

        <!-- Favicon and Touch Icons  -->
        <link rel="shortcut icon" href="../assets/icon/Favicon.png">
        <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png">

      </head>

      <body class="body header-fixed is_dark connect-wal">


        <div id="wrapper">
          <div id="page" class="clearfix">
            <!-- header 넣음 -->
            <jsp:include page="../include/header.jsp"></jsp:include>
            <section class="tf-section live-auctions style2 no-pt-mb tl-pb-0 mine">
              <br /><br /><br /><br /><br /><br /><br /><br /><br />

              <div class="themesflat-container">
                <div class="row" style="margin-top: 20px;">

                  <div class="col-md-12">
                    <div class="heading-live-auctions" style="margin-bottom: -10px">
                      <h2 class="tf-title pb-39" style="margin-left: -200px;">
                        <!--로그인 안했을 때 님의 스터디룸-->
                        <c:if test="${sessionScope.loginId==null}">
                          스터디룸 만들기
                          <a href="../user/login"><img src="../assets/images/icon/plus.png" alt="Image"
                              style="width: 4.5%;position: relative;top: -3px;margin-left: 7px;"></a>
                        </c:if>
                        <c:if test="${sessionScope.loginId!=null}">
                          <!--로그인 했을때 ㅇㅇㅇ님의 스터디룸-->
                          <%=session.getAttribute("loginId")%> 님의 스터디룸
                            <a href="../studyRoom/createroom"><img src="../assets/images/icon/plus.png" alt="Image"
                                style="width: 4.5%;position: relative;top: -3px;margin-left: 7px;"></a>
                        </c:if>
                      </h2>
                    </div>
                  </div>
                </div>
              </div>
              <!-- 방 안 만들었을때 이미지 뜨는거-->
              <c:if test="${myroomcnt eq 0}">
                <div class="image"
                  style="display: flex;flex-direction: column;background-image: url('../assets/img/curved-images/gray.jpg');width: 70%;height: 231px;margin: auto;display: block; ">
                  <p style="text-shadow: 1px 1px 2px color = white; padding-top: 85px; text-align:center;">내가 만든 스터디룸이
                    등록됩니다.<br> 플러스 버튼을 눌러 스터디룸을 만들어 보세요!</p>
                </div>
              </c:if>


            </section>



            <section class="tf-section live-auctions home7">
              <div class="themesflat-container">
                <div class="row">
                  <div class="col-md-12">
                    <div class="swiper-container show-shadow carousel10 pad-t-17 auctions">
                      <div class="swiper-wrapper">
                        <c:forEach items="${myroom}" var="mr">
                          <!-- 한 블럭 시작 -->
                          <div class="swiper-slide">
                            <div class="slider-item">
                              <div class="sc-card-product menu_card style-h7">
                                <div class="meta-info style">
                                  <div class="author">
                                    <!-- 스터디 정원 -->
                                    <div class="info">
                                      <span class="study-item-info-personnel present">스터디 정원</span>
                                      <span class="study-item-info-personnel present">${mr.sPeopleNum}</span>
                                      <span class="study-item-info-personnel maximum">/ 4</span>
                                    </div>
                                  </div>
                                  <c:set var="cf" value="${mr.check}" />

                                  <!-- 방 번호 ( 히든으로 바꿀 것)-->
                                  <input type="hidden" value="${mr.sNum}" />

                                  <c:set var="cf" value="${mr.check}" />
                                  <c:if test="${cf eq 0}">
                                    <!-- 하트 갯수-->
                                    <button class="wishlist-button heart">
                                      <span class="number-like">${mr.sFavorNum}</span>
                                    </button>
                                  </c:if>
                                  <c:if test="${cf eq 1}">
                                    <button class="wishlist-button2 public heart mg-t-6 active" id="wishlist-button2">
                                      <span class="number-like"> ${mr.sFavorNum}</span> <!-- 즐겨찾기 개수 -->
                                    </button>
                                  </c:if>

                                  <!-- 로그인 아이디 ( 히든으로 바꿀 것)-->
                                  <input type="hidden" value='${sessionScope.loginId}' />
                                </div>
                                <!-- 사진 -->
                                <div class="card-media">
                                  <img src="../assets/images/box-item/image-box-32.jpg" alt="Image">
                                  <!--상세보기-->
                                  <div class="button-place-bid">
                                    <c:if test="${mr.sPw == ''}">
                                      <a id="sangsae" href="#" data-toggle="modal" data-target=.${mr.sTitle}
                                        class="sc-button style-place-bid style bag fl-button pri-3"><span>상세보기</span></a>
                                    </c:if>
                                    <c:if test="${mr.sPw != ''}">
                                      <a id="sangsae" href="#" data-toggle="modal" data-target=.${mr.sTitle}1
                                        class="sc-button style-place-bid style bag fl-button pri-3"><span>상세보기</span></a>
                                    </c:if>

                                  </div>
                                </div>
                                <!--방 이름-->
                                <div class="card-title">
                                  <h5>${mr.sTitle}</h5>
                                </div>
                                <div class="meta-info">
                                  <!-- 만든 사람-->
                                  <div class="author">
                                    <div class="info">
                                      <span>CREATE BY</span>
                                      <span class="pricing">${mr.mId}</span>
                                    </div>
                                  </div>
                                  <!-- 카테고리-->
                                  <div class="tags">${mr.sCategory}</div>
                                </div>
                              </div>
                            </div>
                          </div>
                          <!--끝-->
                        </c:forEach>

                      </div>

                      <div class="swiper-pagination mg-t-13"></div>
                      <div class="swiper-button-next btn-slide-next active"></div>
                      <div class="swiper-button-prev btn-slide-prev"></div>
                    </div>
                  </div>
                </div>
              </div>
            </section>


            <!-- 눌렀을때 상세보기 모달 시작-->
            <!-- 스터디룸 패스워드 존재하지 않을때 -->
            <c:forEach items="${myroom}" var="mr">
              <div class="modal fade popup ${mr.sTitle}" id="popup_bid0" tabindex="-1" role="dialog" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-body space-y-20 pd-40">
                      <h3>${mr.sTitle}</h3>
                      <p class="text-center">CREATE BY <span class="price color-popup">${mr.mId}</span>
                      </p>
                      <hr>
                      <p>스터디 에티켓</p>
                      <input type="text" class="form-control" placeholder="00.00 ETH" value="${mr.sComment}"
                        style="height: 200px;" readonly>
                      <hr>
                      <div class="hr"></div>
                      <div class="d-flex justify-content-between">
                        <p>카테고리</p>
                        <p class="text-right price color-popup">${mr.sCategory}</p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p>스터디 정원</p>
                        <p class="text-right price color-popup">${mr.sPeopleNum} / 4</p>
                      </div>
                      <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#popup_bid_success"
                        data-dismiss="modal" aria-label="Close">입장하기</a>
                    </div>
                  </div>
                </div>
              </div>


              <!-- 스터디룸 패스워드 존재할때 -->

              <div class="modal fade popup ${mr.sTitle}1" id="popup_bid1" tabindex="-1" role="dialog"
                aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                  <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-body space-y-20 pd-40">
                      <h3>${mr.sTitle}</h3>

                      <p class="text-center">CREATE BY <span class="price color-popup">${mr.mId}</span>
                      </p>
                      <hr>
                      <p>스터디 에티켓</p>
                      <input type="text" class="form-control" placeholder="00.00 ETH" value="${mr.sComment}"
                        style="height: 200px;" readonly>
                      <hr>
                      <div class="hr"></div>
                      <div class="d-flex justify-content-between">
                        <p>카테고리</p>
                        <p class="text-right price color-popup">${mr.sCategory}</p>
                      </div>
                      <div class="d-flex justify-content-between">
                        <p>스터디 정원</p>
                        <p class="text-right price color-popup">${mr.sPeopleNum} / 4</p>
                      </div>
                      <a href="#" id="pwData" class="btn btn-primary" aria-label="Close" data-toggle="modal"
                        data-target=".sPwConfirm1" data-dismiss="modal" data-num=${mr.sNum} data-pw=${mr.sPw}>입장하기</a>
                    </div>
                  </div>
                </div>
              </div>

            </c:forEach>

            <!-- 비밀번호 존재 시, 확인 모달-->

            <div class="modal fade popup sPwConfirm1" id="popup_bid2" tabindex="-1" role="dialog" aria-hidden="true">
              <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                  <div class="modal-body space-y-20 pd-40">
                    <p id="pwpw" style="text-align: center; font-weight: bold;">비밀번호를 입력해주세요.</p>
                    <input type="hidden" id="hiddenNum" name="sNum" value=sNum>
                    <input type="hidden" id="insertPw" name="sPw" value=sPw>
                    <input type="text" id="pwConfirm" name="s" value="">
                    <div class="alertDanger pwConfirmcss">비밀번호가 일치하지 않습니다.</div>
                    <a href="#" id="btnCustom" class="btn btn-primary">입장하기</a>
                  </div>
                </div>
              </div>
            </div>




            <!-- 랭킹목록 (슬라이더) -->
            <section class="tf-section category">
              <div class="themesflat-container">

                <div class="row">
                  <div class="col-md-12">
                    <div class="heading-live-auctions" style="margin-top: 26px;">
                      <h2 class="tf-title pb-39">스터디룸 랭킹</h2>
                    </div>
                  </div>
                  <div class="col-md-12">
                    <div class="swiper-container carousel11">
                      <div class="swiper-wrapper">
                        <c:forEach items="${scntSelect}" var="vo">
                          <div class="swiper-slide">
                            <div class="slider-item">
                              <div class="sc-categoty">
                                <div class="card-media">
                                  <img src="../assets/images/studyRoom/${vo.sFile}.png" alt="Image" />
                                </div>

                                <div class="card-title">
                                  <h4>${vo.sTitle}</h4>
                                </div>
                              </div>
                            </div>
                            <!-- item-->
                          </div>
                        </c:forEach>

                        <c:forEach items="${scntSelect}" var="vo">
                          <div class="modal fade popup ${vo.sTitle}" id="popup_bid0" tabindex="-1" role="dialog"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                              <div class="modal-content">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                                <div class="modal-body space-y-20 pd-40">
                                  <h3>${vo.sTitle}</h3>
                                  <p class="text-center">CREATE BY <span class="price color-popup">${vo.mId}</span>
                                  </p>
                                  <hr>
                                  <p>스터디 에티켓</p>
                                  <input type="text" class="form-control" placeholder="00.00 ETH" value="${vo.sComment}"
                                    style="height: 200px;" readonly>
                                  <hr>
                                  <div class="hr"></div>
                                  <div class="d-flex justify-content-between">
                                    <p>카테고리</p>
                                    <p class="text-right price color-popup">${vo.sCategory}</p>
                                  </div>
                                  <div class="d-flex justify-content-between">
                                    <p>스터디 정원</p>
                                    <p class="text-right price color-popup">${vo.sPeopleNum} / 4</p>
                                  </div>
                                  <a href="#" class="btn btn-primary" data-toggle="modal"
                                    data-target="#popup_bid_success" data-dismiss="modal" aria-label="Close">입장하기</a>
                                </div>
                              </div>
                            </div>
                          </div>


                          <!-- 스터디룸 패스워드 존재할때 -->

                          <div class="modal fade popup sPwConfirm" id="popup_bid1" tabindex="-1" role="dialog"
                            aria-hidden="true">
                            <div class="modal-dialog modal-dialog-centered" role="document">
                              <div class="modal-content">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                                <div class="modal-body space-y-20 pd-40">
                                  <h3>${mr.sTitle}</h3>
                                  <i class="fa-sharp fa-solid fa-key-skeleton"></i>
                                  <p class="text-center">CREATE BY <span class="price color-popup">${mr.mId}</span>
                                  </p>
                                  <hr>
                                  <p>스터디 에티켓</p>
                                  <input type="text" class="form-control" placeholder="00.00 ETH" value="${mr.sComment}"
                                    style="height: 200px;" readonly>
                                  <hr>
                                  <div class="hr"></div>
                                  <div class="d-flex justify-content-between">
                                    <p>카테고리</p>
                                    <p class="text-right price color-popup">${mr.sCategory}</p>
                                  </div>
                                  <div class="d-flex justify-content-between">
                                    <p>스터디 정원</p>
                                    <p class="text-right price color-popup">${mr.sPeopleNum} / 4</p>
                                  </div>
                                  <a href="#" id="pwData" class="btn btn-primary" aria-label="Close" data-toggle="modal"
                                    data-target=".sPwConfirm1" data-dismiss="modal" data-num=${mr.sNum}
                                    data-pw=${mr.sPw}>입장하기</a>
                                </div>
                              </div>
                            </div>
                          </div>

                        </c:forEach>

                        <!-- 비밀번호 존재 시, 확인 모달-->

                        <div class="modal fade popup sPwConfirm1" id="popup_bid2" tabindex="-1" role="dialog"
                          aria-hidden="true">
                          <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                              <div class="modal-body space-y-20 pd-40">
                                <p id="pwpw" style="text-align: center; font-weight: bold;">비밀번호를 입력해주세요.</p>
                                <input type="hidden" id="hiddenNum" name="sNum" value=sNum>
                                <input type="hidden" id="insertPw" name="sPw" value=sPw>
                                <input type="text" id="pwConfirm" name="s" value="">
                                <div class="alertDanger pwConfirmcss">비밀번호가 일치하지 않습니다.</div>
                                <a href="#" id="btnCustom" class="btn btn-primary">입장하기</a>
                              </div>
                            </div>
                          </div>
                        </div>




                        <!-- item-->


                      </div>
                    </div>
                    <div class="swiper-button-next btn-slide-next active"></div>
                    <div class="swiper-button-prev btn-slide-prev"></div>
                  </div>
                </div>
              </div>
            </section>



            <section id="sectionId" class="tf-section live-auctions style3 pad-b-54 no-pt-mb mobie-pb-70 mine">

              <div id="sectionTag" class="themesflat-container">
                <div class="row">

                  <div class="col-md-12" style="margin-top: 30px">
                    <div class="heading-live-auctions mg-bt-21" style="margin-bottom: -20px">
                      <h2 class="tf-title pad-l-7">전체 스터디룸</h2>
                    </div>
                  </div>

                  <div class="col-md-12">
                    <div class="tf-soft" style="display: inline-block; float: right; width: 12%; height: 60%;">

                      <select id="selectStudyRoom" style="width: 100%; height: 100%;">
                        <option class="selectOpt" hidden="" disabled="disabled" selected="selected" value=""
                          style="color: rgb(0, 0, 0);">태그선택</option>
                        <option class="selectOpt" id=" job" name="keyword">취업</option>
                        <option class="selectOpt" id="book" name="keyword">독서</option>
                        <option class="selectOpt" id="lan" name="keyword">어학</option>
                        <option class="selectOpt" id="teac" name="keyword">임용</option>
                        <option class="selectOpt" id="Offi" name="keyword">공무원</option>
                        <option class="selectOpt" id="stu" name="keyword">대학수능</option>
                        <option class="selectOpt" id="cer" name="keyword">자격증</option>
                        <option class="selectOpt" id="scstu" name="keyword">학교공부</option>
                        <option class="selectOpt" id="etc" name="keyword">기타</option>
                        <option class="selectOpt" id="cord" name="keyword">코딩</option>
                        <option class="selectOpt" id="Turn" name="keyword">이직</option>
                      </select>
                    </div>
                  </div>




                  <c:forEach items="${studyall}" var="vo">
                    <div id="tagListForm"
                      class="fl-item fl-item1 fl-item2 fl-item3 fl-item4 fl-item5 col-xl-3 col-lg-4 col-md-6 col-sm-6">
                      <div class="sc-card-product">
                        <form id="studyTagList">
                          <div class="price" style="margin-bottom: 7px; margin-top: -5px;">
                            <span id="countNum">스터디 정원 &nbsp;${vo.sPeopleNum}&nbsp;/&nbsp;4</span>
                          </div>
                          <div class="card-media">
                            <a href="item-details.html"><img src="../assets/images/studyRoom/${vo.sFile}.png" /></a>
                            <div class="button-place-bid">
                              <c:if test="${vo.sPw == ''}">
                                <a id="sangsae" href="#" data-toggle="modal" data-target=.${mr.sTitle}
                                  class="sc-button style-place-bid style bag fl-button pri-3"><span>상세보기</span></a>
                              </c:if>
                              <c:if test="${vo.sPw != ''}">
                                <a id="sangsae" href="#" data-toggle="modal" data-target=.${mr.sTitle}1
                                  class="sc-button style-place-bid style bag fl-button pri-3"><span>상세보기</span></a>
                              </c:if>
                            </div>
                            <button class="wishlist-button heart">
                              <span class="number-like"> 100</span>
                            </button>
                          </div>
                          <div class="card-title">
                            <h5 class="style2">
                              <a href="item-details.html">${vo.sTitle}</a>
                            </h5>
                            <div class="tags">${vo.sCategory}</div>
                          </div>
                          <div class="meta-info">
                            <div class="author" id="creatby">
                              <span>CREATE BY&nbsp; &nbsp; </span>
                              <span class="pricing" id="createMid">${vo.mId}</span>
                            </div>
                          </div>

                        </form>
                      </div>
                    </div>
                  </c:forEach>

                  <div class="col-md-12 wrap-inner load-more text-center mg-t-4">
                    <a href="#" id="loadmore" class="sc-button loadmore fl-button pri-3"><span>더보기</span></a>
                  </div>
                </div>
              </div>
            </section>








            <!-- Footer -->
            <jsp:include page="../include/footer.jsp"></jsp:include> <!-- header include -->

            <!-- Bottom -->
          </div><!-- /#bottom -->

        </div>
        <!-- /#page -->
        <!-- /#wrapper -->

        <a id="scroll-top"></a>




      </body>

  </html>