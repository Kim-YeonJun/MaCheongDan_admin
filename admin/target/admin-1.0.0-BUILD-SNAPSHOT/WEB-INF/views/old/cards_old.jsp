<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<!DOCTYPE html>
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
    <link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">

  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/fonts/boxicons.css'/>" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/css/core.css" class="template-customizer-core-css'/>" />
  <link rel="stylesheet" href="<c:url value='/assets/vendor/css/theme-default.css" class="template-customizer-theme-css'/>" />
  <link rel="stylesheet" href="<c:url value='/assets/css/demo.css'/>" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css'/>" />

  <!-- Page CSS -->

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
        <li class="menu-item">
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
              <a href="<c:url value='/account'/>" class="menu-link">
                <div data-i18n="Account">Account</div>
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

        <!-- Components -->
        <li class="menu-header small text-uppercase"><span class="menu-header-text">Components</span></li>
        <!-- Cards -->
        <li class="menu-item active">
          <a href="<c:url value="/cards"/>" class="menu-link">
            <i class="menu-icon tf-icons bx bx-collection"></i>
            <div data-i18n="Basic">Cards</div>
          </a>
        </li>
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
              <i class="bx bx-search fs-4 lh-0"></i>
              <input
                      type="text"
                      class="form-control border-0 shadow-none"
                      placeholder="Search..."
                      aria-label="Search..."
              />
            </div>
          </div>
          <!-- /Search -->

          <ul class="navbar-nav flex-row align-items-center ms-auto">

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
                        <span class="fw-semibold d-block">John Doe</span>
                        <small class="text-muted">Admin</small>
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
                  <a class="dropdown-item" href="auth-login-basic.html">
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
      <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">UI Elements /</span> Cards Basic</h4>

          <!-- Examples -->
          <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/2.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    Some quick example text to build on the card title and make up the bulk of the card's content.
                  </p>
                  <a href="javascript:void(0)" class="btn btn-outline-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                </div>
                <img class="img-fluid" src="<c:url value='/assets/img/elements/13.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <p class="card-text">Bear claw sesame snaps gummies chocolate.</p>
                  <a href="javascript:void(0);" class="card-link">Card link</a>
                  <a href="javascript:void(0);" class="card-link">Another link</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card h-100">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <h6 class="card-subtitle text-muted">Support card subtitle</h6>
                  <img
                          class="img-fluid d-flex mx-auto my-4"
                          src="<c:url value='/assets/img/elements/4.jpg'/>"
                          alt="Card image cap"
                  />
                  <p class="card-text">Bear claw sesame snaps gummies chocolate.</p>
                  <a href="javascript:void(0);" class="card-link">Card link</a>
                  <a href="javascript:void(0);" class="card-link">Another link</a>
                </div>
              </div>
            </div>
          </div>
          <!-- Examples -->

          <!-- Content types -->
          <h5 class="pb-1 mb-4">Content types</h5>

          <div class="row mb-5">
            <div class="col-md-6 col-lg-4">
              <h6 class="mt-2 text-muted">Body</h6>
              <div class="card mb-4">
                <div class="card-body">
                  <p class="card-text">
                    This is some text within a card body. Jelly lemon drops tiramisu chocolate cake cotton candy
                    soufflé oat cake sweet roll. Sugar plum marzipan dragée topping cheesecake chocolate bar. Danish
                    muffin icing donut.
                  </p>
                </div>
              </div>
              <h6 class="mt-2 text-muted">Titles, text, and links</h6>
              <div class="card mb-4">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <div class="card-subtitle text-muted mb-3">Card subtitle</div>
                  <p class="card-text">
                    Some quick example text to build on the card title and make up the bulk of the card's content.
                  </p>
                  <a href="javascript:void(0)" class="card-link">Card link</a>
                  <a href="javascript:void(0)" class="card-link">Another link</a>
                </div>
              </div>
              <h6 class="mt-2 text-muted">List groups</h6>
              <div class="card mb-4">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Dapibus ac facilisis in</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
              </div>
            </div>
            <div class="col-md-6 col-lg-4">
              <h6 class="mt-2 text-muted">Images</h6>
              <div class="card mb-4">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/5.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <p class="card-text">
                    Some quick example text to build on the card title and make up the bulk of the card's content.
                  </p>
                  <p class="card-text">
                    Cookie topping caramels jujubes gingerbread. Lollipop apple pie cupcake candy canes cookie ice
                    cream. Wafer chocolate bar carrot cake jelly-o.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4">
              <h6 class="mt-2 text-muted">Kitchen sink</h6>
              <div class="card">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/7.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
                <ul class="list-group list-group-flush">
                  <li class="list-group-item">Cras justo odio</li>
                  <li class="list-group-item">Vestibulum at eros</li>
                </ul>
                <div class="card-body">
                  <a href="javascript:void(0)" class="card-link">Card link</a>
                  <a href="javascript:void(0)" class="card-link">Another link</a>
                </div>
              </div>
            </div>
          </div>

          <h6 class="pb-1 mb-4 text-muted">Header and footer</h6>
          <div class="row mb-5">
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card">
                <div class="card-header">Featured</div>
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">
                    With supporting text below as a natural lead-in to additional content natural lead-in to
                    additional content.
                  </p>
                  <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card">
                <h5 class="card-header">Quote</h5>
                <div class="card-body">
                  <blockquote class="blockquote mb-0">
                    <p>
                      Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.Lorem
                      ipsum dolor sit amet, consectetur.
                    </p>
                    <footer class="blockquote-footer">
                      Someone famous in
                      <cite title="Source Title">Source Title</cite>
                    </footer>
                  </blockquote>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
              <div class="card text-center">
                <div class="card-header">Featured</div>
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural.</p>
                  <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                </div>
                <div class="card-footer text-muted">2 days ago</div>
              </div>
            </div>
          </div>
          <!--/ Content types -->

          <!-- Text alignment -->
          <h5 class="pb-1 mb-4">Text alignment</h5>
          <div class="row mb-5">
            <div class="col-md-6 col-lg-4">
              <div class="card mb-3">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4">
              <div class="card text-center mb-3">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-lg-4">
              <div class="card text-end mb-3">
                <div class="card-body">
                  <h5 class="card-title">Special title treatment</h5>
                  <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                  <a href="javascript:void(0)" class="btn btn-primary">Go somewhere</a>
                </div>
              </div>
            </div>
          </div>
          <!--/ Text alignment -->

          <!-- Images -->
          <h5 class="pb-1 mb-4">Images caps & overlay</h5>
          <div class="row mb-5">
            <div class="col-md-6 col-xl-4">
              <div class="card mb-3">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/18.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a wider card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.
                  </p>
                  <p class="card-text">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card mb-3">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a wider card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.
                  </p>
                  <p class="card-text">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </p>
                </div>
                <img class="card-img-bottom" src="<c:url value='/assets/img/elements/1.jpg'/>" alt="Card image cap" />
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card bg-dark border-0 text-white">
                <img class="card-img" src="<c:url value='/assets/img/elements/11.jpg'/>" alt="Card image" />
                <div class="card-img-overlay">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a wider card with supporting text below as a natural lead-in to additional content. This
                    content is a little bit longer.
                  </p>
                  <p class="card-text">Last updated 3 mins ago</p>
                </div>
              </div>
            </div>
          </div>
          <!--/ Images -->

          <!-- Horizontal -->
          <h5 class="pb-1 mb-4">Horizontal</h5>
          <div class="row mb-5">
            <div class="col-md">
              <div class="card mb-3">
                <div class="row g-0">
                  <div class="col-md-4">
                    <img class="card-img card-img-left" src="<c:url value='/assets/img/elements/12.jpg'/>" alt="Card image" />
                  </div>
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">
                        This is a wider card with supporting text below as a natural lead-in to additional content.
                        This content is a little bit longer.
                      </p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md">
              <div class="card mb-3">
                <div class="row g-0">
                  <div class="col-md-8">
                    <div class="card-body">
                      <h5 class="card-title">Card title</h5>
                      <p class="card-text">
                        This is a wider card with supporting text below as a natural lead-in to additional content.
                        This content is a little bit longer.
                      </p>
                      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                  </div>
                  <div class="col-md-4">
                    <img class="card-img card-img-right" src="<c:url value='/assets/img/elements/17.jpg'/>" alt="Card image" />
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!--/ Horizontal -->

          <!-- Style variation -->
          <h5 class="pb-1 mb-4">Style variation</h5>
          <div class="row">
            <div class="col-md-6 col-xl-4">
              <div class="card bg-primary text-white mb-3">
                <div class="card-header">Header</div>
                <div class="card-body">
                  <h5 class="card-title text-white">Primary card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card bg-secondary text-white mb-3">
                <div class="card-header">Header</div>
                <div class="card-body">
                  <h5 class="card-title text-white">Secondary card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card bg-success text-white mb-3">
                <div class="card-header">Header</div>
                <div class="card-body">
                  <h5 class="card-title text-white">Success card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card bg-danger text-white mb-3">
                <div class="card-header">Header</div>
                <div class="card-body">
                  <h5 class="card-title text-white">Danger card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card bg-warning text-white mb-3">
                <div class="card-header">Header</div>
                <div class="card-body">
                  <h5 class="card-title text-white">Warning card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card bg-info text-white mb-3">
                <div class="card-header">Header</div>
                <div class="card-body">
                  <h5 class="card-title text-white">Info card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
          </div>
          <!-- Outline -->
          <div class="row">
            <div class="col-md-6 col-xl-4">
              <div class="card shadow-none bg-transparent border border-primary mb-3">
                <div class="card-body">
                  <h5 class="card-title">Primary card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card shadow-none bg-transparent border border-secondary mb-3">
                <div class="card-body">
                  <h5 class="card-title">Secondary card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card shadow-none bg-transparent border border-success mb-3">
                <div class="card-body">
                  <h5 class="card-title">Success card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card shadow-none bg-transparent border border-danger mb-3">
                <div class="card-body">
                  <h5 class="card-title">Danger card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card shadow-none bg-transparent border border-warning mb-3">
                <div class="card-body">
                  <h5 class="card-title">Warning card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
            <div class="col-md-6 col-xl-4">
              <div class="card shadow-none bg-transparent border border-info mb-3">
                <div class="card-body">
                  <h5 class="card-title">Info card title</h5>
                  <p class="card-text">Some quick example text to build on the card title and make up.</p>
                </div>
              </div>
            </div>
          </div>
          <!--/ Style variation -->

          <!-- Card layout -->
          <h5 class="pb-1 my-5">Card layout</h5>

          <!-- Card Groups -->
          <h6 class="pb-1 mb-4 text-muted">Card Groups</h6>
          <div class="card-group mb-5">
            <div class="card">
              <img class="card-img-top" src="<c:url value='/assets/img/elements/4.jpg'/>" alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural lead-in to additional content. This
                  content is a little bit longer.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" src="<c:url value='/assets/img/elements/5.jpg'/>" alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This card has supporting text below as a natural lead-in to additional content.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
            <div class="card">
              <img class="card-img-top" src="<c:url value='/assets/img/elements/1.jpg'/>" alt="Card image cap" />
              <div class="card-body">
                <h5 class="card-title">Card title</h5>
                <p class="card-text">
                  This is a wider card with supporting text below as a natural lead-in to additional content. This
                  card has even longer content than the first to show that equal height action.
                </p>
              </div>
              <div class="card-footer">
                <small class="text-muted">Last updated 3 mins ago</small>
              </div>
            </div>
          </div>

          <!-- Grid Card -->
          <h6 class="pb-1 mb-4 text-muted">Grid Card</h6>
          <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
            <div class="col">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/2.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                    This content is a little bit longer.
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/13.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                    This content is a little bit longer.
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/4.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/18.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                    This content is a little bit longer.
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/19.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                    This content is a little bit longer.
                  </p>
                </div>
              </div>
            </div>
            <div class="col">
              <div class="card h-100">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/20.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                    This content is a little bit longer.
                  </p>
                </div>
              </div>
            </div>
          </div>

          <!-- Masonry -->
          <h6 class="pb-1 mb-4 text-muted">Masonry</h6>
          <div class="row" data-masonry='{"percentPosition": true }'>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/5.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title that wraps to a new line</h5>
                  <p class="card-text">
                    This is a longer card with supporting text below as a natural lead-in to additional content.
                    This content is a little bit longer.
                  </p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card p-3">
                <figure class="p-3 mb-0">
                  <blockquote class="blockquote">
                    <p>A well-known quote, contained in a blockquote element.</p>
                  </blockquote>
                  <figcaption class="blockquote-footer mb-0 text-muted">
                    Someone famous in <cite title="Source Title">Source Title</cite>
                  </figcaption>
                </figure>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/18.jpg'/>" alt="Card image cap" />
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This card has supporting text below as a natural lead-in to additional content.
                  </p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card bg-primary text-white text-center p-3">
                <figure class="mb-0">
                  <blockquote class="blockquote">
                    <p>A well-known quote, contained in a blockquote element.</p>
                  </blockquote>
                  <figcaption class="blockquote-footer mb-0 text-white">
                    Someone famous in <cite title="Source Title">Source Title</cite>
                  </figcaption>
                </figure>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card text-center">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">This card has a regular title and short paragraph of text below it.</p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card">
                <img class="card-img-top" src="<c:url value='/assets/img/elements/4.jpg'/>" alt="Card image cap" />
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card p-3 text-end">
                <figure class="mb-0">
                  <blockquote class="blockquote">
                    <p>A well-known quote, contained in a blockquote element.</p>
                  </blockquote>
                  <figcaption class="blockquote-footer mb-0 text-muted">
                    Someone famous in <cite title="Source Title">Source Title</cite>
                  </figcaption>
                </figure>
              </div>
            </div>
            <div class="col-sm-6 col-lg-4 mb-4">
              <div class="card">
                <div class="card-body">
                  <h5 class="card-title">Card title</h5>
                  <p class="card-text">
                    This is another card with title and supporting text below. This card has some additional content
                    to make it slightly taller overall.
                  </p>
                  <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
              </div>
            </div>
          </div>
          <!--/ Card layout -->
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
<script src="<c:url value='/assets/vendor/libs/masonry/masonry.js'/>"></script>

<!-- Main JS -->
<script src="<c:url value='/assets/js/main.js'/>"></script>

<!-- Page JS -->

<!-- Place this tag in your head or just before your close body tag. -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>
