<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>WooMool Market</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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

    <base href="/" />

    <!-- =======================================================
    * Template Name: Mentor - v4.3.0
    * Template URL: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

        <h1 class="logo me-auto"><a href="index.html">UMUL</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

        <nav id="navbar" class="navbar order-last order-lg-0">
            <ul>
                <li><a href="/">HOME</a></li>
                <li><a class="active" href="/funding/fundingLis">펀딩</a></li>
                <li><a href="/product/productList">구매</a></li>
                <li class="dropdown"><a href="#"><span>커뮤니티</span> <i class="bi bi-chevron-down"></i></a>
                    <ul>
                        <li><a href="notice.html">공지사항</a></li>
                        <li><a href="qna.html">Q&A</a></li>
                        <li class="dropdown"><a href="#"><span>Deep Drop Down</span> <i class="bi bi-chevron-right"></i></a>
                            <ul>
                                <li><a href="#">Deep Drop Down 1</a></li>
                                <li><a href="#">Deep Drop Down 2</a></li>
                            </ul>
                        </li>
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
                        </i>
                    </div>
                </a>
                <!-- 알람 -->
                <a href="/chat" class="navbar-tool d-none d-lg-flex">
                    <!-- <span class="navbar-tool-label yith_wcwl_count">0</span> -->
                    <div class="navbar-tool-icon-box">
                        <i class="fa fa-bell" aria-hidden="true"></i>
                        <!-- ::before -->
                        </i>
                    </div>
                </a>
                <!-- 장바구니 -->
                <a href="cart.html" class="navbar-tool d-none d-lg-flex">
                    <!-- <span class="navbar-tool-label yith_wcwl_count">0</span> -->
                    <div class="navbar-tool-icon-box">
                        <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                        <!-- ::before -->
                        </i>
                    </div>
                </a>
                <!-- 마이페이지 -->
                <a href="mypage.html" class="navbar-tool d-none d-lg-flex">
                    <!-- <span class="navbar-tool-label yith_wcwl_count">0</span> -->
                    <div class="navbar-tool-icon-box">
                        <i class="fa fa-user" aria-hidden="true"></i>
                        <!-- ::before -->
                        </i>
                    </div>
                </a>
            </div>
        </nav><!-- .navbar -->

        <a href="login.html" class="get-started-btn">로그인</a>

    </div>
</header><!-- End Header -->

