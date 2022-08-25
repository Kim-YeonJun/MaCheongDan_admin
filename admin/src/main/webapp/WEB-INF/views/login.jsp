<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false"%>
<!DOCTYPE html>
<!-- beautify ignore:start -->
<html
        lang="en"
        class="light-style customizer-hide"
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
    <link rel="shortcut icon" href="<c:url value='/assets/img/favicon/favicon.ico'/>" type="image/x-icon">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
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
    <!-- Page -->
    <link rel="stylesheet" href="<c:url value='/assets/vendor/css/pages/page-auth.css'/>" />
    <!-- Helpers -->
    <script src="<c:url value='/assets/vendor/js/helpers.js'/>"></script>
    <script src="<c:url value='/assets/js/config.js'/>"></script>
</head>

<body style="font-family: 'MapoPeacefull'">
<!-- Content -->
<div class="container-xxl">
    <div class="authentication-wrapper authentication-basic container-p-y">
        <div class="authentication-inner">
            <!-- Register -->
            <div class="card">
                <div class="card-body">
                    <!-- Logo -->
                    <div class="app-brand justify-content-center">
                        <a href="#" class="app-brand-link gap-2">
                            <span class="app-brand-logo demo">
                            </span>
                            <span class="app-brand-text demo text-body fw-bolder">
                                마청단 관리 페이지
                            </span>
                        </a>
                        <hr>
                    </div>

                    <!-- /Logo -->
                    <p class="p-1 m-0" style="min-height: 33px">관리자 페이지에 오신것을 환영합니다.👋</p>
                    <p class="p-1 m-0" style="min-height: 33px"> 계정을 로그인 하시면 페이지에 접속 할 수 있습니다.</p>
                    <p class="p-1 m-0 text-danger" style="min-height: 33px"><c:out value='${param.msg}'/></p>
                    <form id="formAuthentication" class="mb-3" action="<c:url value='/login'/>" method="POST">
                        <div class="mb-3">
                            <label for="id" class="form-label">ID</label>
                            <input
                                    type="text"
                                    class="form-control"
                                    id="id"
                                    name="id"
                                    placeholder="아이디를 입력해주세요."
                                    value="${cookie.id.value == null ? "TEST2" : cookie.id.value}"
                                    autofocus
                            />
                        </div>
                        <div class="mb-3 form-password-toggle">
                            <div class="d-flex justify-content-between">
                                <label class="form-label" for="password">Password</label>
                                <%--<a href="#">
                                    <small>비밀번호 찾기</small>
                                </a>--%>
                            </div>
                            <div class="input-group input-group-merge">
                                <input
                                        type="password"
                                        id="pwd"
                                        class="form-control"
                                        name="pwd"
                                        placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
                                        value="TEST2"
                                        aria-describedby="pwd"
                                />
                                <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
                            </div>
                        </div>
                        <div class="mb-3">
                            <%--<div class="form-check">
                                <input class="form-check-input" type="checkbox" id="remember_me" name="remember_me" value="on" ${empty cookie.id.value ? "":"checked"}/>
                                <label class="form-check-label" for="remember_me"> 아이디 기억 </label>
                            </div>--%>
                        </div>
                        <div class="mb-3">
                            <button class="btn btn-primary d-grid w-100" type="submit">로그인</button>
                        </div>
                    </form>

                    <p class="text-center">
                        <!-- <span>New on our platform?</span> -->
                        <%--<a href="#">
                            <span>가입하기</span>
                        </a>--%>
                    </p>
                </div>
            </div>
            <!-- /Register -->
        </div>
    </div>
</div>
<!-- / Content -->

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
