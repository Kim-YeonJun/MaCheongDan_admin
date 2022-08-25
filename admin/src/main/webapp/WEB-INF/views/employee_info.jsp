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

    <!-- div placeholder // contenteditable="true" -->
    <style>
    </style>

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

            <div class="content-wrapper">
                <!-- Content -->
                <div class="container-xxl flex-grow-1 container-p-y">
                    <h4 class="fw-bold py-3 mb-4">사원 정보</h4>
                    <!-- Basic Layout -->
                    <div class="row ">
                        <div class="col-xl">
                            <div class="card mb-4">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h5 class="mb-0">번호 : <c:out value='${userNo}'/></h5>
                                    <div>
                                        <small class="text-muted float-end" style="text-align: right">
                                            작성일 : ${userDto.insertDate}<br>
                                            마지막 수정일 : ${userDto.updateDate}
                                        </small>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <form:form modelAttribute="userDto">
                                        <input type="hidden" name="updateId" value="<c:out value='${loginId}'/>"/>
                                        <input type="hidden" name="updateDate" value="<c:out value='${userDto.updateDate}'/>"/>
                                        <%--<input type="hidden" name="userAuthCode" value="<c:out value='${userDto.userAuthCode}'/>"/>--%>
                                        <input type="hidden" name="userId" value="<c:out value='${userDto.userId}'/>"/>
                                        <div class="mb-3">
                                            <label class="form-label" for="userId"> 아이디(Id)</label>
                                            <label class="form-control" id="userId"><c:out value='${userDto.userId}'/></label>
                                        </div>
                                        <%--<div class="mb-3 form-password-toggle">
                                            <label class="form-label" for="userPwd">패스워드(Password)</label>
                                            <div class="input-group input-group-merge">
                                                <input class="form-control" type="password" id="userPwd" name="userPwd" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" aria-describedby="userPwd" />
                                                <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                                            </div>
                                        </div>--%>
                                        <div class="mb-3">
                                            <label class="form-label" for="userName">이름(NAME)</label>
                                            <input class="form-control" type="text" id="userName" name="userName" placeholder="이름을 입력해주세요." value="<c:out value='${userDto.userName}'/>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" style="display: block">성별(GENDER)</label>
                                            <input class="form-check-input" type="radio" id="userGenderM" name="userGender" value="M" ${userDto.userGender == 'M' ? 'checked' : ''}/>
                                            <label class="form-label" for="userGenderM">남성(MAN)</label>
                                            <input class="form-check-input" type="radio" id="userGenderF" name="userGender" value="F" ${userDto.userGender == 'F'  ? 'checked' : ''}/>
                                            <label class="form-label" for="userGenderF">여성(WOMAN)</label>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userTeamCode">소속 팀(TEAM)</label>
                                            <select class="select2 form-select" id="userTeamCode" name="userTeamCode" >
                                                <option value="" ${userDto.userTeamCode == '' ? "selected" : ""}>소속 없음</option>
                                                <option value="100" ${userDto.userTeamCode == '100' ? "selected" : ""}>사업단 운영팀</option>
                                                <option value="200" ${userDto.userTeamCode == '200' ? "selected" : ""}>앱개발 UIUX</option>
                                                <option value="300" ${userDto.userTeamCode == '300' ? "selected" : ""}>방송 컨텐츠</option>
                                                <option value="400" ${userDto.userTeamCode == '400' ? "selected" : ""}>캐릭터 디자인</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userPosCode">직책(POSITION)</label>
                                            <select class="select2 form-select" id="userPosCode" name="userPosCode">
                                                <option value="" ${userDto.userPosCode == '' ? "selected" : ""}>소속 없음</option>
                                                <option value="100" ${userDto.userPosCode == '100' ? "selected" : ""}>매니저</option>
                                                <option value="200" ${userDto.userPosCode == '200' ? "selected" : ""}>리더</option>
                                                <option value="300" ${userDto.userPosCode == '300' ? "selected" : ""}>팀원</option>
                                            </select>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userPhone">전화번호(PHONE)</label>
                                            <input class="form-control" type="text" id="userPhone" name="userPhone" placeholder="전화번호를 입력해주세요." value="<c:out value='${userDto.userPhone}'/>"/>
                                        </div>
                                        <div class="mb-3">
                                            <label class="form-label" for="userEmail">이메일(EMAIL)</label>
                                            <input class="form-control" type="text" id="userEmail" name="userEmail" placeholder="이메일을 입력해주세요." value="<c:out value='${userDto.userEmail}'/>"/>
                                        </div>
                                        <c:choose>
                                            <c:when test="${user_auth == '100'}">
                                                <div class="mb-3">
                                                    <label class="form-label" for="userAuthCode">권한(AUTH)</label>
                                                    <select class="select2 form-select" id="userAuthCode" name="userAuthCode">
                                                        <option value="" ${userDto.userAuthCode == '' ? "selected" : ""}>권한 없음</option>
                                                        <option value="100" ${userDto.userAuthCode == '100' ? "selected" : ""}>최고관리자</option>
                                                        <option value="200" ${userDto.userAuthCode == '200' ? "selected" : ""}>관리자</option>
                                                        <option value="300" ${userDto.userAuthCode == '300' ? "selected" : ""}>일반</option>
                                                    </select>
                                                </div>
                                            </c:when>
                                            <c:otherwise>
                                                <input type="hidden" name="userAuthCode" value="<c:out value='${userDto.userAuthCode}'/>"/>
                                            </c:otherwise>
                                        </c:choose>
                                        <button type="button" id="list_btn" class="ms-1 btn btn-primary float-end">목록</button>
                                        <button type="button" id="modify_btn" class="ms-1 btn btn-primary float-end">수정</button>
                                        <c:if test="${fn:toUpperCase(loginId) != userDto.userId}">
                                            <button type="button" id="delete_btn" class="ms-1 btn btn-primary float-end">삭제</button>
                                        </c:if>
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
        let form = $('#userDto');
        let formEle = document.getElementById("userDto");
        $('#list_btn').click(function () {
            location.href="<c:url value='/employee/list'/>";
        });
        $('#modify_btn').click(function () {
            if(formEle.userName.value.trim()=="") {
                alert("이름을 입력해 주세요.");
                formEle.userName.focus();
                return false;
            }
            /*if(formEle.userPwd.value.trim()=="") {
                alert("패스워드를 입력해 주세요.");
                formEle.userPwd.focus();
                return false;
            }*/
            form.attr("action", "<c:url value='/employee/modify'/>${sc.getQueryString(page)}");
            form.attr("method", "post");
            form.submit();
        });
        $('#delete_btn').click(function () {
            form.attr("action", "<c:url value='/employee/remove'/>${sc.getQueryString(page)}");
            form.attr("method", "post");
            form.submit();
        });
    });
</script>
</body>
</html>
