<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
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
    <link href="https://fonts.googleapis.com/css?family=Gugi:400" rel="stylesheet">

  <!-- Icons. Uncomment required icon fonts -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/fonts/boxicons.css'/>" />

  <!-- Core CSS -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/css/core.css'/>" class="template-customizer-core-css" />
  <link rel="stylesheet" href="<c:url value='/assets/vendor/css/theme-default.css'/>" class="template-customizer-theme-css" />
  <link rel="stylesheet" href="<c:url value='/assets/css/demo.css'/>" />

  <!-- Vendors CSS -->
  <link rel="stylesheet" href="<c:url value='/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css'/>" />
  <!-- Page CSS -->

  <!-- div placeholder // contenteditable="true" -->
  <style>
    #notice_content {
      min-height: 350px;
    }

    [contenteditable="true"] {
      min-height: 350px;
    }
    [contenteditable="true"]:empty:before {
      content: attr(placeholder);
      color: #697a8d94;
      transition: 0.2s;
    }
    [contenteditable="true"]:focus:before {
      padding-left: 5px;
    }
    [contenteditable="true"]>p{
      margin: 0;
    }
  </style>
  <script>document.execCommand('defaultParagraphSeparator', false, 'p');</script>
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
                <a href="<c:url value="/employee/list"/>" class="menu-link">
                    <div data-i18n="Board" style="font-family : 'Gugi'">사원 리스트</div>
                </a>
            </li>
          </ul>
        </li>

        <!-- Forms & Tables -->
        <li class="menu-header small text-uppercase"><span class="menu-header-text">Forms &amp; Tables</span></li>
        <!-- Tables -->
        <li class="menu-item active">
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

      <script>
        let msg = "${msg}";
        if(msg=="WRT_ERR") alert("게시물 등록에 실패하였습니다. 다시 시도해 주세요.");
        if(msg=="MOD_ERR") alert("게시물 수정에 실패하였습니다. 다시 시도해 주세요.");
      </script>

      <div class="content-wrapper">
        <!-- Content -->
        <div class="container-xxl flex-grow-1 container-p-y">
          <h4 class="fw-bold py-3 mb-4">공지사항 글쓰기</h4>
          <!-- Basic Layout -->
          <div class="row ">
            <div class="col-xl">
              <div class="card mb-4">
<%--                <div class="card-header d-flex justify-content-between align-items-center">--%>
<%--                  <h5 class="mb-0">Basic Layout</h5>--%>
<%--                  <small class="text-muted float-end">Default label</small>--%>
<%--                </div>--%>
                <div class="card-body">
                  <form:form modelAttribute="noticeBoardDto">
                    <div class="mb-3">
                      <label class="form-label" for="notice_title">제목(TITLE)</label>
                      <input type="text" class="form-control" id="notice_title" name="title" placeholder="제목을 입력해주세요." value="<c:out value='${noticeBoardDto.title}'/>" />
                    </div>
                    <div class="mb-3">
                      <label class="form-label" for="notice_content">내용(CONTENT)</label>
                      <textarea class="form-control" style="resize: none;" id="notice_content" name="notice_content" placeholder="내용을 입력해주세요."><c:out value='${noticeBoardDto.content}'/></textarea>
<%--                      <label class="form-label" for="notice_content">내용(CONTENT)</label>--%>
<%--                      <div class="form-control" id="notice_content" placeholder="내용을 입력해주세요." contenteditable="true" value="<c:out value='${noticeBoardDto.content}'/>" ></div>--%>
                    </div>
                    <input type="hidden" id="content" name="content"/>
                    <button type="submit" id="write_btn" class="btn btn-primary float-end">등록</button>
                  </form:form>
                </div>
              </div>
            </div>
          </div>
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

<!-- Main JS -->
<script src="<c:url value='/assets/js/main.js'/>"></script>

<!-- Page JS -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<script>
  $(document).ready(function () {
    $('#write_btn').click(function () {

      let form = document.getElementById("noticeBoardDto");
      if(form.title.value.trim()=="") {
        alert("제목을 입력해 주세요.");
        form.title.focus();
        return false;
      }

      // alert(form.content.textContent);
      if(form.notice_content.value.trim()=="") {
        alert("내용을 입력해 주세요.");
        form.notice_content.focus();
        return false;
      }

      // 줄바꿈 <br/>변환 저장
      form.content.value = form.notice_content.value.replaceAll(/(\n|\r\n)/g,"<br/>")

      // contenteiable 사용시
      // $('#content').val($('#notice_content').html());
      // let content_Chk = $('#notice_content').text();
      // $('#content').val(content_Chk);
      // if(content_Chk.trim()=="") {
      //   alert("내용을 입력해 주세요.");
      //   $('#notice_content').focus();
      //   return false;
      // }

      return true;
    });


    // //contenteiable 사용시 클립보드 PASTE 방지
    // let notice_content = document.getElementById("notice_content");
    //
    // notice_content.addEventListener('paste', function (e) {
    //   e.preventDefault();
    //   const clipboardData = e.clipboardData;
    //   const getText = clipboardData.getData('text/plain');
    //   const text = $('#notice_content').html();
    //
    //   const selection = document.getSelection();
    //   const range = selection.getRangeAt(0);
    //   const start = range.startOffset;	// 텍스트 선택 시작 위치
    //   const end = range.endOffset;	// 텍스트 선택 마지막 위치
    //
    //   const before = text.slice(0, start);
    //   const after = text.slice(end);
    //   $('#notice_content').html(before + getText + after);
    //   selection.collapseToEnd();
    // });

  });
</script>
</body>
</html>