<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>펀딩 페이지</h2>
            <p></p>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- 지역 -->
    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
        <div class="container" data-aos="fade-up">

            <div class="row" data-aos="zoom-in" data-aos-delay="100">
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3><a href="">강원도</a></h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
                        <h3><a href="">경기도</a></h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
                        <h3><a href="">경상도</a></h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-paint-brush-line" style="color: #e361ff;"></i>
                        <h3><a href="">전라도</a></h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0 ">
                    <div class="icon-box">
                        <i class="ri-fingerprint-line active" style="color: #29cc61;"></i>
                        <h3><a href="">제주도</a></h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-gradienter-line" style="color: #ffa76e;"></i>
                        <h3><a href="">충청도</a></h3>
                    </div>
                </div>
                <!-- <div class="col-lg-2 col-md-4 mt-4 mt-md-0 boxy">
                  <div class="icon-box">
                    <i class="ri-file-list-3-line" style="color: #11dbcf;"></i>
                    <h3><a href="">그 외</a></h3>
                  </div>
                </div> -->

            </div>

        </div>
    </section><!-- End Features Section -->

    <!-- 메인페이지 상단바에서 선택(사업자만)-->
    <section  id="features" class="features">
        <div class="container" data-aos="fade-up">
            <form action="/funding/fundingOpen">
                <input type="submit" value="펀딩오픈 신청하기" class="get-started-btn margin530">
            </form>
        </div>
    </section>

    <!-- ======= Courses Section ======= -->
    <section id="courses" class="courses">
        <div class="container" data-aos="fade-up">

            <div class="row" data-aos="zoom-in" data-aos-delay="100">

                <!-- each -->
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="course-item">
                        <a href="funding-details.html"><img src="assets/img/products/hallabong.jpg" class="img-fluid course-img " alt="한라봉"></a>
                        <div class="course-content">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4>제주도</h4>
                                <p class="price">13,000원</p>
                            </div>

                            <h3><a href="funding-details.html">최고급 한라봉 8개 / 1box</a></h3>
                            <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                            <div class="trainer d-flex justify-content-between align-items-center">
                                <div class="trainer-profile d-flex align-items-center">
                                    <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                                    <span>Antonio</span>
                                </div>
                                <div class="trainer-rank d-flex align-items-center">
                                    <i class="bx bx-user"></i>&nbsp;50
                                    &nbsp;&nbsp;
                                    <i class="bx bx-heart"></i>&nbsp;65
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- End Course Item-->

                <!-- each -->
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="course-item">
                        <a href="course-details.html"><img src="assets/img/products/keem.jfif" class="img-fluid course-img " alt="김"></a>
                        <div class="course-content">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4>전라도</h4>
                                <p class="price">6,000원</p>
                            </div>

                            <h3><a href="course-details.html">완도 김 30봉지</a></h3>
                            <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                            <div class="trainer d-flex justify-content-between align-items-center">
                                <div class="trainer-profile d-flex align-items-center">
                                    <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid " alt="">
                                    <span>Antonio</span>
                                </div>
                                <div class="trainer-rank d-flex align-items-center">
                                    <i class="bx bx-user"></i>&nbsp;50
                                    &nbsp;&nbsp;
                                    <i class="bx bx-heart"></i>&nbsp;65
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- End Course Item-->

                <!-- each -->
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                    <div class="course-item">
                        <a href="course-details.html"><img src="assets/img/products/apples.jfif" class="img-fluid course-img " alt="사과"></a>
                        <div class="course-content">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4>경상도</h4>
                                <p class="price">11,000원</p>
                            </div>

                            <h3><a href="course-details.html">경북사과 12개 / 1box</a></h3>
                            <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                            <div class="trainer d-flex justify-content-between align-items-center">
                                <div class="trainer-profile d-flex align-items-center">
                                    <img src="assets/img/trainers/trainer-1.jpg" class="img-fluid" alt="">
                                    <span>Antonio</span>
                                </div>
                                <div class="trainer-rank d-flex align-items-center">
                                    <i class="bx bx-user"></i>&nbsp;50
                                    &nbsp;&nbsp;
                                    <i class="bx bx-heart"></i>&nbsp;65
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- End Course Item-->
                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0 padding30">
                    <div class="course-item">
                        <img src="assets/img/course-2.jpg" class="img-fluid" alt="...">
                        <div class="course-content">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4>Marketing</h4>
                                <p class="price">$250</p>
                            </div>

                            <h3><a href="course-details.html">Search Engine Optimization</a></h3>
                            <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                            <div class="trainer d-flex justify-content-between align-items-center">
                                <div class="trainer-profile d-flex align-items-center">
                                    <img src="assets/img/trainers/trainer-2.jpg" class="img-fluid" alt="">
                                    <span>Lana</span>
                                </div>
                                <div class="trainer-rank d-flex align-items-center">
                                    <i class="bx bx-user"></i>&nbsp;35
                                    &nbsp;&nbsp;
                                    <i class="bx bx-heart"></i>&nbsp;42
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- End Course Item-->

                <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0 padding30">
                    <div class="course-item">
                        <img src="assets/img/course-3.jpg" class="img-fluid" alt="...">
                        <div class="course-content">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h4>Content</h4>
                                <p class="price">$180</p>
                            </div>

                            <h3><a href="course-details.html">Copywriting</a></h3>
                            <p>Et architecto provident deleniti facere repellat nobis iste. Id facere quia quae dolores dolorem tempore.</p>
                            <div class="trainer d-flex justify-content-between align-items-center">
                                <div class="trainer-profile d-flex align-items-center">
                                    <img src="assets/img/trainers/trainer-3.jpg" class="img-fluid" alt="">
                                    <span>Brandon</span>
                                </div>
                                <div class="trainer-rank d-flex align-items-center">
                                    <i class="bx bx-user"></i>&nbsp;20
                                    &nbsp;&nbsp;
                                    <i class="bx bx-heart"></i>&nbsp;85
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- End Course Item-->

            </div>

        </div>
    </section><!-- End Courses Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="row">
                <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                    <img src="assets/img/about.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                    <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3>
                    <p class="fst-italic">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
                        magna aliqua.
                    </p>
                    <ul>
                        <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.</li>
                        <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate velit.</li>
                        <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur.</li>
                    </ul>
                    <p>
                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
                    </p>

                </div>
            </div>

        </div>
    </section><!-- End About Section -->


    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts section-bg">
        <div class="container">

            <div class="row counters">

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="1232" data-purecounter-duration="1" class="purecounter"></span>
                    <p>Students</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="64" data-purecounter-duration="1" class="purecounter"></span>
                    <p>Courses</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="42" data-purecounter-duration="1" class="purecounter"></span>
                    <p>Events</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1" class="purecounter"></span>
                    <p>Trainers</p>
                </div>

            </div>

        </div>
    </section><!-- End Counts Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>Testimonials</h2>
                <p>What are they saying</p>
            </div>

            <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                <h3>Saul Goodman</h3>
                                <h4>Ceo &amp; Founder</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                <h3>Sara Wilsson</h3>
                                <h4>Designer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                <h3>Jena Karlis</h3>
                                <h4>Store Owner</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                <h3>Matt Brandon</h3>
                                <h4>Freelancer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                <h3>John Larson</h3>
                                <h4>Entrepreneur</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                </div>
                <div class="swiper-pagination"></div>
            </div>

        </div>
    </section><!-- End Testimonials Section -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer">

    <div class="footer-top">
        <div class="container">
            <div class="row">

                <div class="col-lg-3 col-md-6 footer-contact">
                    <h3>Mentor</h3>
                    <p>
                        A108 Adam Street <br>
                        New York, NY 535022<br>
                        United States <br><br>
                        <strong>Phone:</strong> +1 5589 55488 55<br>
                        <strong>Email:</strong> info@example.com<br>
                    </p>
                </div>

                <div class="col-lg-2 col-md-6 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 footer-links">
                    <h4>Our Services</h4>
                    <ul>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
                        <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
                    </ul>
                </div>

                <div class="col-lg-4 col-md-6 footer-newsletter">
                    <h4>Join Our Newsletter</h4>
                    <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
                    <form action="" method="post">
                        <input type="email" name="email"><input type="submit" value="Subscribe">
                    </form>
                </div>

            </div>
        </div>
    </div>

    <div class="container d-md-flex py-4">

        <div class="me-md-auto text-center text-md-start">
            <div class="copyright">
                &copy; Copyright <strong><span>Mentor</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/mentor-free-education-bootstrap-theme/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
        <div class="social-links text-center text-md-right pt-3 pt-md-0">
            <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
            <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
            <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
            <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
            <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
        </div>
    </div>
</footer><!-- End Footer -->

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="assets/vendor/aos/aos.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>
<script src="assets/vendor/purecounter/purecounter.js"></script>
<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>

</body>

</html>