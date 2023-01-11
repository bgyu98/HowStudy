
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지 -->
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

    <!-- Reponsive -->
    <link rel="stylesheet" type="text/css" href="../assets/css/responsive.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/flags.css">

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
                 
                    <%=session.getAttribute("loginId")%> 님의 스터디룸
                    <a href="../studyRoom/createroom"><img src="../assets/images/icon/plus.png" alt="Image" style="width: 4.5%;position: relative;top: -3px;margin-left: 7px;"></a>
                 
                </h2>
              </div> 
            </div>
              </div>
              </div>
                <!-- 사진 ........ -->
              <c:if test="${sessionScope.loginId==null}">
              <div class="image" style="display: flex;flex-direction: column;background-image: url('../assets/img/curved-images/gray.jpg');width: 70%;height: 231px;margin: auto;display: block;"  >
                <p style="text-shadow: 1px 1px 2px color = white; padding-top: 85px; text-align:center;">내가 만든 스터디룸이 등록됩니다. <br> 플러스 버튼을 눌러 스터디룸을 만들어 보세요!</p>
              </div>
            </c:if>

            <c:if test="">
              <div class="image" style="display: flex;flex-direction: column;background-image: url('../assets/img/curved-images/gray.jpg');width: 70%;height: 231px;margin: auto;display: block;"  >
                <p style="text-shadow: 1px 1px 2px color = white; padding-top: 85px; text-align:center;">내가 만든 스터디룸이 등록됩니다. <br> 플러스 버튼을 눌러 스터디룸을 만들어 보세요!</p>
              </div>
            </c:if>

         
            </section>


            
            


            <section class="tf-section live-auctions home7">
              <div class="themesflat-container">
                  <div class="row">
                      <div class="col-md-12">
                          <div class="swiper-container show-shadow carousel10 pad-t-17 auctions">
                              <div class="swiper-wrapper">
                                 <c:forEach items="${myroom}" var = "mr">
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
                                            <input type="hidden" value = "${mr.sNum}"/>
                                            
                                            <c:set var="cf" value="${mr.check}" />
                                              <c:if test = "${cf eq 0}">
                                            <!-- 하트 갯수-->
                                            <button class="wishlist-button heart">
                                              <span class="number-like">${mr.sFavorNum}</span>
                                            </button>
                                              </c:if>
                                              <c:if test = "${cf eq 1}">
                                                <button class="wishlist-button2 public heart mg-t-6 active" id="wishlist-button2">
                                                  <span class="number-like"> ${mr.sFavorNum}</span> <!-- 즐겨찾기 개수 -->
                                              </button>
                                              </c:if> 

                                            <!-- 로그인 아이디 ( 히든으로 바꿀 것)-->
                                            <input type="hidden" value = '${sessionScope.loginId}'/>
                                                </div>
                                                  <!-- 사진 -->
                                              <div class="card-media">
                                                 <img src="../assets/images/box-item/image-box-32.jpg" alt="Image">
                                                  <!--상세보기-->
                                                  <div class="button-place-bid">
                                                      <a id="sangsae" href="#" data-toggle="modal" data-target=.${mr.sTitle} class="sc-button style-place-bid style bag fl-button pri-3"><span>상세보기</span></a>
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
                                                  <div class="tags" >${mr.sCategory}</div>
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
  <c:forEach items="${myroom}" var = "mr">
  <div class="modal fade popup ${mr.sTitle}" id="popup_bid" tabindex="-1" role="dialog" aria-hidden="true">
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
                <input type="text" class="form-control"
                    placeholder="00.00 ETH" value="${mr.sComment}"  style="height: 200px;" readonly >
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
             
                <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#popup_bid_success" data-dismiss="modal" aria-label="Close">입장하기</a>
            </div>
        </div>
    </div>
