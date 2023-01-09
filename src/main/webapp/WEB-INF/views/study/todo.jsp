<!DOCTYPE html>
<!--[if IE 8]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <link rel="stylesheet" type="text/css" href="../assets/css/todo.css">
    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="assets/icon/Favicon.png">
    <link rel="apple-touch-icon-precomposed" href="assets/icon/Favicon.png">

</head>

<body class="body header-fixed is_dark">


    <div id="wrapper">
        <div id="page" class="clearfix">
            <!-- header 넣음 -->
          <jsp:include page="../include/header.jsp"></jsp:include> 
            <!-- Header -->      
            
            <section class="tf-item tf-section">
                <div class="themesflat-container">
                    <div class="row">
                        <div class="col-box-10">

                        </div>
                        
                        <div class="col-box-83">
                            <div class="flat-tabs items">
                                <ul class="menu-tab">
                                    <li><a href="record"><span>RECORD</span></a></li>
                                    <li><a href="ranking"><span>RANKING</span></a></li>
                                    <li><a href="todo"><span>TO-DO</span></a></li>
                                    <li><a href="note"><span>NOTE</span></a></li>
                                </ul>
                            
                                <div class="content-tab">
                                    <div class="content-inner">
                                        
                                        <div class="content-item">
                                            <div class="sc-box-icon no-box-shadown mgbt-0 none">
                                            </div>
                                            
                                            <!-- 여기임 -->
                                            <form action="insertTodo" id="todoForm" method="post">
                                                <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}">
                                              <div id="myDIV" class="header">
                                                <h1>My To Do List</h1><br/><br/><br/>
            
                                                <input id="tText" type="text" style="background: #fff;" name="todos"  placeholder="Title...">
                                                <button id="addBtn" class="btn">등록</button>                  
                                              </div>
                                            
                                              
                                              <ul id="myUL">
                                                <c:forEach items="${selectTodo}" var="temp">
                                                
                                                <li class="a" value="${temp.hSeq}"><span>${temp.todos}</span><span>${temp.todos}</span><span class='date'>${temp.todoTime}</span></li>
                                                </c:forEach>
                                              </ul>
                                        
                                              <div class="button_area">
            
                                                <div style="text-align: center;">
                                                  <button id="updateTodo" class="btn">완료</button>
                                                  <button  id="deleteTodo" class="btn">삭제</button>
                                                </div>
            
                                              </div>
                                           
                                            </form>

                                            <form action="selectCompletion" id="completion" method="post" style="margin-left: 22px;">
                                            <!-- 오른쪽 박스 -->
                                            <div>
                                              <div id="myDIV2" class="header2">
                                                <h1>Complete To Do List</h1>
                                              </div>
                                              <input type="hidden" id="mId" name="mId" value="${sessionScope.loginId}">
                                              <ul id="myUL2">
                                                <c:forEach items="${completion}" var="com">
                                                
                                                <li class="a checked" value="${com.hSeq}"><span>${com.todos}</span><span class='date'>${com.todoTime}</span></li>
                                                </c:forEach>
                                              </ul>
                                              </ul>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="content-inner">
                                        <div class="option">
                                            <h2 class="title">1,000 Items</h2>
                                            <div class="view">
                                                <ul>
                                                    <li class="style1 grid active">
                                                        <a href="#">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M22 8.52V3.98C22 2.57 21.36 2 19.77 2H15.73C14.14 2 13.5 2.57 13.5 3.98V8.51C13.5 9.93 14.14 10.49 15.73 10.49H19.77C21.36 10.5 22 9.93 22 8.52Z" fill="white"/>
                                                                <path d="M22 19.77V15.73C22 14.14 21.36 13.5 19.77 13.5H15.73C14.14 13.5 13.5 14.14 13.5 15.73V19.77C13.5 21.36 14.14 22 15.73 22H19.77C21.36 22 22 21.36 22 19.77Z" fill="white"/>
                                                                <path d="M10.5 8.52V3.98C10.5 2.57 9.86 2 8.27 2H4.23C2.64 2 2 2.57 2 3.98V8.51C2 9.93 2.64 10.49 4.23 10.49H8.27C9.86 10.5 10.5 9.93 10.5 8.52Z" fill="white"/>
                                                                <path d="M10.5 19.77V15.73C10.5 14.14 9.86 13.5 8.27 13.5H4.23C2.64 13.5 2 14.14 2 15.73V19.77C2 21.36 2.64 22 4.23 22H8.27C9.86 22 10.5 21.36 10.5 19.77Z" fill="white"/>
                                                            </svg>
                                                            <span>Grid</span>
                                                        </a>
                                                    </li>
                                                    <li class="style2 list">
                                                        <a href="#">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M21 8H3C2.59 8 2.25 7.09333 2.25 6C2.25 4.90667 2.59 4 3 4H21C21.41 4 21.75 4.90667 21.75 6C21.75 7.09333 21.41 8 21 8Z" fill="#EBEBEB"/>
                                                                <path d="M21 14H3C2.59 14 2.25 13.0933 2.25 12C2.25 10.9067 2.59 10 3 10H21C21.41 10 21.75 10.9067 21.75 12C21.75 13.0933 21.41 14 21 14Z" fill="#EBEBEB"/>
                                                                <path d="M21 20H3C2.59 20 2.25 19.0933 2.25 18C2.25 16.9067 2.59 16 3 16H21C21.41 16 21.75 16.9067 21.75 18C21.75 19.0933 21.41 20 21 20Z" fill="#EBEBEB"/>
                                                            </svg>
                                                            <span>List</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div id="sort-by2" class="btn-sort-by dropdown">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M3 7H21" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                        <path d="M6 12H18" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                        <path d="M10 17H14" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                    </svg>
                                                    <a href="#" class="btn-selector nolink">
                                                        <span>Low To High</span>
                                                    </a>
                                                    <ul>
                                                        <li><span>Top rate</span></li>
                                                        <li><span>Mid rate</span></li>
                                                        <li><span>Low rate</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content-item">
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Freddie Carpeter</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-48.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Hamlet Comtemplates...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>    
                                            </div>
                                        </div>
                                        <div class="content-item2">
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-49.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-51.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-50.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-56.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-35.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-50.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-49.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-51.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-50.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-56.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-35.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-50.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-inner">
                                        <div class="option">
                                            <h2 class="title">1,000 Items</h2>
                                            <div class="view">
                                                <ul>
                                                    <li class="style1 grid active">
                                                        <a href="#">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M22 8.52V3.98C22 2.57 21.36 2 19.77 2H15.73C14.14 2 13.5 2.57 13.5 3.98V8.51C13.5 9.93 14.14 10.49 15.73 10.49H19.77C21.36 10.5 22 9.93 22 8.52Z" fill="white"/>
                                                                <path d="M22 19.77V15.73C22 14.14 21.36 13.5 19.77 13.5H15.73C14.14 13.5 13.5 14.14 13.5 15.73V19.77C13.5 21.36 14.14 22 15.73 22H19.77C21.36 22 22 21.36 22 19.77Z" fill="white"/>
                                                                <path d="M10.5 8.52V3.98C10.5 2.57 9.86 2 8.27 2H4.23C2.64 2 2 2.57 2 3.98V8.51C2 9.93 2.64 10.49 4.23 10.49H8.27C9.86 10.5 10.5 9.93 10.5 8.52Z" fill="white"/>
                                                                <path d="M10.5 19.77V15.73C10.5 14.14 9.86 13.5 8.27 13.5H4.23C2.64 13.5 2 14.14 2 15.73V19.77C2 21.36 2.64 22 4.23 22H8.27C9.86 22 10.5 21.36 10.5 19.77Z" fill="white"/>
                                                            </svg>
                                                            <span>Grid</span>
                                                        </a>
                                                    </li>
                                                    <li class="style2 list">
                                                        <a href="#">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M21 8H3C2.59 8 2.25 7.09333 2.25 6C2.25 4.90667 2.59 4 3 4H21C21.41 4 21.75 4.90667 21.75 6C21.75 7.09333 21.41 8 21 8Z" fill="#EBEBEB"/>
                                                                <path d="M21 14H3C2.59 14 2.25 13.0933 2.25 12C2.25 10.9067 2.59 10 3 10H21C21.41 10 21.75 10.9067 21.75 12C21.75 13.0933 21.41 14 21 14Z" fill="#EBEBEB"/>
                                                                <path d="M21 20H3C2.59 20 2.25 19.0933 2.25 18C2.25 16.9067 2.59 16 3 16H21C21.41 16 21.75 16.9067 21.75 18C21.75 19.0933 21.41 20 21 20Z" fill="#EBEBEB"/>
                                                            </svg>
                                                            <span>List</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div id="sort-by3" class="btn-sort-by dropdown">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M3 7H21" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                        <path d="M6 12H18" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                        <path d="M10 17H14" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                    </svg>
                                                    <a href="#" class="btn-selector nolink">
                                                        <span>Low To High</span>
                                                    </a>
                                                    <ul>
                                                        <li><span>Top rate</span></li>
                                                        <li><span>Mid rate</span></li>
                                                        <li><span>Low rate</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content-item">
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>  
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-32.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Freddie Carpeter</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-33.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Hamlet Comtemplates...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>     
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-52.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Loving Vase 01 by Lanza...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-53.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Triumphant awakening...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>      
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-49.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>     
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>  
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-32.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Freddie Carpeter</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-33.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Hamlet Comtemplates...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>     
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-52.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Loving Vase 01 by Lanza...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-53.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Triumphant awakening...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>      
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-49.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>     
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="meta-info style">
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <span>Creator</span>
                                                                <h6> <a href="author02.html">Tyler Covington</a> </h6>
                                                            </div>
                                                        </div>
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="card-media">
                                                        <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                        <div class="button-place-bid">
                                                            <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <h5><a href="item-details.html">"Flame Dress' by Balmain...</a></h5>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <span>Current Bid</span>
                                                                <span class="pricing">4.89 ETH</span>
                                                            </div>
                                                        </div>
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                </div>   
                                            </div>
                                        </div>
                                        <div class="content-item2">
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-50.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-56.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-35.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-49.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-51.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-50.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-56.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-47.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-10.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-36.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-27.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-35.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-5.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-49.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/avt-3.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                            <div class="col-item">
                                                <div class="sc-card-product menu_card style-h7">
                                                    <div class="wrap-media">
                                                        <div class="card-media">
                                                            <a href="item-details.html"><img src="assets/images/box-item/image-box-51.jpg" alt="Image"></a>                                                                                                            
                                                        </div>
                                                    </div>
                                                    <div class="card-title">
                                                        <p>Item Name</p>
                                                        <h4><a href="item-details.html">"Flame Dress' by Balmain</a></h4>
                                                    </div>
                                                    <div class="meta-info style">
                                                        <p>Creator</p>
                                                        <div class="author">
                                                            <div class="avatar">
                                                                <img src="assets/images/avatar/author_rank.jpg" alt="Image">
                                                            </div>
                                                            <div class="info">
                                                                <h4> <a href="author02.html">Tyler Covington</a> </h4>
                                                            </div>
                                                        </div>
                                                    </div>     
                                                    <div class="countdown">
                                                        <p>Countdown</p>
                                                        <div class="featured-countdown">
                                                            <span class="slogan"></span>
                                                            <span class="js-countdown" data-timer="516400" data-labels=" :  ,  : , : , "></span>
                                                        </div>
                                                    </div>
                                                    <div class="wrap-hear">
                                                        <button class="wishlist-button heart"><span class="number-like"> 100</span></button>
                                                    </div>
                                                    <div class="wrap-tag">
                                                        <div class="tags">bsc</div>
                                                    </div>
                                                    <div class="meta-info">
                                                        <div class="author">
                                                            <div class="info">
                                                                <p>Current Bid</p>
                                                                <p class="pricing">4.89 ETH</p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="button-place-bid">
                                                        <a href="#" data-toggle="modal" data-target="#popup_bid" class="sc-button style-place-bid style bag fl-button pri-3"><span>Place Bid</span></a>
                                                    </div>
                                                </div>   
                                            </div>
                                        </div>
                                    </div>
                                    <div class="content-inner">
                                        <div class="option">
                                            <h2 class="title">1,000 Items</h2>
                                            <div class="view">
                                                <ul>
                                                    <li class="style1 grid active">
                                                        <a href="#">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M22 8.52V3.98C22 2.57 21.36 2 19.77 2H15.73C14.14 2 13.5 2.57 13.5 3.98V8.51C13.5 9.93 14.14 10.49 15.73 10.49H19.77C21.36 10.5 22 9.93 22 8.52Z" fill="white"/>
                                                                <path d="M22 19.77V15.73C22 14.14 21.36 13.5 19.77 13.5H15.73C14.14 13.5 13.5 14.14 13.5 15.73V19.77C13.5 21.36 14.14 22 15.73 22H19.77C21.36 22 22 21.36 22 19.77Z" fill="white"/>
                                                                <path d="M10.5 8.52V3.98C10.5 2.57 9.86 2 8.27 2H4.23C2.64 2 2 2.57 2 3.98V8.51C2 9.93 2.64 10.49 4.23 10.49H8.27C9.86 10.5 10.5 9.93 10.5 8.52Z" fill="white"/>
                                                                <path d="M10.5 19.77V15.73C10.5 14.14 9.86 13.5 8.27 13.5H4.23C2.64 13.5 2 14.14 2 15.73V19.77C2 21.36 2.64 22 4.23 22H8.27C9.86 22 10.5 21.36 10.5 19.77Z" fill="white"/>
                                                            </svg>
                                                            <span>Grid</span>
                                                        </a>
                                                    </li>
                                                    <li class="style2 list">
                                                        <a href="#">
                                                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                                <path d="M21 8H3C2.59 8 2.25 7.09333 2.25 6C2.25 4.90667 2.59 4 3 4H21C21.41 4 21.75 4.90667 21.75 6C21.75 7.09333 21.41 8 21 8Z" fill="#EBEBEB"/>
                                                                <path d="M21 14H3C2.59 14 2.25 13.0933 2.25 12C2.25 10.9067 2.59 10 3 10H21C21.41 10 21.75 10.9067 21.75 12C21.75 13.0933 21.41 14 21 14Z" fill="#EBEBEB"/>
                                                                <path d="M21 20H3C2.59 20 2.25 19.0933 2.25 18C2.25 16.9067 2.59 16 3 16H21C21.41 16 21.75 16.9067 21.75 18C21.75 19.0933 21.41 20 21 20Z" fill="#EBEBEB"/>
                                                            </svg>
                                                            <span>List</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                                <div id="sort-by4" class="btn-sort-by dropdown">
                                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                                                        <path d="M3 7H21" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                        <path d="M6 12H18" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                        <path d="M10 17H14" stroke="white" stroke-width="1.5" stroke-linecap="round"></path>
                                                    </svg>
                                                    <a href="#" class="btn-selector nolink">
                                                        <span>Low To High</span>
                                                    </a>
                                                    <ul>
                                                        <li><span>Top rate</span></li>
                                                        <li><span>Mid rate</span></li>
                                                        <li><span>Low rate</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="content-item">
                                            <!-- 여기-->
                                                 
                                        </div>
                                            
                                            
                                        </div>
                                       
                                                
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </section>

            <!-- Footer -->
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
                        <a href="#" class="btn btn-primary"> Watch the listings</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer 넣음-->
        <jsp:include page="../include/footer.jsp"></jsp:include>
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
    <script src="../assets/js/todo.js"></script>
    

</body>

</html>