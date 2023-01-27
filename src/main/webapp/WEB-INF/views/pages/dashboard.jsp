<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png" />
      <link rel="icon" type="image/png" href="../assets/img/favicon.png" />

      <title>HowStudy admin</title>
      <!--     Fonts and icons     -->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
      <!-- Nucleo Icons -->
      <link href="../assets/css/todo.css" rel="stylesheet" />
      <link href="../assets/css/nucleo-icons.css" rel="stylesheet" />
      <link href="../assets/css/nucleo-svg.css" rel="stylesheet" />
      <!-- Font Awesome Icons -->
      <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
      <!-- <link href="../assets/css/nucleo-svg.css" rel="stylesheet" /> -->

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" />
      <!-- CSS Files -->
      <link id="pagestyle" href="../assets/css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" />
    </head>

    <body class="g-sidenav-show bg-gray-100">
      <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3"
        id="sidenav-main">
        <div class="sidenav-header">
          <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
            aria-hidden="true" id="iconSidenav"></i>
          <a class="navbar-brand m-0" href="../pages/dashboard" target="_blank">
            <img src="../assets/img/logo-ct-dark.png" class="navbar-brand-img h-100" alt="main_logo" />
            <span class="ms-1 font-weight-bold">HowStudy Admin</span>
          </a>
        </div>
        <hr class="horizontal dark mt-0" />
        <div class="collapse navbar-collapse w-auto" id="sidenav-collapse-main">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="../pages/manageUserList">
                <div
                  class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                  <svg width="12px" height="12px" viewBox="0 0 46 42" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <title>customer-support</title>
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g transform="translate(-1717.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                        <g transform="translate(1716.000000, 291.000000)">
                          <g transform="translate(1.000000, 0.000000)">
                            <path class="color-background opacity-6"
                              d="M45,0 L26,0 C25.447,0 25,0.447 25,1 L25,20 C25,20.379 25.214,20.725 25.553,20.895 C25.694,20.965 25.848,21 26,21 C26.212,21 26.424,20.933 26.6,20.8 L34.333,15 L45,15 C45.553,15 46,14.553 46,14 L46,1 C46,0.447 45.553,0 45,0 Z">
                            </path>
                            <path class="color-background"
                              d="M22.883,32.86 C20.761,32.012 17.324,31 13,31 C8.676,31 5.239,32.012 3.116,32.86 C1.224,33.619 0,35.438 0,37.494 L0,41 C0,41.553 0.447,42 1,42 L25,42 C25.553,42 26,41.553 26,41 L26,37.494 C26,35.438 24.776,33.619 22.883,32.86 Z">
                            </path>
                            <path class="color-background"
                              d="M13,28 C17.432,28 21,22.529 21,18 C21,13.589 17.411,10 13,10 C8.589,10 5,13.589 5,18 C5,22.529 8.568,28 13,28 Z">
                            </path>
                          </g>
                        </g>
                      </g>
                    </g>
                  </svg>
                </div>
                <span class="nav-link-text ms-1">회원관리</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../pages/report">
                <div
                  class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                  <svg width="12px" height="12px" viewBox="0 0 40 44" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <title>document</title>
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g transform="translate(-1870.000000, -591.000000)" fill="#FFFFFF" fill-rule="nonzero">
                        <g transform="translate(1716.000000, 291.000000)">
                          <g transform="translate(154.000000, 300.000000)">
                            <path class="color-background opacity-6"
                              d="M40,40 L36.3636364,40 L36.3636364,3.63636364 L5.45454545,3.63636364 L5.45454545,0 L38.1818182,0 C39.1854545,0 40,0.814545455 40,1.81818182 L40,40 Z">
                            </path>
                            <path class="color-background"
                              d="M30.9090909,7.27272727 L1.81818182,7.27272727 C0.814545455,7.27272727 0,8.08727273 0,9.09090909 L0,41.8181818 C0,42.8218182 0.814545455,43.6363636 1.81818182,43.6363636 L30.9090909,43.6363636 C31.9127273,43.6363636 32.7272727,42.8218182 32.7272727,41.8181818 L32.7272727,9.09090909 C32.7272727,8.08727273 31.9127273,7.27272727 30.9090909,7.27272727 Z M18.1818182,34.5454545 L7.27272727,34.5454545 L7.27272727,30.9090909 L18.1818182,30.9090909 L18.1818182,34.5454545 Z M25.4545455,27.2727273 L7.27272727,27.2727273 L7.27272727,23.6363636 L25.4545455,23.6363636 L25.4545455,27.2727273 Z M25.4545455,20 L7.27272727,20 L7.27272727,16.3636364 L25.4545455,16.3636364 L25.4545455,20 Z">
                            </path>
                          </g>
                        </g>
                      </g>
                    </g>
                  </svg>
                </div>
                <span class="nav-link-text ms-1">신고내역</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../pages/notice">
                <div
                  class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                  <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <title>office</title>
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g transform="translate(-1869.000000, -293.000000)" fill="#FFFFFF" fill-rule="nonzero">
                        <g transform="translate(1716.000000, 291.000000)">
                          <g id="office" transform="translate(153.000000, 2.000000)">
                            <path class="color-background opacity-6"
                              d="M12.25,17.5 L8.75,17.5 L8.75,1.75 C8.75,0.78225 9.53225,0 10.5,0 L31.5,0 C32.46775,0 33.25,0.78225 33.25,1.75 L33.25,12.25 L29.75,12.25 L29.75,3.5 L12.25,3.5 L12.25,17.5 Z">
                            </path>
                            <path class="color-background"
                              d="M40.25,14 L24.5,14 C23.53225,14 22.75,14.78225 22.75,15.75 L22.75,38.5 L19.25,38.5 L19.25,22.75 C19.25,21.78225 18.46775,21 17.5,21 L1.75,21 C0.78225,21 0,21.78225 0,22.75 L0,40.25 C0,41.21775 0.78225,42 1.75,42 L40.25,42 C41.21775,42 42,41.21775 42,40.25 L42,15.75 C42,14.78225 41.21775,14 40.25,14 Z M12.25,36.75 L7,36.75 L7,33.25 L12.25,33.25 L12.25,36.75 Z M12.25,29.75 L7,29.75 L7,26.25 L12.25,26.25 L12.25,29.75 Z M35,36.75 L29.75,36.75 L29.75,33.25 L35,33.25 L35,36.75 Z M35,29.75 L29.75,29.75 L29.75,26.25 L35,26.25 L35,29.75 Z M35,22.75 L29.75,22.75 L29.75,19.25 L35,19.25 L35,22.75 Z">
                            </path>
                          </g>
                        </g>
                      </g>
                    </g>
                  </svg>
                </div>
                <span class="nav-link-text ms-1">공지사항</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../pages/faq">
                <div
                  class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                  <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <title>office</title>
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g transform="translate(-1869.000000, -293.000000)" fill="#FFFFFF" fill-rule="nonzero">
                        <g transform="translate(1716.000000, 291.000000)">
                          <g id="office" transform="translate(153.000000, 2.000000)">
                            <path class="color-background opacity-6"
                              d="M12.25,17.5 L8.75,17.5 L8.75,1.75 C8.75,0.78225 9.53225,0 10.5,0 L31.5,0 C32.46775,0 33.25,0.78225 33.25,1.75 L33.25,12.25 L29.75,12.25 L29.75,3.5 L12.25,3.5 L12.25,17.5 Z">
                            </path>
                            <path class="color-background"
                              d="M40.25,14 L24.5,14 C23.53225,14 22.75,14.78225 22.75,15.75 L22.75,38.5 L19.25,38.5 L19.25,22.75 C19.25,21.78225 18.46775,21 17.5,21 L1.75,21 C0.78225,21 0,21.78225 0,22.75 L0,40.25 C0,41.21775 0.78225,42 1.75,42 L40.25,42 C41.21775,42 42,41.21775 42,40.25 L42,15.75 C42,14.78225 41.21775,14 40.25,14 Z M12.25,36.75 L7,36.75 L7,33.25 L12.25,33.25 L12.25,36.75 Z M12.25,29.75 L7,29.75 L7,26.25 L12.25,26.25 L12.25,29.75 Z M35,36.75 L29.75,36.75 L29.75,33.25 L35,33.25 L35,36.75 Z M35,29.75 L29.75,29.75 L29.75,26.25 L35,26.25 L35,29.75 Z M35,22.75 L29.75,22.75 L29.75,19.25 L35,19.25 L35,22.75 Z">
                            </path>
                          </g>
                        </g>
                      </g>
                    </g>
                  </svg>
                </div>
                <span class="nav-link-text ms-1">FAQ</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="../pages/notice">
                <div
                  class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                  <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink">
                    <title>credit-card</title>
                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                      <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                        <g transform="translate(1716.000000, 291.000000)">
                          <g transform="translate(453.000000, 454.000000)">
                            <path class="color-background opacity-6"
                              d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z">
                            </path>
                            <path class="color-background"
                              d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z">
                            </path>
                          </g>
                        </g>
                      </g>
                    </g>
                  </svg>
                </div>
                <span class="nav-link-text ms-1">정산관리</span>
              </a>
            </li>
          </ul>
        </div>
        <div class="sidenav-footer mx-3">
          <div class="card card-background shadow-none card-background-mask-secondary" id="sidenavCard">
            <div class="full-background" style="background-image: url('../assets/img/curved-images/white-curved.jpg')">
            </div>
          </div>
        </div>
      </aside>
      <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur"
          navbar-scroll="true">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5"></ol>
              <li class="nav-item d-flex align-items-center">
                <a class="btn btn-outline-primary btn-sm mb-0 me-3" target="_blank" href="../studyRoom/study">User
                  Page</a>
              </li>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <div class="ms-md-auto pe-md-3 d-flex align-items-center"></div>
              <ul class="navbar-nav justify-content-end">
                <li class="nav-item d-flex align-items-center">
                  <a href="javascript:;" class="nav-link text-body font-weight-bold px-0" style="margin-left: 5px">
                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                    <span class="d-sm-inline d-none">Logout</span>
                  </a>
                </li>
                <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                  <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                    <div class="sidenav-toggler-inner">
                      <i class="sidenav-toggler-line"></i>
                      <i class="sidenav-toggler-line"></i>
                      <i class="sidenav-toggler-line"></i>
                    </div>
                  </a>
                </li>
                <li class="nav-item px-3 d-flex align-items-center"></li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- End Navbar -->
        <div class="container-fluid py-4">
          <div class="row">
            <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
              <div class="card">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-8">
                      <div class="numbers">
                        <p class="text-sm mb-0 text-capitalize font-weight-bold">customer</p>
                        <h5 class="font-weight-bolder mb-0">회원정보 바로가기</h5>
                      </div>
                    </div>
                    <div class="col-4 text-end">
                      <a href="../pages/tables">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                          <i class="ni ni-money-coins text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
              <div class="card">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-8">
                      <div class="numbers">
                        <p class="text-sm mb-0 text-capitalize font-weight-bold">report</p>
                        <h5 class="font-weight-bolder mb-0">신고현황 바로가기</h5>
                      </div>
                    </div>
                    <div class="col-4 text-end">
                      <a href="../pages/tables">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                          <i class="ni ni-world text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
              <div class="card">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-8">
                      <a href="../pages/tables">
                        <div class="numbers">
                          <p class="text-sm mb-0 text-capitalize font-weight-bold">sales</p>
                          <h5 class="font-weight-bolder mb-0">매출현황 바로가기</h5>
                        </div>
                      </a>
                    </div>
                    <div class="col-4 text-end">
                      <a href="../pages/tables">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                          <i class="ni ni-paper-diploma text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-sm-6">
              <div class="card">
                <div class="card-body p-3">
                  <div class="row">
                    <div class="col-8">
                      <div class="numbers">
                        <p class="text-sm mb-0 text-capitalize font-weight-bold">notice</p>
                        <h5 class="font-weight-bolder mb-0">공지사항 바로가기</h5>
                      </div>
                    </div>
                    <div class="col-4 text-end">
                      <a href="../pages/notice">
                        <div class="icon icon-shape bg-gradient-primary shadow text-center border-radius-md">
                          <i class="ni ni-cart text-lg opacity-10" aria-hidden="true"></i>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row mt-4">
            <div class="col-lg-7 mb-lg-0 mb-4"></div>
            <div class="col-lg-5"></div>
          </div>
          <div class="row mt-4">
            <div class="col-lg-5 mb-lg-0 mb-4">
              <div class="card z-index-2">
                <div class="card-body p-3">
                  <h6 style="font-weight: bold;">시간 별 접속 추이</h6>
                  <iframe
                    src="http://192.168.0.36:5601/app/visualize#/edit/cfaae3e0-9c85-11ed-9155-3ff914a899c0?embed=true&_g=(filters%3A!()%2CrefreshInterval%3A(pause%3A!t%2Cvalue%3A0)%2Ctime%3A(from%3Anow-15m%2Cto%3Anow))"
                    height="600" width="622"></iframe>
                </div>
              </div>
            </div>
            <div class="col-lg-7">
              <div class="card z-index-2">
                <div class="app-card app-card-chart h-100 shadow-sm">
                  <div class="app-card-header p-3">
                    <div class="row justify-content-between align-items-center">
                      <div class="col-auto">
                        <h4 class="app-card-title">
                          일별 스터디룸 현황</h4>
                      </div>
                      <!--//col-->
                    </div>
                    <!--//row-->
                  </div>
                  <!--//app-card-header-->
                  <div class="app-card-body p-3 p-lg-4" style="height: 100%;">
                    <div class="mb-3 d-flex">

                      <input type="date" class="regdate1" id="regdate1" name="regdate1" onchange="checkDate3(event)"
                        style="margin-right: 20%;">
                      ~
                      <input type="date" class="regdate2" id="regdate2" name="regdate2" onchange="checkDate4(event)"
                        style="margin-left: 20%;">
                    </div>
                    <div class="chart-container">
                      <canvas id="canvas-daychart" style="border-radius: 5px; height: 486px; width: 100%; "></canvas>
                    </div>
                  </div>
                  <!--//app-card-body-->
                </div>
              </div>
            </div>
          </div>
          <div class="row my-4">
            <div class="col-lg-8 col-md-6 mb-md-0 mb-4">
              <div class="card">
                <div class="card-header pb-0">
                  <div class="row">
                    <div class="col-lg-6 col-7">
                      <h6>신고내역</h6>
                    </div>
                    <div class="col-lg-6 col-5 my-auto text-end">
                      <div class="dropdown float-lg-end pe-4">
                        <a class="cursor-pointer" id="dropdownTable" data-bs-toggle="dropdown" aria-expanded="false">
                          <i class="fa fa-ellipsis-v text-secondary"></i>
                        </a>
                        <ul class="dropdown-menu px-2 py-3 ms-sm-n4 ms-n5" aria-labelledby="dropdownTable">
                          <li>
                            <a class="dropdown-item border-radius-md" href="javascript:;">Action</a>
                          </li>
                          <li>
                            <a class="dropdown-item border-radius-md" href="javascript:;">Another action</a>
                          </li>
                          <li>
                            <a class="dropdown-item border-radius-md" href="javascript:;">Something else here</a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="card-body px-0 pb-2">
                  <div class="table-responsive">
                    <table class="table align-items-center mb-0">
                      <thead>
                        <tr>
                          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            글 번호
                          </th>
                          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                            글 제목
                          </th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            신고사유
                          </th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            신고자
                          </th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            신고대상
                          </th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            신고일자
                          </th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${reportList}" var="vo">
                          <tr>
                            <td>
                              <div class="d-flex px-2 py-1">
                                <div class="d-flex flex-column justify-content-center">
                                  <a href="../board/noticesangse?nNUM=${noticevo.nNUM}"
                                    style="margin-left: 22px">${vo.rNum}</a>
                                </div>
                              </div>
                            </td>
                            <td>
                              <a href="../board/noticesangse?nNUM=${noticevo.nNUM}">${vo.rTitle}</a>
                            </td>
                            <td class="align-middle text-center text-sm">
                              <a href="../board/noticesangse?nNUM=${noticevo.nNUM}">${vo.rClass}</a>
                            </td>
                            <td class="align-middle text-center">
                              <a href="../board/noticesangse?nNUM=${noticevo.nNUM}">${vo.mId}</a>
                            </td>
                            <td class="align-middle text-center">
                              <a href="../pages/modifyNotice?nNUM=${noticevo.nNUM}">
                                ${vo.rOpponent}</a>
                            </td>
                            <td class="align-middle text-center">
                              <a href="deleteNotice?nNUM=${noticevo.nNUM}">${vo.rDate}</a>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-lg-4 col-md-6">
              <div class="card h-100">
                <div class="card-header pb-0">
                  <a href="notice">
                    <h6>공지사항</h6>
                  </a>
                  <p class="text-sm">
                    <i class="fa fa-check text-info" aria-hidden="true"></i>
                    <a href="notice"><span class="font-weight-bold">총 &ensp; ${cnt} 개의 게시물</span></a>
                  </p>
                </div>
                <div class="card-body p-3">
                  <c:forEach items="${noticeFive}" var="noticevo">
                    <div class="timeline timeline-one-side">

                      <div class="timeline-block mb-3">
                        <span class="timeline-step">
                          <i class="ni ni-bell-55 text-success text-gradient"></i>
                        </span>
                        <div class="timeline-content">

                          <a href="notice">
                            <h6 class="text-dark text-sm font-weight-bold mb-0">${noticevo.nTITLE}</h6>
                          </a>
                          <a href="notice?nNUM=${noticevo.nNUM}">
                            <p class="text-secondary font-weight-bold text-xs mt-1 mb-0">
                              ${noticevo.nDATE}
                            </p>
                          </a>
                        </div>
                      </div>
                  </c:forEach>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      
      
    </main>
    ${rNum}
    <button id="che">확인</button>
    <input id="firstNum" type="text" value="${rNum}"> <!-- 이전 신고 번호 -->
    <input id="firstNum2" type="text" value="${rNum}"> <!-- 제일 최근 신고 번호 -->
      <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
          <i class="fa fa-cog py-2"> </i>
        </a>
      </div>
      <!--   Core JS Files   -->
      <script src="../assets/js/core/popper.min.js"></script>
      <script src="../assets/js/core/bootstrap.min.js"></script>
      <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
      <script src="../assets/js/plugins/chartjs.min.js"></script>
      <script src="../assets/js/shortcodes.js"></script>
      <script type="text/javascript"
        src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"></script>
      <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.flash.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
      <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
      <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"></script>
      <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.print.min.js"></script>


      <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.23.0/moment.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/chartjs-plugin-datalabels@0.7.0"></script>

      <script>
        var win = navigator.platform.indexOf("Win") > -1;
        if (win && document.querySelector("#sidenav-scrollbar")) {
          var options = {
            damping: "0.5",
          };
          Scrollbar.init(document.querySelector("#sidenav-scrollbar"), options);
        }
      </script>


      <script>
        // 왼쪽 날짜 선택 했을 경우, 오른쪽 날짜의 최솟값을 왼쪽 날짜로 지정
        function checkDate3(event) {
          alert("확인")
          var regdate2 = document.getElementById("regdate2");
          regdate2.value = null;
          regdate2.setAttribute("min", regdate1.value);
        }
        // checkdate1 finish

        // checkDate2 start ( 오른쪽 날짜 지정)
        function checkDate4(event) {
          function colorize() {
            var r = Math.floor(Math.random() * 200);
            var g = Math.floor(Math.random() * 200);
            var b = Math.floor(Math.random() * 200);
            var color = "rgba(" + r + ", " + g + ", " + b + ", 0.7)";
            return color;
          }
          var day1 = regdate1.value;
          var day2 = regdate2.value;
          if (day1 == "") {
            // 날짜 선택 관련 유효성 검사
            alert("왼쪽의 날짜부터 선택해주세요.");
            regdate2.value = null;
          }

          var vo = { date1: day1, date2: day2 };
          var labelList2 = new Array();
          var valueList2 = new Array();

          var colorList2 = new Array();

          $.ajax({
            url: "saveDate",
            type: "get",
            data: vo,
            cache: "false",
            async: false,
            contentType: "application/x-www-form-urlencoded;charset=UTF-8",
            dataType: "json",

            success: function (json2) {
              //alert("성공dsds");
              //alert(json2);
              $.each(json2, function (index, value) {
                labelList2.push(value.sCategory);
                valueList2.push(parseInt(value.sCount));
                colorList2.push(colorize());
              });

              var data2 = {
                labels: labelList2,
                datasets: [
                  {
                    label: "태그 별 스터디룸 통계",
                    backgroundColor: colorList2,
                    data: valueList2,
                  },
                ],
                options: {
                  title: {
                    display: true,
                    text: "태그 별 스터디룸 통계",
                  },
                },
              };
              console.log(data2);
              if (window.chartObj != undefined) {
                window.chartObj.destroy();
              }

              var ctx2 = document.getElementById("canvas-daychart").getContext("2d");
              chartObj = new Chart(ctx2, {
                type: "pie",
                data: data2,
                options: {
                  legend: {
                    position: "top",
                  },
                  scales: {
                    xAxes: [
                      {
                        ticks: {
                          display: false,
                        },
                      },
                    ],
                    yAxes: [
                      {
                        ticks: {
                          display: false,
                        },
                      },
                    ],
                  },
                  plugins: {
                    //그래프에 데이터 직접 표시 (마우스 올렸을때가 아니라 그래프 자체에 데이터표시)
                    datalabels: {
                      borderRadius: 4,
                      color: "#4e342e",
                      font: {
                        weight: "bold",
                      },
                      formatter: function (value, context) {
                        var idx = context.dataIndex;
                        return context.chart.data.labels[idx]; // 태그 라벨 붙이기 ( ex) 어학 , 독서 , ...)
                      },
                      padding: 1,
                      align: "end",
                    },
                  },
                },
              });
            },
            error: function (err) {
              alert("error");
              console.log(err);
            },
          }); //end of ajax
        }

      </script>

      <!-- Github buttons -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
      <script src="../assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
      <script src="../assets/js/alert.js"></script> <!--웹 소켓 알림 정환 추가-->

    </body>

    </html>