<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

    <!-- Helpers -->
    <script src="<c:url value='/assets/vendor/js/helpers.js'/>"></script>
    <script src="<c:url value='/assets/js/config.js'/>"></script>
    <style>
        .paging-active {
            background-color: rgb(216, 216, 216);
            border-radius: 5px;
            color: rgb(24, 24, 24);
        }
    </style>
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
                    <span class="app-brand-text demo menu-text fw-bolder ms-2"  style="font-family: 'MapoBackpacking'">마청단</span>
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
                <li class="menu-item active">
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
                    <form action="<c:url value="/employee/list"/>" method="get" id="search_frm">
                        <div class="navbar-nav align-items-center">
                            <div class="nav-item d-flex align-items-center">
                                <select name="option" class="form-select form-select-sm pe-0 me-1">
                                    <option value="A" ${ph.sc.option=='A' || ph.sc.option=='' ? "selected" : ""}>아이디+이메일</option>
                                    <option value="N" ${ph.sc.option=='N' ? "selected" : ""}>이름</option>
                                    <option value="E" ${ph.sc.option=='E' ? "selected" : ""}>이메일</option>
                                </select>
                                <a href="javascript:void(0);" class="link-secondary"><i class="bx bx-search fs-4 lh-0" onclick="document.getElementById('search_frm').submit();"></i></a>
                                <input
                                    type="text"
                                    class="form-control border-0 shadow-none search-input"
                                    placeholder="Search..."
                                    aria-label="Search..."
                                    name="keyword"
                                    type="text"
                                    value="${ph.sc.keyword}"
                                />
                            </div>
                        </div>
                    </form>
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
                if(msg=="LIST_ERR")  alert("사원 목록을 가져오는데 실패했습니다. 다시 시도해 주세요.");
            </script>

            <!-- Content wrapper -->
            <div class="content-wrapper">
                <!-- Content -->
                <div class="container-xxl flex-grow-1 container-p-y">
                    <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light"></span> 사원 리스트 </h4>
                    <hr class="my-1" />
                    <!-- Hoverable Table rows -->
                    <div class="card">
                        <!-- <h5 class="card-header">Hoverable rows</h5> -->
                        <div class="table-responsive text-nowrap">
                            <table class="table table-hover">
                                <thead class="table-primary text-center">
                                <tr>
                                    <th style="min-width: 80px;">번호</th>
                                    <th class="" style="min-width: 80px;">아이디</th>
                                    <th class="" style="min-width: 80px;">이름</th>
                                    <th style="min-width: 80px;">성별</th>
                                    <th style="min-width: 80px;">팀</th>
                                    <th style="min-width: 80px;">직책</th>
                                    <th style="min-width: 80px;">전화번호</th>
                                    <th style="min-width: 80px;">이메일</th>
                                    <th style="min-width: 66px;">작성일</th>
                                </tr>
                                </thead>
                                <tbody class="table-border-bottom-0  text-center">
                                <c:if test="${totalCnt==null || totalCnt==0}">
                                <tr>
                                    <td colspan="4">
                                        회원이 존재 하지 않습니다.
                                    </td>
                                </tr>
                                </c:if>
                                <c:forEach var="userDto" items="${list}">
                                <tr id="notice">
                                    <td>${userNo = userNo - 1}</td>
                                    <td>${userDto.userId}</td>
                                    <c:choose>
                                        <c:when test="${ (user_auth == '100' || user_auth == '200') }">
                                            <td><a href="<c:url value="/employee/read${ph.sc.queryString}&userId=${userDto.userId}&userNo=${userNo}"/>"><c:out value='${userDto.userName}'/></a></td>
                                        </c:when>
                                        <c:otherwise>
                                            <td>${userDto.userName}</td>
                                        </c:otherwise>
                                    </c:choose>

                                    <td>${userDto.userGender}</td>
                                    <td>${userDto.userTeamName}</td>
                                    <td>${userDto.userPosName}</td>
                                    <td>${userDto.userPhone}</td>
                                    <td>${userDto.userEmail}</td>
                                    <td>${userDto.insertDate}</td>
                                </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="mt-3 w-100 position-relative">
                        <c:if test="${user_auth == '100' || user_auth == '200'}">
                            <div class="position-absolute end-0">
                                <button class="btn btn-primary w-px-120" onclick="location.href='<c:url value="/employee/addemp"/>'">사원 등록</button>
                            </div>
                        </c:if>
                        <div class="d-flex justify-content-center d-grid gap-2">
                            <c:if test="${totalCnt!=null && totalCnt!=0}">
                                <c:if test="${ph.showPrev}">
                                    <a class="page" href="<c:url value="/employee/list${ph.sc.getQueryString(ph.beginPage-1)}"/>">&lt;</a>
                                </c:if>
                                <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                                    <a class="page ${i==ph.sc.page? "paging-active" : ""}" href="<c:url value="/employee/list${ph.sc.getQueryString(i)}"/>">${i}</a>
                                </c:forEach>
                                <c:if test="${ph.showNext}">
                                    <a class="page" href="<c:url value="/employee/list${ph.sc.getQueryString(ph.endPage+1)}"/>">&gt;</a>
                                </c:if>
                            </c:if>
                        </div>
                    </div>
                    <!--/ Hoverable Table rows -->
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
</body>
</html>

