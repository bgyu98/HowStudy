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
              <!-- Nav Item -->
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
            <h1 class="h3 mb-2 text-gray-800">주문 내역 관리</h1>

            <!-- 주문내역 테이블 -->
            <div class="card shadow mb-4">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">주문내역전체</h6>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th>주문 번호</th>
                        <th>주문날짜</th>
                        <th>구매자</th>
                        <th>수량(개수)</th>
                        <th>상품명</th>
                        <th>결제금액</th>
                        <th style="width: 15%">처리상태</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                        <th>주문 번호</th>
                        <th>주문날짜</th>
                        <th>구매자</th>
                        <th>수량(개수)</th>
                        <th>상품명</th>
                        <th>결제금액</th>
                        <th>처리상태</th>
                      </tr>
                    </tfoot>
                    <tbody>
                      <tr>
                        <td class="number">${list.order_detail_number}</td>
                        <td>${list.order_date}</td>
                        <td>${list.user_id}</td>
                        <td>${list.product_count}</td>
                        <td>${list.product_name}</td>
                        <td>${list.product_price}</td>

                        <a href="#" class="btn btn-success btn-icon-split">
                          <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                          </span>
                          <span class="text">배송완료</span>
                        </a>

                        <a
                          href="#"
                          name="${list.order_detail_number}"
                          class="btn btn-warning btn-icon-split"
                          data-toggle="modal"
                          data-target="#refundModal"
                        >
                          <span class="icon text-white-50">
                            <i class="fas fa-exclamation-triangle"></i>
                          </span>
                          <span class="text">환불</span>
                        </a>

                        <a
                          href="#"
                          name="${list.order_detail_number}"
                          class="btn btn-warning btn-icon-split"
                          data-toggle="modal"
                          data-target="#refundModal"
                        >
                          <span class="icon text-white-50">
                            <i class="fas fa-exclamation-triangle"></i>
                          </span>
                          <span class="text">교환</span>
                        </a>

                        <a href="../admin/updateStatus" class="btn btn-secondary btn-icon-split">
                          <span class="icon text-white-50">
                            <i class="fas fa-arrow-right"></i>
                          </span>
                          <span class="text">상품 준비중</span>
                        </a>

                        <a href="#" class="btn btn-primary btn-icon-split">
                          <span class="icon text-white-50"> <i class="fas fa-flag"></i> </span>
                          <span class="text">배송중 </span>
                        </a>

                        <a href="#" class="btn btn-danger btn-icon-split">
                          <span class="icon text-white-50"> <i class="fas fa-trash"></i> </span>
                          <span class="text">취소</span>
                        </a>

                        <a href="#" class="btn btn-success btn-icon-split">
                          <span class="icon text-white-50">
                            <i class="fas fa-check"></i>
                          </span>
                          <span class="text">환불 및 교환 승인</span>
                        </a>

                        <a href="#" class="btn btn-light btn-icon-split">
                          <span class="icon text-gray-600">
                            <i class="fas fa-arrow-right"></i>
                          </span>
                          <span class="text">거절</span>
                        </a>
                      </tr>
                    </tbody>
                  </table>
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
            <a class="btn btn-primary" href="../logOut" style="border-radius: 10px">로그아웃</a>
          </div>
        </div>
      </div>
    </div>

    <!-- 환불/교환 사유 Modals -->
    <div
      class="modal fade"
      id="refundModal"
      tabindex="-1"
      role="dialog"
      aria-labelledby="exampleModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">환불/교환 사유 확인</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">
            <table style="margin-left: 30px">
              <tr>
                <th style="width: 30%">상태</th>
                <td>
                  <input id="status" type="text" name="status" readonly style="border: none" />
                </td>
              </tr>
              <tr>
                <th>사유</th>
                <td>
                  <input id="reason" type="text" name="_reason" readonly style="border: none" />
                </td>
              </tr>
              <tr>
                <th>상세사유</th>
                <td>
                  <input
                    id="reason_detail"
                    type="text"
                    name="_reason_detail"
                    readonly
                    style="border: none"
                  />
                </td>
              </tr>
            </table>
          </div>
          <div class="modal-footer" style="height: 75px">
            <a
              id="acceptBtn"
              class="btn btn-primary"
              href="../admin/accept"
              style="border-radius: 10px"
              >승인</a
            >
            <a
              id="rejectBtn"
              class="btn btn-secondary"
              href="../admin/reject"
              style="border-radius: 10px"
              >거절</a
            >
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
    <script src="../assets/js/refund-custom.js"></script>

    <!-- font awesome CDN -->
    <script src="https://kit.fontawesome.com/3364ed6976.js" crossorigin="anonymous"></script>
  </body>
</html>
