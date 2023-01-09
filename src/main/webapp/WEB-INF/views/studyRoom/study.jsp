<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>Axies | NFT Marketplace HTML Template</title>

    <meta name="author" content="themesflat.com">

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">

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
                        <c:if test="${sessionScope.loginId!=null}">
                          <%=session.getAttribute("loginId")%> 님의 스터디룸
                          <a href="#"><img src="../assets/images/icon/plus.png" alt="Image" style="width: 4.5%;position: relative;top: -3px;margin-left: 7px;"></a>
                        </c:if>
                      
                      </h2>
    
                        
                    </div> 
    
                  </div>
    
                  <!-- 시작 -->
    
                  <section class="tf-section live-auctions">
                    <div class="themesflat-container">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="swiper-container carousel-overflow2 auctions">
                                    <div class="swiper-wrapper">
                                      <!-- 한 블럭 시작 -->
                                        <div class="swiper-slide">
                                            <div class="slider-item">										
                                                <div class="sc-card-product explode style2">
                                                    <div class="type-title">
                                                        <h3>방 제목 : 집가자</h3>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="../assets/images/avatar/avt-1.jpg" alt="Image"></a>
                                                    </div>                                      
                                                </div>  	
                                            </div><!-- item-->
                                        </div>
                                        <!-- 한 블럭 끝 -->
                                        <!-- 한 블럭 시작 -->
                                        <div class="swiper-slide">
                                          <div class="slider-item">										
                                              <div class="sc-card-product explode style2">
                                                  <div class="type-title">
                                                      <h3>방 제목 : 집가자1</h3>
                                                  </div>
                                                  <div class="card-media">
                                                      <a href="item-details.html"><img src="../assets/images/avatar/avt-1.jpg" alt="Image"></a>
                                                  </div>                                      
                                              </div>  	
                                          </div><!-- item-->
                                      </div>
                                      <!-- 한 블럭 끝 -->
                                      <!-- 한 블럭 시작 -->
                                      <div class="swiper-slide">
                                        <div class="slider-item">										
                                            <div class="sc-card-product explode style2">
                                                <div class="type-title">
                                                    <h3>방 제목 : 집가자2</h3>
                                                </div>
                                                <div class="card-media">
                                                    <a href="item-details.html"><img src="../assets/images/avatar/avt-1.jpg" alt="Image"></a>
                                                </div>                                      
                                            </div>  	
                                        </div><!-- item-->
                                      </div>
                                      <!-- 한 블럭 끝 -->
                                      <!-- 한 블럭 시작 -->
                                      <div class="swiper-slide">
                                        <div class="slider-item">										
                                            <div class="sc-card-product explode style2">
                                                <div class="type-title">
                                                    <h3>방 제목 : 집가자2</h3>
                                                </div>
                                                <div class="card-media">
                                                    <a href="item-details.html"><img src="../assets/images/avatar/avt-1.jpg" alt="Image"></a>
                                                </div>                                      
                                            </div>  	
                                        </div><!-- item-->
                                      </div>
                                      <!-- 한 블럭 끝 -->
                                      <!-- 한 블럭 시작 -->
                                      <div class="swiper-slide">
                                        <div class="slider-item">										
                                            <div class="sc-card-product explode style2">
                                                <div class="type-title">
                                                    <h3>방 제목 : 집가자2</h3>
                                                </div>
                                                <div class="card-media">
                                                    <a href="item-details.html"><img src="../assets/images/avatar/avt-1.jpg" alt="Image"></a>
                                                </div>                                      
                                            </div>  	
                                        </div><!-- item-->
                                      </div>
                                      <!-- 한 블럭 끝 -->
                                    </div>
                                    <div class="swiper-button-next btn-slide-next active"></div>
                    <div class="swiper-button-prev btn-slide-prev"></div>
                                </div>
                              </div>
                            </div>
                    </div>
                </section>

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



        <section class="tf-section live-auctions style3 pad-b-54 no-pt-mb mobie-pb-70">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12" style="margin-top: 30px">
                <div class="heading-live-auctions mg-bt-21" style="margin-bottom: -20px">
                  <h2 class="tf-title pad-l-7">선호 스터디룸</h2>
                </div>
              </div>
              <div class="col-md-12">
                <div class="tf-soft">
                  <div class="soft-right">
                    <div class="dropdown">
                      <button
                        class="btn btn-secondary dropdown-toggle"
                        type="button"
                        id="dropdownMenuButton4"
                        data-toggle="dropdown"
                        aria-haspopup="true"
                        aria-expanded="false"
                        style="margin-left: 950%"
                      >
                        <svg
                          width="24"
                          height="24"
                          viewBox="0 0 24 24"
                          fill="none"
                          xmlns="http://www.w3.org/2000/svg"
                        >
                          <path
                            d="M3 7H21"
                            stroke="white"
                            stroke-width="1.5"
                            stroke-linecap="round"
                          />
                          <path
                            d="M6 12H18"
                            stroke="white"
                            stroke-width="1.5"
                            stroke-linecap="round"
                          />
                          <path
                            d="M10 17H14"
                            stroke="white"
                            stroke-width="1.5"
                            stroke-linecap="round"
                          />
                        </svg>
                        <span>태그설정</span>
                      </button>
                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <h6>분야</h6>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>어학</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer active" href="#">
                            <span>자격증</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>취미</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>자기계발</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>독서</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>코딩</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>임용</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>공무원</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                        <a href="#" class="dropdown-item">
                          <div class="sort-filer" href="#">
                            <span>학교</span>
                            <i class="fal fa-check"></i>
                          </div>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
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
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-4.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-7.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item8.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-9.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/image-box-11.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item8.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
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
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-4.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-2.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item-7.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="fl-item col-xl-3 col-lg-4 col-md-6 col-sm-6">
                <div class="sc-card-product">
                  <div class="card-media">
                    <a href="item-details.html"
                      ><img src="../assets/images/box-item/card-item8.jpg" alt="Image"
                    /></a>
                    <button class="wishlist-button heart">
                      <span class="number-like"> 100</span>
                    </button>
                  </div>
                  <div class="card-title">
                    <h5 class="style2">
                      <a href="item-details.html">자율 스터디룸</a>
                    </h5>
                    <div class="tags">어학</div>
                  </div>
                  <div class="meta-info">
                    <div class="author">
                      <div class="avatar">
                        <img src="../assets/images/avatar/avt-1.jpg" alt="Image" />
                      </div>
                      <div class="info">
                        <span>Owned By</span>
                        <h6><a href="author02.html">SalvadorDali</a></h6>
                      </div>
                    </div>
                    <div class="price">
                      <i class="fa-solid fa-user"></i>
                      <span class="study-item-info-personnel present">&nbsp&nbsp0&nbsp/&nbsp</span>
                      <span class="study-item-info-personnel maximum">&nbsp4 </span>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-md-12 wrap-inner load-more text-center mg-t-4">
                <a href="#" id="loadmore" class="sc-button loadmore fl-button pri-3"
                  ><span>더보기</span></a
                >
              </div>
            </div>
          </div>
        </section>

      <section class="tf-section live-auctions top-picks style3 home7 mobie-pb-70">
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="heading-live-auctions mg-bt-24">
                  <h2 class="tf-title">전체 스터디룸</h2>
                  <p class="roomlist">총 개 스터디 </p>
                </div>
              </div>

              <div class="col-md-12">
                <div class="top-pick-box">
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>

                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
                  <div class="sc-card-product menu_card style-h7">
                    <div class="meta-info style">
                      <div class="author">
                        <div class="tags">자격증</div>
                      </div>
                      <button class="wishlist-button heart">
                        <span class="number-like"> 100</span>
                      </button>
                    </div>
                    <div class="card-media">
                      <a href="item-details.html"
                        ><img src="../assets/images/box-item/image-box-46.jpg" alt="Image"
                      /></a>
                      <div class="button-place-bid">
                        <a
                          href="#"
                          data-toggle="modal"
                          data-target="#popup_bid"
                          class="sc-button style-place-bid style bag fl-button pri-3"
                          ><span>Place Bid</span></a
                        >
                      </div>
                    </div>
                    <div class="card-title">
                      <h5><a href="item-details.html">자격증 합격 스터디룸</a></h5>
                    </div>
                    <div class="card-bottom">
                      <a
                        href="#"
                        data-toggle="modal"
                        data-target="#popup_bid"
                        class="sc-button style bag fl-button pri-3"
                        ><span>Place Bid</span></a
                      >
                      <a href="activity1.html" class="view-history reload">View History</a>
                    </div>
                  </div>
              <div class="col-md-12 wrap-inner load-more text-center mg-t17">
                <a href="#" class="sc-button loadmore fl-button pri-3"><span>더보기</span></a>
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