<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
  <!-- 한글 깨짐 방지-->
  <%@ page language="java" contentType="text/html; charset=UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <head>
    <meta charset="utf-8" />
    <title>HOWSTUDY - 위치안내</title>

    <meta name="author" content="themesflat.com" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Theme Style -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css" />
    <link rel="stylesheet" type="text/css" href="../assets/css/slack.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/offlineShop.css">

    <!-- Favicon and Touch Icons  -->
    <link rel="shortcut icon" href="../assets/icon/Favicon.png" />
    <link rel="apple-touch-icon-precomposed" href="../assets/icon/Favicon.png" />
  </head>

  
<body class="body header-fixed is_dark connect-wal">


    <div id="wrapper">
      <div id="page" class="clearfix">
        <jsp:include page="../include/header.jsp"></jsp:include> <!-- header include -->

        <!-- 메인 페이지 시작 -->
        
        <section class="flat-title-page inner">
          <div class="overlay"></div>
          <div class="themesflat-container">
            <div class="row">
              <div class="col-md-12">
                <div class="page-title-heading mg-bt-12">
                  <h1 class="heading text-center">매장 위치안내</h1>
                </div>
                
                <div class="breadcrumbs style2">
                </div>
              </div>
            </div>
          </div>
        </section>

        <!-- 오프라인 내용 시작 -->
	<section style="text-align:center;margin-bottom: 300px;position: relative;top: 100px;">
    <!-- 테이블 시작 -->
    <table border="1" style="font-size: 16px;display: inline;">
    <tr style="
    font-size: 20px;
">
      <th>지점명</th>
      <th>주소</th>
      <th>전화번호</th>
      <th></th>
    </tr>
        <c:forEach items="${list}" var="list">
          <tr>
            <td class="td1">${list.branchName}</td>
            <td class="td2">${list.addr}</td>
            <td class="td3">${list.callNum}</td>
            <input type="hidden" class="td4" value="${list.lat}"></input>
            <input type="hidden" class="td5" value="${list.lng}"></input>
            <td><button class="map">지도보기</button></td>

          </tr>
          
        </c:forEach>
      </table>
      <div class="row mt-5 pb-5">
        <div class="col-lg-12">
          <div class="custom-pagination">
            <ul class="list-unstyled pagination justify-content-center">
              <li>
               <c:if test="${pageMaker.prev}">
                <a href="offlineShop${pageMaker.makeQueryOVO(pageMaker.startPage - 1)}" class="pagenation">
                  Previous
                </a>
              </c:if>                     
              </li>
<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
  <li><a href="offlineShop${pageMaker.makeQueryOVO(idx)}" class="pagenation">${idx}</a></li>
</c:forEach>
              <li>
                 <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                <a href="offlineShop${pageMaker.makeQueryOVO(pageMaker.endPage + 1)}" class="pagenation">
                  Next
                </a>
              </c:if> 
              </li>
            </ul>
          </div>
        </div>
      </div>
            <!-- 테이블 끝 -->
    </section>
        
        <!-- 내용 끝 -->
        

                </div>
              </div>
            </div>
          </div>
          </div>
        </section>
        



        <!-- 메인 페이지 끝-->
        <!-- footer 삽입 -->
        <jsp:include page="../include/footer.jsp"></jsp:include> 
      <!-- /#page -->
    <!-- /#wrapper -->
     <!--슬랙봇 추가-->
 <div class="quickmenu">

  <ul style="text-decoration: none">
    <a href="https://app.slack.com/client/T04K98KG26R/C04K5JX8NDU" onclick="window.open(this.href, '_blank', 'width=400, height=800'); return false;"><img src="/assets/images/icon/slack.png"></img></a>
    
  </ul>
</div>
    
    <a id="scroll-top"></a>

    <script src="../assets/js/slack.js"></script>
    <script>
      $(function(){
        $('.map').on("click", function(){
          var lng = $(this).parent().prev().prev().val(); // 위도
          var lat = $(this).parent().prev().val(); // 경도
          var bName = $(this).parent().parent().find('.td1').text(); // 가게이름
          var url = "https://map.kakao.com/link/map/" + "하우스터디 " + bName + "," + lat + "," + lng // 주소
          window.open(url, "width=50%", "height=50%")
          
        })
      })
    </script>
  </body>
</html>
