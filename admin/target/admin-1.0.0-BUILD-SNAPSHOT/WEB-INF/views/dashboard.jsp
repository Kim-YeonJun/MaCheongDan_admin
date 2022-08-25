<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="true"%>
<c:set var="loginId" value="${sessionScope.id}"/>
<c:set var="user_auth" value="${sessionScope.auth}"/>
<c:set var="user_name" value="${sessionScope.name}"/>
<c:set var="user_authName" value="${sessionScope.authName}"/>
<!DOCTYPE html>
<!-- beautify ignore:start -->
<html
        lang="en"
        class="light-style layout-menu-fixed"
        dir="ltr"
        data-theme="theme-default"
        data-assets-path="<c:url value='/assets/'/>"
        data-template="vertical-menu-template-free"
>
<head>
  <meta charset="utf-8" />
  <meta
          name="viewport"
          content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
  />

  <title> 관리자 페이지 </title>

  <meta name="description" content="" />

  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="<c:url value='/assets/img/favicon/favicon.ico'/>" />

  <!-- Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link
            href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
            rel="stylesheet"
  />
  <link href="https://fonts.googleapis.com/css?family=Cute+Font:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Gugi:400,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Gaegu:700" rel="stylesheet">
  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/fonts/boxicons.css'/>" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/css/core.css'/>" class="template-customizer-core-css" />
  <link rel="stylesheet" href="<c:url value='/assets/vendor/css/theme-default.css'/>" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="<c:url value='/assets/css/demo.css'/>" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css'/>" />

  <link rel="stylesheet" href="<c:url value='/assets/vendor/libs/apex-charts/apex-charts.css'/>" />

  <!-- Page CSS -->

  <%-- Chart Js --%>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
  <!-- Helpers -->
  <script src="<c:url value='/assets/vendor/js/helpers.js'/>"></script>
  <script src="<c:url value='/assets/js/config.js'/>"></script>
</head>

