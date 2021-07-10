<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>WooMool Market</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/img/favicon.ico" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="/assets/vendor/aos/aos.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/boxicons/css/min/boxicons.min.css" rel="stylesheet">
    <link href="/assets/vendor/remixicon/css/remixicon.css" rel="stylesheet">
    <link href="/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/css/style.css" rel="stylesheet">

    <!-- 아이콘 넣기 -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


    <!-- =======================================================
    * Template Name: Mentor - v4.3.0
    * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top" th:fragment="header">
    <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a href="/">WooMooL</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li><a class="active" href="/">HOME</a></li>
                <li><a href="/funding/fundingList">펀딩</a></li>
                <li><a href="/product/productList">구매</a></li>
                <li class="dropdown"><a href="#"><span th:text="#{label.community}">커뮤니티</span> <i
                        class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="notice.html" th:text="#{label.notice}">공지사항</a></li>
                        <li><a href="qna.html">Q&A</a></li>
                    </ul>
                </li>
                <!-- <li><a href="contact.html">마이페이지</a></li> -->
            </ul>
            <!-- 검색 -->
            <div class="navbar-toolbar d-flex align-items-center order-lg-3">
                <a href="search.html" class="navbar-tool d-none d-lg-flex">
                    <div class="navbar-tool-icon-box">
                        <i class="fa fa-search" aria-hidden="true"></i>
                        <!-- ::before -->
                    </div>
                </a>
                <!-- chat -->
                <a href="/chat" class="navbar-tool d-none d-lg-flex">
                    <!-- <span class="navbar-tool-label yith_wcwl_count">0</span> -->
                    <div class="navbar-tool-icon-box">
                        <i class="fa fa-comments" aria-hidden="true"></i>
                        <!-- ::before -->
                    </div>
                </a>
                <!-- 장바구니 -->
                <a th:if="${session.loginMember != null}" th:href="@{/cart/list/{id}(id=${session.loginMember.id})}"
                   th:classappend="${session.loginMember != null} ? 'navbar-tool d-none d-lg-flex' : ''" class=""/>
                <a th:if="${session.loginMember == null}" th:href="@{/login}"
                   th:classappend="${session.loginMember == null} ? 'navbar-tool d-none d-lg-flex' : ''" class=""/>
                <!-- <span class="navbar-tool-label yith_wcwl_count">0</span> -->
                <div class="navbar-tool-icon-box">
                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                    <!-- ::before -->
                </div>
                </a>
                <!-- 마이페이지 -->
                <a th:if="${session.loginMember != null}" th:href="@{/members/mypage(uuid=${session.loginMember.uuid})}"
                   th:classappend="${session.loginMember != null} ? 'navbar-tool d-none d-lg-flex' : ''" class=""/>
                <a th:if="${session.loginMember == null}" th:href="@{/login}"
                   th:classappend="${session.loginMember == null} ? 'navbar-tool d-none d-lg-flex' : ''" class=""/>
                <!-- <span class="navbar-tool-label yith_wcwl_count">0</span> -->
                <div class="navbar-tool-icon-box">
                    <i class="fa fa-user" aria-hidden="true"></i>
                    <!-- ::before -->
                </div>
                </a>
            </div>
        </nav>
        <!-- .navbar -->

        <a href="/login" class="get-started-btn" th:if="${session.loginMember == null}">로그인</a>
        <a href="/logout" class="get-started-btn" th:if="${session.loginMember != null}">로그아웃</a>

    </div>
</header><!-- End Header -->
<!-- ======= Footer ======= -->
<footer id="footer">
    <div class="container d-md-flex py-4">

        <div class="me-md-auto text-center text-md-start">
            <div class="copyright">
                &copy; Copyright <strong><span>WooMooL Market</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
                우물마켓(주) | 대표이사 김유연 | 02-707-1480 | Designed by <a href="https://bootstrapmade.com/">TEEMEE</a>
            </div>
        </div>
        <div class="social-links text-center text-md-right pt-3 pt-md-0">
            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
            <a href="https://www.instagram.com/woomool.market" class="instagram"><i class="bx bxl-instagram"></i></a>
            <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
            <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
    </div>
</footer><!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/assets/vendor/aos/aos.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>
<script src="/assets/vendor/purecounter/purecounter.js"></script>
<script src="/assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>
</body>
</html>