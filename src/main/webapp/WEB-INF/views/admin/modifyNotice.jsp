<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link href="../assets/css\customRegistFAQ.css" rel="stylesheet" />
  </head>

  <body id="page-top">
    <!-- Page Wrapper -->
    <div id="wrapper">
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

            <h1 class="h3 mb-2 text-gray-800" style="text-align: center"><b>공지사항 수정</b></h1>

            <!-- 입력 폼 -->
            <div class="card shadow mb-4" style="width: 75%; margin: auto; margin-top: 50pt">
              <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">공지사항 게시판 글 관리</h6>
              </div>
              <form action="updateNotice" id="insertNoticeFrm">
                <div class="card-body" style="margin-left: 15px">
                  <div class="inputTitle">
                    <input type="hidden" value="${notice.notify_seq }" name="notify_seq" />
                    <input
                      type="text"
                      style="width: 70%"
                      placeholder="메인 제목"
                      name="notify_title"
                      value="${notice.notify_title }"
                    />
                  </div>
                  <hr />
                  <div>
                    상세 설명
                    <textarea style="width: 100%; height: 300px" name="notify_content">
${notice.notify_content }</textarea
                    >
                  </div>
                  <div id="registBtn">
                    <button class="btn btn-primary btn-icon-split" id="insertNoticeBtn">
                      <span class="icon text-white-50"> <i class="fas fa-flag"></i> </span>
                      <span class="text">등록</span>
                    </button>
                    <a href="../admin/notice" class="btn btn-secondary btn-icon-split">
                      <span class="icon text-white-50"> <i class="fas fa-arrow-right"></i> </span>
                      <span class="text">취소</span>
                    </a>
                  </div>
                </div>
              </form>
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
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

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