<body style="font-family: 'MapoPeacefull'">
<!-- Layout wrapper -->
<div class="layout-wrapper layout-content-navbar">
  <div class="layout-container">
    <!-- Menu -->
    <aside id="layout-menu" class="layout-menu menu-vertical menu bg-menu-theme">
      <div class="app-brand demo">
        <a href="<c:url value='/dashboard'/>" class="app-brand-link">
              <span class="app-brand-logo demo">
                <img class="w-px-50" src="<c:url value='/assets/img/icons/brands/mapo.jpeg'/>">
              </span>
          <span class="app-brand-text demo menu-text fw-bolder ms-2" style="font-family: 'MapoBackpacking'">마청단</span>
        </a>

        <a href="javascript:void(0);" class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
          <i class="bx bx-chevron-left bx-sm align-middle"></i>
        </a>
      </div>
      <div class="menu-inner-shadow"></div>
      <ul class="menu-inner py-1">
        <!-- Dashboard -->
        <li class="menu-item active">
          <a href="<c:url value='/dashboard'/>" class="menu-link">
            <i class="menu-icon tf-icons bx bx-home-circle"></i>
            <div data-i18n="Analytics" style="font-family : 'Gugi'">대쉬보드</div>
          </a>
        </li>
        <li class="menu-header small text-uppercase">
          <span class="menu-header-text">Pages</span>
        </li>
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <i class="menu-icon tf-icons bx bx-dock-top"></i>
            <div data-i18n="Account Settings" style="font-family : 'Gugi'">사원관리</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
                <a href="<c:url value="/employee/list"/>" class="menu-link">
                    <div data-i18n="Board" style="font-family : 'Gugi'">사원 리스트</div>
                </a>
            </li>
          </ul>
        </li>

        <!-- Forms & Tables -->
        <li class="menu-header small text-uppercase"><span class="menu-header-text">Forms &amp; Tables</span></li>
        <!-- Tables -->
        <li class="menu-item">
          <a href="javascript:void(0);" class="menu-link menu-toggle">
            <i class="menu-icon tf-icons bx bx-table"></i>
            <div data-i18n="Tables" style="font-family : 'Gugi'">게시판</div>
          </a>
          <ul class="menu-sub">
            <li class="menu-item">
              <a href="<c:url value="/noticeboard/list"/>" class="menu-link">
                <div data-i18n="Notice" style="font-family : 'Gugi'">공지사항 게시판</div>
              </a>
            </li>
          </ul>
        </li>

        <%--<!-- Components -->
        <li class="menu-header small text-uppercase"><span class="menu-header-text">Components</span></li>
        <!-- Cards -->
        <li class="menu-item">
          <a href="<c:url value="/cards"/>" class="menu-link">
            <i class="menu-icon tf-icons bx bx-collection"></i>
            <div data-i18n="Basic">Cards</div>
          </a>
        </li>--%>
      </ul>
    </aside>
    <!-- / Menu -->

    <!-- Layout container -->
    <div class="layout-page">
      <!-- Navbar -->

      <nav
              class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
              id="layout-navbar"
      >
        <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
          <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
            <i class="bx bx-menu bx-sm"></i>
          </a>
        </div>

        <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
          <!-- Search -->
          <div class="navbar-nav align-items-center">
            <div class="nav-item d-flex align-items-center">
              <%--<i class="bx bx-search fs-4 lh-0"></i>
              <input
                      type="text"
                      class="form-control border-0 shadow-none"
                      placeholder="Search..."
                      aria-label="Search..."
              />--%>
            </div>
          </div>
          <!-- /Search -->

          <ul class="navbar-nav flex-row align-items-center ms-auto" style="font-family: 'MapoPeacefull'">

            <!-- User -->
            <li class="nav-item navbar-dropdown dropdown-user dropdown">
              <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                <div class="avatar avatar-online">
                  <img src="<c:url value='/assets/img/avatars/man.png'/>" alt class="w-px-40 h-auto rounded-circle" />
                </div>
              </a>
              <ul class="dropdown-menu dropdown-menu-end">
                <li>
                  <a class="dropdown-item" href="#">
                    <div class="d-flex">
                      <div class="flex-shrink-0 me-3">
                        <div class="avatar avatar-online">
                          <img src="<c:url value='/assets/img/avatars/man.png'/>" alt class="w-px-40 h-auto rounded-circle" />
                        </div>
                      </div>
                      <div class="flex-grow-1">
                        <span class="fw-semibold d-block">${user_name}</span>
                        <small class="text-muted">${user_authName}</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li>
                  <div class="dropdown-divider"></div>
                </li>
                <li>
                  <a class="dropdown-item" href="#" onClick="notReady()">
                    <i class="bx bx-user me-2"></i>
                    <span class="align-middle">My Profile</span>
                  </a>
                </li>
                <li>
                  <a class="dropdown-item" href="#" onClick="notReady()">
                    <i class="bx bx-cog me-2"></i>
                    <span class="align-middle">Settings</span>
                  </a>
                </li>
                <li>
                  <div class="dropdown-divider"></div>
                </li>
                <li>
                  <a class="dropdown-item" href="<c:url value="/logout"/>">
                    <i class="bx bx-power-off me-2"></i>
                    <span class="align-middle">Log Out</span>
                  </a>
                </li>
              </ul>
            </li>
            <!--/ User -->
          </ul>
        </div>
      </nav>

      <!-- / Navbar -->

      <!-- Content wrapper -->
      <div class="content-wrapper" style="font-family: 'MapoPeacefull', 'MapoFlowerIsland', 'Gaegu', 'Cute Font', 'Gugi'">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
          <div class="row">
            <div class="col-lg-8 mb-4 order-0">
              <div class="card h-100">
                <div class="row">
                  <div class="card-body d-sm-flex align-items-sm-center">
                    <div>
                      <h5 class="card-title text-primary">마포 청년 일자리 사업단</h5>
                      <p class="mb-4">
                        마포청년일자리사업은 공공기관의 기관 및 현장 과업, 직무교육, 기타 교육 등을 통해서 얻은 직무경험을 토대로 취업연계 및 민간일자리로 진입하는데 디딤돌 역할을 제공하는 청년일자리사업입니다.
                      </p>
                    </div>
                    <div class="w-100 d-flex justify-content-center">
                      <img
                              src="<c:url value='/assets/img/down/undraw_Interior_design_re_7mvn.png'/>"
                              style="max-width: 300px;"
                              alt="View Badge User"
                              data-app-dark-img="down/undraw_Interior_design_re_7mvn.png"
                              data-app-light-img="down/undraw_Interior_design_re_7mvn.png"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Transactions -->
            <div class="col-md-6 col-lg-4 order-2 mb-4">
              <div class="card h-100">
                <%--<div class="card-header d-flex align-items-center justify-content-between">

                </div>--%>
                <div class="card-body">
                  <h5 class="card-title m-0 me-2">사원의 남녀 성비</h5>
                  <div class="d-flex flex-column justify-content-center align-items-center mt-2">
                    <div style="width: 200px; height: 200px; /*border: 1px solid red*/">
                      <!--차트가 그려질 부분-->
                      <canvas id="myChart"></canvas>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!--/ Transactions -->
          </div>
          <div class="row">
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="card-title">앱개발 UIUX팀</h5>
                  <div class="d-flex w-100 justify-content-center mb-4">
                    <img class="card-img-top w-px-300" src="<c:url value='/assets/img/down/Dev_UIUX_TEAM.jpg'/>" alt="Card image cap" />
                  </div>
                  <%--<h6 class="card-subtitle text-muted">Support card subtitle</h6>--%>
                  <p class="card-text">
                    안드로이드,IOS. 앱 개발자 및 서버,DB개발 등의 직무경험을 쌓아서 개발자 직무로 취,창업 진입 성공에 목표를 두고 있습니다.
                  </p>
                  <%--<a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>--%>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="card-title">방송 컨텐츠팀</h5>
                  <div class="d-flex w-100 justify-content-center mb-4">
                    <img class="card-img-top w-px-300" src="<c:url value='/assets/img/down/undraw_Podcast_re_wr88.jpg'/>" alt="Card image cap" />
                  </div>
                  <p class="card-text">방송 컨텐츠와 관련된 분야의 취업을 목표로 운영되는 사업이며 영상 제작, 촬영, 유튜브 제작 및 편집, 기획, 방송PD 등의 직무의 경험 및 기타 교육 등을 통해서 사업 참여 이후 방송분야로 취,창업 진입 성공에 목표를 두고있습니다.</p>
                  <%--<a href="javascript:void(0);" class="card-link">Card link</a>
                  <a href="javascript:void(0);" class="card-link">Another link</a>--%>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="card-title">캐릭터 디자인팀</h5>
                  <%--<h6 class="card-subtitle text-muted">Support card subtitle</h6>--%>
                  <div class="d-flex w-100 justify-content-center mb-4">
                    <img class="card-img-top w-px-300 " src="<c:url value='/assets/img/down/Design_TEAM.jpg'/>" alt="Card image cap" />
                  </div>
                  <p class="card-text" >미술, 디자인 계통 전공자, 또는 그래픽 디자인, 애니메이션등의 교육을 수료한 청년으로서 포토샵, 일러스트 등의 툴을 다루고 사업 참여 이후 캐릭터 디자이너 취업 진입 성공에 목표를 두고 있습니다.</p>
                  <%--<a href="javascript:void(0);" class="card-link">Card link</a>
                  <a href="javascript:void(0);" class="card-link">Another link</a>--%>
                </div>
              </div>
            </div>
          </div>
          <!-- Examples -->

        </div>
        <!-- / Content -->

        <!-- Footer -->
        <footer class="content-footer footer bg-footer-theme">

        </footer>
        <!-- / Footer -->

        <div class="content-backdrop fade"></div>
      </div>
      <!-- Content wrapper -->
    </div>
    <!-- / Layout page -->
  </div>

  <!-- Overlay -->
  <div class="layout-overlay layout-menu-toggle"></div>
