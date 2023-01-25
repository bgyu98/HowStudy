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
    <link rel="stylesheet" type="text/css" href="../assets/css/likeTag.css">


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
                                <h1 class="heading text-center">신고</h1>
                            </div>
                            <div class="breadcrumbs style2">
                                <ul>
                                  <li><a href="">마이페이지</a></li>
                                  <li>신고</li>
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
                                                <form id="insertReport" action="insertReport" enctype="multipart/form-data" method="post">
                                                    <h2 class="title-create-item">신고 접수하기</h2><br/><br/>
                                                        
                                                    <!-- <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}"> -->
                                                    <h4 class="title-create-item">제목</h4>
                                                    <input type="text" placeholder="제목을 입력 해 주세요" name="rTitle" id="rTitle">

                                                    <h4 class="title-create-item">파일 첨부</h4>
                                                    <label class="uploadFile">
                                                        <span class="filename">PNG, JPG, GIF, WEBP 또는 MP4. 최대 50mb.</span>
                                                        <input type="file" multiple="multiple" class="inputfile" name="file" id="rFile">
                                                    </label>

                                                    
                                                    <div style="display : inline-block; text-align: left;">
                                                    <h4 class="title-create-item">분류</h4>
                                                        <div class="inner-row-form style-2">
                                                            <div class="seclect-box">
                                                                <div id="item-create" class="dropdown">
                                                                    <a href="#" class="btn-selector nolink" >선택</a>
                                                                    <input type="hidden" name="rClass" id="rClass" value="">
                                                                    <ul class="cate">
                                                                        <li><span>비속어 사용</span></li>
                                                                        <li><span>음란 행위</span></li>
                                                                        <li><span>분위기 망침</span></li>
                                                                        <li><span>기타</span></li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div><br/><br/>
                                                    </div><!-- 올라가는거 막기 =>> --><div style="clear:both"></div>
                                                    
                                                    
                                                        <div style="float: left; width: 48%;">
                                                            <h4 class="title-create-item">작성자 아이디</h4>
                                                            <input type="text" name="mId" id="mId" value="${sessionScope.loginId}" readonly>
                                                        </div>
                                                        <div style="float: right; width: 48%;">
                                                            <h4 class="title-create-item">신고할 아이디</h4>
                                                            <input type="text" name="rOpponent" id="rOpponent">
                                                        </div><div style="clear:both"></div>
                                                    

                                                    <div><h4 class="title-create-item">신고 내용</h4>
                                                    <textarea placeholder="신고 내용을 적어주세요!" name="rReason" style="height: 240px;" id="rReason"></textarea></div>
                                                    
                                                    
                                                    <button class="tf-button-submit mg-t-15 insertReport" type="button" >
                                                        신고 등록
                                                    </button>  <div style="clear:both">
                                                      
                                                    </div>
                                                </form>
                                                
                                        </div>
                                        
                                        
                                    </div>
                                </div>
                             </div>
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
         
    <!-- /#wrapper -->

    <a id="scroll-top"></a>
    <script src="../assets/js/likeTag.js"></script>

    <script>
        //분류 설정해주기
        $('.cate > li').click(function(){
            var is = $(this).text();
            $('#rClass').val(is);

        });


        // 알럿창 스윗알럿
        $('.insertReport').click(function(){
            
            Swal.fire({
                icon: 'warning',
                title: '정말 신고하시겠습니까?',
                text: '신고하시면 취소가 불가하며, 허위 신고시 제재를 받을 수 있습니다.',

                showCancelButton: true, // cancel버튼 보이기. 기본은 원래 없음
                confirmButtonColor: '#3085d6', // confrim 버튼 색깔 지정
                cancelButtonColor: '#d33', // cancel 버튼 색깔 지정
                confirmButtonText: '확인', // confirm 버튼 텍스트 지정
                cancelButtonText: '취소', // cancel 버튼 텍스트 지정
                
                reverseButtons: false, // 버튼 순서 거꾸로

            }).then(result => {
                if(result.isConfirmed){
                    Swal.fire('신고가 완료되었습니다.', '신고 내역을 확인하시려면 마이페이지 > 신고 내역 에서 확인해주세요.', 'success')
                    $('.swal2-confirm').click(function(){
                        $('#insertReport').submit();
                    })
                }else if(result.isDismissed){
                    Swal.fire('취소하였습니다.', '', 'error')
                }
            })
            
        });

    </script>

</body>

</html>