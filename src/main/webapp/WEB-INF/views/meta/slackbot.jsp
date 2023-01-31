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

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png">

</head>


<body class="body header-fixed is_dark connect-wal">

    <div id="wrapper">
        <div id="page" class="clearfix">
          <!-- header 넣음 -->
          <jsp:include page="../include/header.jsp"></jsp:include> 
          <!-- 메타버스 시작 -->
            <section class="tf-item tf-section">
                <div class="themesflat-container" style="left: 10%;">
                    
                
                    <iframe src="http://app.slack.com/client/T04K98KG26R/C04K5JX8NDU" width="80%"  height="700" frameborder="1" scrolling="yes">
                    </iframe>
                    

                    <div class="button-place-bid">
                  
                          <a id="sangsae" href="#" data-toggle="modal" data-target=.sPwConfirm
                            class="sc-button style-place-bid style bag fl-button pri-3"><span>상세보기</span></a>
                     
                      </div>
           


                      <div class="modal fade popup sPwConfirm" id="popup_bid1" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                          <div class="modal-content">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                              <span aria-hidden="true">&times;</span>
                            </button>
                            <div class="modal-body space-y-20 pd-40">
                              <h3><a href="https://howstudy.slack.com/archives/C04K5JX8NDU"></h3>
                              
                              <p class="text-center">CREATE BY <span class="price color-popup">${mr.mId}</span>
                              </p>
                              <hr>
                              <p></p>
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



                </div>
            </section>
            <!-- 메타버스 끝 -->

<!-- Footer 넣음-->
<jsp:include page="../include/footer.jsp"></jsp:include>
        </div>
        <!-- /#page -->
   
        

    </div>

    <!-- /#wrapper -->

    <a id="scroll-top"></a>

    

</body>

</html>