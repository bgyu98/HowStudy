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

                   <!-- 메인 페이지 시작 -->
        
        <section class="flat-title-page inner">
            <div class="overlay"></div>
            <div class="themesflat-container">
              <div class="row">
                <div class="col-md-12">
                  <div class="page-title-heading mg-bt-12">
                    <h1 class="heading text-center">랭킹</h1>
                  </div>
                  <div class="breadcrumbs style2">
                    <ul>
                      <li><a href="">공부기록</a></li>
                      <li>랭킹</li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </section>




            <section class="tf-section tf-rank">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-ranking">
                                <div class="flex th-title">
                                    <div class="column1">
                                        <h3 style="text-align: center;">순위</h3>
                                    </div>
                                    <div class="column">
                                    </div>
                                    <div class="column">
                                    <h3 style="margin-left: 70px;">ID</h3>
                                    </div>
                                    <div class="column">
                                    <h3></h3>
                                    </div>
                                    <div class="column">
                                    <h3></h3>
                                    </div>
                                    <div class="column">
                                    <h3>시간</h3>
                                    </div>
                                    <div class="column">
                                    <h3></h3>
                                    </div>
                                </div>
                            
                                <c:forEach items="${ranking}" var="rk">
                                <!--한 블럭 시작-->
                                <div class="fl-blog fl-item2">
                                    <div class="item flex">
                                        <div class="infor-item flex column1">
                                            <div class="media">
                                               
                                            </div>
                                            <div class="content-collection pad-t-4">
                                                <h5 class="title mb-15">${rk.rank}</h5>
                                                <div class="author flex">
                                                    <div class="author-avatar">
                                                       
                                                        <div class="badge"><i class="ripple"></i></div>
                                                    </div>
                                                    <div class="content">
                                                     
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="column">
                                       
                                        </div>
                                        
                                        <div class="column td2">
                                            <span style="color: white;">${rk.mId}</span>
                                        </div>
                                  
                                        <div class="column td4">
                                            <span></span>
                                        </div>
                                        <div class="column td5">
                                            <span>${rk.sTime}</span>
                                        </div>
                                  
                                    </div>
                                </div>
                                  <!--한블럭 끝-->
                                    </c:forEach>
                            </div>


                            <div class="col-md-12 wrap-inner load-more text-center mg-t16">
                                <a href="#" id="loadmore" class="sc-button loadmore fl-button pri-3"><span>더보기</span></a>
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