</div>  
</c:forEach>

 <!-- 눌렀을때 상세보기 모달 끝-->









                <!-- 랭킹목록 (슬라이더) -->
        <section class="tf-section category">
          <div class="themesflat-container">
          
            <div class="row" >
              <div class="col-md-12">
                <div class="heading-live-auctions" style="margin-top: 26px;">
                  <h2 class="tf-title pb-39">스터디룸 랭킹</h2>
                </div>
              </div>
              <div class="col-md-12">
                <div class="swiper-container carousel11">
                  <div class="swiper-wrapper">
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category1.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Digital Art</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category2.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Style</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category3.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Music</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category4.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Domain Name</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category5.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Sports</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category6.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Utilities</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category1.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Digital Art</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category2.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Style</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category3.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Music</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category4.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Domain Name</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category5.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Sports</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                    <div class="swiper-slide">
                      <div class="slider-item">
                        <div class="sc-categoty">
                          <div class="card-media">
                            <img src="../assets/images/box-item/img_category6.jpg" alt="Image" />
                          </div>
                          <div class="card-title">
                            <h4>Utilities</h4>
                          </div>
                        </div>
                      </div>
                      <!-- item-->
                    </div>
                  </div>
                </div>
                <div class="swiper-button-next btn-slide-next active"></div>
                <div class="swiper-button-prev btn-slide-prev"></div>
              </div>
            </div>
          </div>
        </section>



        <section id="tf-sectionId" class="tf-section live-auctions style3 pad-b-54 no-pt-mb mobie-pb-70 mine">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12" style="margin-top: 30px">
                <div class="heading-live-auctions mg-bt-21" style="margin-bottom: -20px">
                  <h2 class="tf-title pad-l-7">전체 스터디룸</h2>
                </div>
              </div>
              <div class="col-md-12">
                <div class="tf-soft" style="display: inline-block; float: right;">
                  <div class="seclect-box style-1">
                    <div id="item_category" class="dropdown" >
                      <a href="#" class="btn-selector nolink" >태그설정</a>
                      <form id="selectStudyRoom" action="selectStudyRoom" method="post">
                        <ul id="selectTag">
                          <li><span id="job" name="keyword">취업</span></li>
                          <li><span id="book" name="keyword">독서</span></li>
                          <li><span id="lan" name="keyword">어학</span></li>
                          <li><span id="teac" name="keyword">임용</span></li>
                          <li><span id="Offi" name="keyword">공무원</span></li>
                          <li><span id="stu" name="keyword">대학수능</span></li>
                          <li><span id="cer" name="keyword">자격증</span></li>
                          <li><span id="scstu" name="keyword">학교공부</span></li>
                          <li><span id="etc" name="keyword">기타</span></li>
                          <li><span id="cord" name="keyword">코딩</span></li>
                          <li><span id="Turn" name="keyword">이직</span></li>
                        </ul>
                    </form>
                    </div>
                  </div>
                </div>
              </div>
              
            <c:forEach items="${tagList}" var="vo">
              <form id="studyTagList">
                <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                  <div class="sc-card-product">
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/card-item-3.jpg" alt="Image"
                      /></a>
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
                      <div class="author">
                        <div class="info">
                          <h6><a href="author02.html">${vo.sComment}</a></h6>
                        </div>
                      </div>
                      <div class="price">
                        <span>총 인원수 : ${vo.sPeopleNum}</span>
                      </div>
                    </div>
                    <div class="card-bottom">
                      <a href="activity1.html" class="view-history reload">View</a>
                    </div>
                  </div>
                </div>
            </form>
            </c:forEach>
             

              <div class="col-md-12 wrap-inner load-more text-center mg-t-4">
                <a href="#" id="loadmore" class="sc-button loadmore fl-button pri-3"
                  ><span>더보기</span></a
                >
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

<script>
 
 $('#selectStudyRoom ul li').click(function(){
            var keyword = this.innerText
            alert("keyword = " + keyword)
           

        });

</script>

<script>
$('#selectStudyRoom #selectTag li').click(function(url){ 
  var keyword = this.innerText 
  alert(this.innerText);
  
  $.ajax({
    url: '../studyRoom/study',
    type: 'post',
    data: JSON.stringify({sCategory : keyword}),
    contentType: 'application/json',
    success: function (data){
        alert("데이터전송 성공:" + data) + ">";
        var form = "" ;
        for(var d of data){
											
                       form = "<div class='fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6'>";
              
                        form += "<div class='sc-card-product'>";
                        form += "<div class='card-media'>";
                        form += "<a href='item-details.html'/><img src=''../assets/images/box-item/card-item-3.jpg' alt='Image'/></a>";
                        form += "<button class='wishlist-button heart'><span class='number-like'> 100</span></button>";
                        form +=	"</div>";
                        form += "<div class='card-title'>";
                        form += "<h5 class='style2'><a href='item-details.html'>"+d.sTitle+"</a></h5>";
                        form += "<div class='tags'>"+d.sCategory+"</div>";
                        form += "</div>";
                        form += " <div class='meta-info'>";
                        form += "<div class='author'>";
                        form += "<div class='info'>";
                        form += "<h6><a href='author02.html'>"+d.sComment+"</a></h6>";
                        form += "</div>";
                        form += "</div>";
                        form += "<div class='price'>";
                        form += "<span>총 인원수 : "+d.sPeopleNum+"</span>";
                        form += "</div>";
                        form += "</div>";
                        form += "<div class='card-bottom'>";
                        form += "<a href='activity1.html' class='view-history reload'>View</a>";
                        form += "</div>";
                        form += "</div>";
                        form += "</div>";
                          
                        form = "";
                        
                      }
                      $('#tf-sectionId').append(form);
                                  
                    },
    error: function (request,status, error){
      alert("에러");
      console.log("상태코드: " + request.status);
			console.log("메세지: " + request.responseText);
			console.log("에러설명: " + error);
    }
  });
});
</script>



  
</body>

</html>