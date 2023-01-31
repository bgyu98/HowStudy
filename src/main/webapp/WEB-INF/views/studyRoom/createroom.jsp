<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<!--<![endif]-->
<!-- 한글 깨짐 방지-->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<head>
    <% String pjName = "/howStudy"; %>
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
                                <h1 class="heading text-center">스터디룸 생성</h1>
                            </div>
                            <div class="breadcrumbs style2">
                                <ul>
                                  <li><a href="">스터디룸</a></li>
                                  <li>스터디룸 생성</li>
                                </ul>
                              </div>
                        </div>
                    </div>
                </div>                    
            </section>

            <div class="tf-create-item tf-section">
                <div class="themesflat-container">
                   
                         <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                             <div class="form-create-item">
                                <div class="flat-tabs tab-create-item">
                                    <div class="content-tab">
                                        <div class="content-inner">
                                                <form action="insertRoom" enctype="multipart/form-data" method="post" id="roomForm">
                                                    <h2 class="title-create-item">스터디 만들기</h2><div><br/><br/>
                                                        
                                                    <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}">
                                                    <h4 class="title-create-item">스터디 이름</h4>
                                                    <input type="text" placeholder="제목을 입력 해 주세요" name="sTitle" id="sTitle">
                                                    <p id="chkRoom" name="chkRoom" size="2" style="font-size: small;"></p>

                                                    <h4 class="title-create-item">Upload file</h4>
                                                    <label class="uploadFile">
                                                        <span class="filename">PNG, JPG, GIF, WEBP or MP4. Max 200mb.</span>
                                                        <input type="file" class="inputfile form-control" name="file" id="file">
                                                    </label>
                                                    <p id="chkRoom1" name="chkRoom1" size="2" style="font-size: small;"></p>

                                                    
                                                    <div style="display : inline-block; text-align: left;">
                                                    <h4 class="title-create-item">카테고리</h4>
                                                        <div class="inner-row-form style-2" id="foc">
                                                            <div class="seclect-box">
                                                                <div id="item-create" class="dropdown">
                                                                    <a href="#" class="btn-selector nolink" id="ct" >선택</a>
                                                                    <input type="hidden" name="sCategory" id="sCtaegoly" value="">

                                                                    <ul class="cate">
                                                                        <li><span>취업</span></li>
                                                                        <li><span>독서</span></li>
                                                                        <li><span>어학</span></li>
                                                                        <li><span>임용</span></li>
                                                                        <li><span>공무원</span></li>
                                                                        <li><span>대학수능</span></li>
                                                                        <li><span>자격증</span></li>
                                                                        <li><span>학교공부</span></li>
                                                                        <li><span>기타</span></li>
                                                                        <li><span>코딩</span></li>
                                                                        <li><span>이직</span></li>
                                                                        <li><span>자기계발</span></li>
                                                                    </ul>
                                                                </div><p id="chkRoom2" name="chkRoom2" size="2" style="font-size: small;"></p>
                                                            </div>
                                                        </div><br/><br/>
                                                    </div>
                                                    <div style="display : inline-block; float: left;"></div>
                                                    <h4 class="title-create-item">참여인원</h4>
                                                        <div class="inner-row-form style-2">
                                                            <div class="seclect-box">
                                                                <div id="item-create2" class="dropdown">
                                                                    <a href="#" class="btn-selector nolink" id="num">선택</a>
                                                                    <input type="hidden" name="sPeopleNum" id="sPeopleNum" value="">
                                                                   
                                                                    <ul class="peopleNum">
                                                                        <li><span>1 명</span></li>
                                                                        <li><span>2 명</span></li>
                                                                        <li><span>3 명</span></li>
                                                                        <li><span>4 명</span></li>
                                                                    </ul>
                                                                </div><p id="chkRoom3" name="chkRoom3" size="2" style="font-size: small;"></p>
                                                            </div>
                                                        </div><br/> 
                                                    </div>
                                                    
                                                    <h4 class="title-create-item">스터디 에티켓</h4>
                                                    <textarea placeholder="“스터디룸의 에티켓을 정하여 입력해 주세요”" name="sComment" style="height: 240px;" id="sComment"></textarea>
                                                    <div class="row-form style-2">
                                                        <div class="inner-row-form toggle">
                                                            <h4 class="title-create-item toggle">비밀번호</h4>
                                                            <div class="toggle" style="margin-left: 26px; margin-bottom:-10%;">
                                                                <input type="checkbox" name="toggle1" id="toggle1" >
                                                                <label for="toggle1">스위치</label>
                                                            </div>
                                                        </div>
                                                        <input type="text" id="pass" name="sPw" style="display:none;width:300px;" placeholder="비밀번호를 입력해주세요." >
                                                    </div>
                                                    <button id="btn" name="btn" >등록</button>
                                                </form>
                                                
                                        </div>
                                        
                                        
                                    </div>
                                </div>
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
         <!-- Modal Popup Bid -->
         <div class="modal fade popup" id="popup_bid_success" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-body space-y-20 pd-40">
                        <h3 class="text-center">Your Bidding
                            Successfuly Added</h3>
                        <p class="text-center">your bid <span class="price color-popup">(4ETH) </span> has been listing to our database</p>
                        <a href class="btn btn-primary"> Watch the listings</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade popup" id="popup_bid" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="modal-body space-y-20 pd-40">
                        <h3>Place a Bid</h3>
                        <p class="text-center">You must bid at least <span class="price color-popup">4.89 ETH</span>
                        </p>
                        <input type="text" class="form-control"
                            placeholder="00.00 ETH">
                        <p>Enter quantity. <span class="color-popup">5 available</span>
                        </p>
                        <input type="text" class="form-control quantity" value="1">
                        <div class="hr"></div>
                        <div class="d-flex justify-content-between">
                            <p> You must bid at least:</p>
                            <p class="text-right price color-popup"> 4.89 ETH </p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p> Service free:</p>
                            <p class="text-right price color-popup"> 0,89 ETH </p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p> Total bid amount:</p>
                            <p class="text-right price color-popup"> 4 ETH </p>
                        </div>
                        <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#popup_bid_success" data-dismiss="modal" aria-label="Close"> Place a bid</a>
                    </div>
                </div>
            </div>
        </div> 
    </div>
    <!-- /#wrapper -->

    <a id="scroll-top"></a>
    <script src="../assets/js/studyRoom.js"></script>

</body>

</html>