<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix='c' uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    <title>PetDo - 관리자 페이지</title>

    <!-- Custom fonts for this template-->
    <link
      href="../assets/vendor/fontawesome-free/css/all.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
      rel="stylesheet"
    />

    <!-- Custom styles for this template-->
    <link href="../assets/css/sb-admin-2.min-copy.css" rel="stylesheet" />
    <style>
      a:hover {
        text-decoration: none;
      }
    </style>
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
      <!-- Sidebar -->
      <ul
        class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
        id="accordionSidebar"
      >
        <!-- Sidebar - Brand -->
        <a
          class="sidebar-brand d-flex align-items-center justify-content-center"
          href="../admin/adminMain"
        >
          <div class="sidebar-brand-text mx-3">HowStudy Admin</div>
        </a>

        <!-- Divider -->
        <hr class="sidebar-divider my-0" />

        <!-- Nav Item - Dashboard -->
        <li class="nav-item active">
          <a class="nav-link" href="../studyRoom/study">
            <i class="fas fa-fw fa-tachometer-alt"></i> <span>User Page</span></a
          >
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider" />

        <!-- Nav Item - Utilities Collapse Menu -->
        <li class="nav-item">
          <a
            class="nav-link collapsed"
            href="../admin/member"
            data-toggle="collapse"
            data-target="#collapseOne"
            aria-expanded="true"
            aria-controls="collapseOne"
          >
            <i class="fas fa-fw fa-cog"></i> <span>회원 관리</span>
          </a>
          <div
            id="collapseOne"
            class="collapse"
            aria-labelledby="headingUtilities"
            data-parent="#accordionSidebar"
          >
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">Custom Utilities:</h6>
              <a class="collapse-item" href="../admin/member">회원 정보</a>
              <a class="collapse-item" href="../admin/qna">신고 내역</a>
            </div>
          </div>
        </li>

        <li class="nav-item">
          <a
            class="nav-link collapsed"
            href="../admin/faq"
            data-toggle="collapse"
            data-target="#collapseTwo"
            aria-expanded="true"
            aria-controls="collapseTwo"
          >
            <i class="fas fa-fw fa-table"></i> <span>게시판관리</span>
          </a>
          <div
            id="collapseTwo"
            class="collapse"
            aria-labelledby="headingTwo"
            data-parent="#accordionSidebar"
          >
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">홈페이지에 게시된 각종 글 관리</h6>
              <a class="collapse-item" href="../admin/faq">FAQ 관리</a>
              <a class="collapse-item" href="../admin/notice">공지사항 관리</a>
            </div>
          </div>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="../admin/calCharts">
            <i class="fas fa-fw fa-chart-area"></i> <span>정산관리</span>
          </a>
        </li>

        
        <!-- Nav Item - Charts -->
        <li class="nav-item">
          <a class="nav-link" href="../admin/itemCharts">
            <i class="fas fa-fw fa-chart-area"></i> <span>스터디룸별 통계</span>
          </a>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
      

        <li class="nav-item">
          <a class="nav-link" href="../admin/itemList">
            <i class="fas fa-fw fa-table"></i> <span>메타버스 관리</span>
          </a>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider d-none d-md-block" />

        <!-- Sidebar Toggler (Sidebar) -->
        <div class="text-center d-none d-md-inline">
          <button class="rounded-circle border-0" id="sidebarToggle"></button>
        </div>
      </ul>
      <!-- End of Sidebar -->

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">
        <!-- Main Content -->
        <div id="content">
          <!-- Topbar -->
          <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
            <!-- Sidebar Toggle (Topbar) -->
            <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
              <i class="fa fa-bars"></i>
            </button>

            <!-- Topbar Navbar -->
            <ul class="navbar-nav ml-auto">
              <!-- Nav Item - Search Dropdown (Visible Only XS) -->
              <li>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                </a>
              </li>
            </ul>
          </nav>
          <!-- End of Topbar -->

          <!-- Begin Page Content -->
          <div class="container-fluid">
            <!-- Page Heading -->
            <div class="d-sm-flex align-items-center justify-content-between mb-4">
              <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
            </div>

            <!-- Content Row -->
            <div class="row" style="max-height: 50%;">
              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <a href=../admin/orderList"></a>
                  <div class="card border-left-primary shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                            스터디룸별 통계
                          </div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800">
                            신규 스터디룸 개설 현황
                          </div>
                        </div>
                        <div class="col-auto">
                          <i class="fas fa-calendar fa-2x text-gray-300"></i>
                        </div>
                      </div>
                    </div>
                    <br/>
                      <p style="margin-left: 30px; margin-top: 15px;">&ensp;개설 개수 &emsp; 0 건</p>

                  </div>
                
              </div>

              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <a href="../admin/itemCharts">
                  <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            메타버스 관리
                          </div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800">
                            메타버스 접속 유저 현황
                          </div>
                        </div>
                        <div class="col-auto">
                          <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                <a href="../admin/qna">
                  <div class="card border-left-warning shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                            슬랙봇
                          </div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800">
                            슬랙봇 관리
                          </div>
                        </div>
                        <div class="col-auto">
                          <i class="fas fa-comments fa-2x text-gray-300"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>

              <div class="col-xl-3 col-md-6 mb-4">
                <a href="../admin/calCharts">
                  <div class="card border-left-success shadow h-100 py-2">
                    <div class="card-body">
                      <div class="row no-gutters align-items-center">
                        <div class="col mr-2">
                          <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                            회원 관리
                          </div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800">
                            회원 관리
                          </div>
                        </div>
                        <div class="col-auto">
                          <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
                        </div>
                      </div>
                    </div>
                  </div>
                </a>
              </div>
            </div>

            <!-- Content Row -->

            <div class="row">
              <!-- Area Chart -->
            </div>

            <!-- Content Row -->
            <div class="row">
              <!-- Content Column -->
              <div class="col-lg-6 mb-4">
                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                  <a href="../admin/orderList">
                    <div class="card-header py-3">
                      <h6 class="m-0 font-weight-bold text-primary">매출</h6>
                    </div>
                    <div class="card-body">
                      <c:forEach items="${ratio }" var="list">
                        <c:choose>
                          <c:when test="${list.ORDER_DETAIL_STATUS eq '배송중' }">
                            <h4 class="small font-weight-bold">
                              상품 준비중 / 배송중<span class="float-right">${list.RATIO}%</span>
                            </h4>
                            <div class="progress mb-4">
                              <div
                                class="progress-bar"
                                role="progressbar"
                                style="width: ${list.RATIO}%"
                                aria-valuenow="60"
                                aria-valuemin="0"
                                aria-valuemax="100"
                              ></div>
                            </div>
                          </c:when>
                          <c:when test="${list.ORDER_DETAIL_STATUS eq '취소' }">
                            <h4 class="small font-weight-bold">
                              취소<span class="float-right">${list.RATIO}%</span>
                            </h4>
                            <div class="progress mb-4">
                              <div
                                class="progress-bar bg-dark"
                                role="progressbar"
                                style="width: ${list.RATIO}%"
                                aria-valuenow="20"
                                aria-valuemin="0"
                                aria-valuemax="100"
                              ></div>
                            </div>
                          </c:when>
                          <c:when test="${list.ORDER_DETAIL_STATUS eq '환불' }">
                            <h4 class="small font-weight-bold">
                              환불<span class="float-right">${list.RATIO}%</span>
                            </h4>
                            <div class="progress mb-4">
                              <div
                                class="progress-bar bg-warning"
                                role="progressbar"
                                style="width: ${list.RATIO}%"
                                aria-valuenow="40"
                                aria-valuemin="0"
                                aria-valuemax="100"
                              ></div>
                            </div>
                          </c:when>
                          <c:when test="${list.ORDER_DETAIL_STATUS eq '교환' }">
                            <h4 class="small font-weight-bold">
                              교환<span class="float-right">${list.RATIO}%</span>
                            </h4>
                            <div class="progress mb-4">
                              <div
                                class="progress-bar bg-danger"
                                role="progressbar"
                                style="width: ${list.RATIO}%"
                                aria-valuenow="40"
                                aria-valuemin="0"
                                aria-valuemax="100"
                              ></div>
                            </div>
                          </c:when>
                          <c:when test="${list.ORDER_DETAIL_STATUS eq '완료' }">
                            <h4 class="small font-weight-bold">
                              배송 완료<span class="float-right">${list.RATIO}%</span>
                            </h4>
                            <div class="progress mb-4">
                              <div
                                class="progress-bar bg-info"
                                role="progressbar"
                                style="width: ${list.RATIO}%"
                                aria-valuenow="80"
                                aria-valuemin="0"
                                aria-valuemax="100"
                              ></div>
                            </div>
                          </c:when>
                        </c:choose>
                      </c:forEach>
                    </div>
                  </a>
                </div>
              </div>
 
            </div>
          </div>
          <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright &copy; PetDo 2021</span>
            </div>
          </div>
        </footer>
        <!-- End of Footer -->
      </div>
      <!-- End of Content Wrapper -->
    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top"> <i class="fas fa-angle-up"></i> </a>

    <!-- Logout Modal-->
    <div
      class="modal fade"
      id="logoutModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">로그아웃 하시겠습니까?</div>
          <div class="modal-footer" style="height: 75px">
            <button
              class="btn btn-secondary"
              type="button"
              style="border-radius: 10px"
              data-dismiss="modal"
            >
              취소
            </button>
            <a class="btn btn-primary" href="../admin/logOut" style="border-radius: 10px">로그아웃</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../assets/vendor/jquery/jquery.min.js"></script>
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../assets/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../assets/js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="../assets/vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="../assets/js/demo/chart-area-demo.js"></script>
    <script src="../assets/js/demo/chart-pie-demo.js"></script>

    <!-- font awesome CDN -->
    <script src="https://kit.fontawesome.com/3364ed6976.js" crossorigin="anonymous"></script>
  </body>
</html>