</div>
<!-- / Layout wrapper -->

<!-- Core JS -->
<!-- build:js assets/vendor/js/core.js -->
<script src="<c:url value='/assets/vendor/libs/jquery/jquery.js'/>"></script>
<script src="<c:url value='/assets/vendor/libs/popper/popper.js'/>"></script>
<script src="<c:url value='/assets/vendor/js/bootstrap.js'/>"></script>
<script src="<c:url value='/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js'/>"></script>

<script src="<c:url value='/assets/vendor/js/menu.js'/>"></script>
<!-- endbuild -->

<!-- Vendors JS -->
<script src="<c:url value='/assets/vendor/libs/apex-charts/apexcharts.js'/>"></script>

<!-- Main JS -->
<script src="<c:url value='/assets/js/main.js'/>"></script>

<!-- Page JS -->
<script src="<c:url value='/assets/js/dashboards-analytics.js'/>"></script>

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<script type="text/javascript">
  window.onload = function () {
    chart(${woman},${man});
  };

  function chart(woman, man) {
    let context = document.getElementById('myChart');
    const data = { // 차트에 들어갈 데이터
      labels: [
        //x 축
        '여자','남자'
      ],
      datasets: [
        { //데이터
          label: '성비', //차트 제목
          data: [
            woman, man //x축 label에 대응되는 데이터 값
          ],
          backgroundColor: [
            //색상
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)'
          ],
          borderColor: [
            //경계선 색상
            'rgba(255, 99, 132, 1)',
            'rgba(54, 162, 235, 1)'
          ],
          borderWidth: 1 //경계선 굵기
        }
      ]
    };

    let myChart = new Chart(context, {
      type: 'doughnut',   //'pie', // 차트의 형태
      data: data,
      options: {
        plugins: {
          title: {
            display: true,
            text: 'Chart Title',
          }
        }
      }
    });
  }
</script>
</body>
</html>
