<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="../fragments/head.html" %>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        .page {
            display: block;
            margin: 0 3px;
            float: left;
            border: 1px solid #e6e6e6;
            width: 28px;
            height: 28px;
            line-height: 28px;
            text-align: center;
            background-color: #fff;
            font-size: 13px;
            color: #999999;
            text-decoration: none;
        }
    </style>
    <title>펀딩리스트</title>
</head>
<body>

<%-- navbar --%>
<jsp:include page="../fragments/navbar.jsp" flush="false"/>

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
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
<%--                        <h3><a href="/board/getFundingList">전체</a></h3>--%>
                        <h3>전체</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Seoul'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>서울</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Incheon'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>인천</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Sejong'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>세종</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Daejeon'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>대전</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Daegu'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>대구</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Gwangju'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>광주</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Ulsan'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>울산</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Busan'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>부산</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Gangwon-do'">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3>강원도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Gyeonggi-do'">
                        <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
                        <h3>경기도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Gyeongsangbuk-do'">
                        <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
                        <h3>경상북도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Gyeongsangnam-do'">
                        <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
                        <h3>경상남도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Jeollabuk-do'">
                        <i class="ri-paint-brush-line" style="color: #e361ff;"></i>
                        <h3>전라북도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Jeollanam-do'">
                        <i class="ri-paint-brush-line" style="color: #e361ff;"></i>
                        <h3>전라남도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Chungcheongbuk-do'">
                        <i class="ri-gradienter-line" style="color: #ffa76e;"></i>
                        <h3>충청북도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Chungcheongbuk-do'">
                        <i class="ri-gradienter-line" style="color: #ffa76e;"></i>
                        <h3>충청남도</h3>
                    </div>
                </div>
                <div class="col-lg-2 col-md-4 mt-4 mt-md-0 ">
                    <div class="icon-box mt-2" onclick="location.href='/board/getFundingList?searchCondition=REGION&searchKeyword=Jeju-do'">
                        <i class="ri-fingerprint-line active" style="color: #29cc61;"></i>
                        <h3>제주도</h3>
                    </div>
                </div>
            </div>

        </div>
    </section><!-- End Features Section -->

    <!-- 메인페이지 상단바에서 선택(사업자만)-->
    <section id="features1" class="features">
        <div class="container" data-aos="fade-up">
            <form action="/funding/fundingOpen">
                <input type="submit" value="펀딩오픈 신청하기" class="get-started-btn margin530">
            </form>
        </div>
    </section>

    <div>
        <ul>
            <c:if test="${pageMaker.prev}">
                <li class="page"><a href="/board/getFundingList?page=1">처음</a></li>
                <li class="page"><a href="${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
            </c:if>

            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                <li class="page"><a href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                <li class="page"><a href="${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
                <li class="page"><a href="/board/getFundingList?page=${pageMaker.tempEndPage }">맨끝</a></li>
            </c:if>
        </ul>
    </div>

    <!-- 검색을 위한 폼  -->
    <form action="/board/getFundingList">
        <table class="border-none">
            <tr>
                <td>
                    <!-- <select name="searchCondition">
                      <option value="REGION">지역
                      <option value="PRODUCT_NAME">제목
                    </select>
                    <input type="text" name="searchKeyword">

                    <input type="submit" value="검색"> -->

                    <select name="searchCondition" id="searchCondition">
                        <option>검색어 선택</option>
                        <option value="REGION">지역</option>
                        <option value="PRODUCT_NAME">제목</option>
                    </select>
                    <!--상단의 select box에서 '제목'을 선택하면 나타날 인풋박스  -->

                    <select id="REGIONKeyword" name="searchKeyword" disabled>
                        <option value="Seoul">서울</option>
                        <option value="Gyeonggi-do">경기</option>
                        <option value="Incheon">인천</option>
                        <option value="Gangwon-do">강원</option>
                        <option value="Chungcheongbuk-do">충북</option>
                        <option value="Chungcheongnam-do">충남</option>
                        <option value="Sejong">세종</option>
                        <option value="Daejeon">대전</option>
                        <option value="Jeollabuk-do">전북</option>
                        <option value="Jeollanam-do">전남</option>
                        <option value="Gwangju">광주</option>
                        <option value="Chungcheongbuk-do">경북</option>
                        <option value="Gyeongsangnam-do">경남</option>
                        <option value="Daegu">대구</option>
                        <option value="Ulsan">울산</option>
                        <option value="Busan">부산</option>
                        <option value="Jeju-do">제주</option>
                    </select>
                    <input type="text" id="PRODUCT_NAMEKeyword" name="searchKeyword" disabled/>
                    <input type="submit" value="검색">
                </td>
            </tr>
        </table>
    </form>

    <!-- ======= Courses Section ======= -->
    <section id="courses" class="courses">
        <div class="container" data-aos="fade-up">

            <div class="row" data-aos="zoom-in" data-aos-delay="100">

                <!-- each -->
                <c:if test="${not empty boardList}">
                    <c:forEach var="board" items="${boardList}">
                        <div style="float: left; padding:3%; width:33%;">
                            <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
                                <div class="course-item">
                                    <a href="/funding/getBoard?product_no=${board.product_no}">
                                        <img src="/board/getImg.do?no=${board.pimg_no }" class="img-fluid course-img ">
                                    </a>
                                        <%--                                    alt="/board/getImg.do?no=${board.pimg_no }"--%>
                                    <div class="course-content">
                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                            <h4>${board.region }</h4>
                                            <p class="price">13,000원</p>
                                        </div>

                                        <h3><a href="/funding/getBoard">${board.product_name }</a></h3>
                                            <%--                                        <p>${board.product_content}</p>--%>
                                        <!--progress bar-->
                                            <div class="progress ">
                                                <div class="progress-bar progress-bar-striped active " role="progressbar"
                                                     style="width: ${board. percent }%"
                                                     aria-valuenow="${board.percent }"
                                                     aria-valuemin="0" aria-valuemax="100">
                                                    <span class="sr-only">${board.percent }%</span>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </div> <!-- End Course Item-->
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </div>
    </section><!-- End Courses Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
        <div class="container" data-aos="fade-up">

            <div class="row">
                <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-left" data-aos-delay="100">
                    <img src="/assets/img/about.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 order-2 order-lg-1 content">
                    <h3>Voluptatem dignissimos provident quasi corporis voluptates sit assumenda.</h3>
                    <p class="fst-italic">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                        labore et dolore
                        magna aliqua.
                    </p>
                    <ul>
                        <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                        </li>
                        <li><i class="bi bi-check-circle"></i> Duis aute irure dolor in reprehenderit in voluptate
                            velit.
                        </li>
                        <li><i class="bi bi-check-circle"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat.
                            Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu
                            fugiat nulla pariatur.
                        </li>
                    </ul>
                    <p>
                        Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
                        in voluptate
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
                    <span data-purecounter-start="0" data-purecounter-end="1232" data-purecounter-duration="1"
                          class="purecounter"></span>
                    <p>Students</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="64" data-purecounter-duration="1"
                          class="purecounter"></span>
                    <p>Courses</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="42" data-purecounter-duration="1"
                          class="purecounter"></span>
                    <p>Events</p>
                </div>

                <div class="col-lg-3 col-6 text-center">
                    <span data-purecounter-start="0" data-purecounter-end="15" data-purecounter-duration="1"
                          class="purecounter"></span>
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
                                <img src="/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
                                <h3>Saul Goodman</h3>
                                <h4>Ceo &amp; Founder</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit
                                    rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam,
                                    risus at semper.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
                                <h3>Sara Wilsson</h3>
                                <h4>Designer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid
                                    cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet
                                    legam anim culpa.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="/assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
                                <h3>Jena Karlis</h3>
                                <h4>Store Owner</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem
                                    veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint
                                    minim.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="/assets/img/testimonials/testimonials-4.jpg" class="testimonial-img" alt="">
                                <h3>Matt Brandon</h3>
                                <h4>Freelancer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim
                                    fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem
                                    dolore labore illum veniam.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="/assets/img/testimonials/testimonials-5.jpg" class="testimonial-img" alt="">
                                <h3>John Larson</h3>
                                <h4>Entrepreneur</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster
                                    veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam
                                    culpa fore nisi cillum quid.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
</main>
<!-- End #main -->

<!-- footer -->
<jsp:include page="../fragments/footer.jsp" flush="false"/>

<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/assets/vendor/aos/aos.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>
<script src="/assets/vendor/purecounter/purecounter.js"></script>
<script src="/assets/vendor/swiper/js/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>

<!-- JS & Ajax -->
<script>
    $(function () {
        $("#PRODUCT_NAMEKeyword").hide();
        $("#REGIONKeyword").hide();
        $("#searchCondition").change(function () {
            if ($("#searchCondition").val() == "PRODUCT_NAME") {
                $("#PRODUCT_NAMEKeyword").show();
                $("#PRODUCT_NAMEKeyword").attr("disabled", false);
            } else {
                $("#PRODUCT_NAMEKeyword").hide();
                $("#PRODUCT_NAMEKeyword").attr("disabled", true);
            }
        })

        $("#searchCondition").change(function () {
            //직접입력을 누를 때 나타남
            if ($("#searchCondition").val() == "REGION") {
                $("#REGIONKeyword").show();
                $("#REGIONKeyword").attr("disabled", false);
            } else {
                $("#REGIONKeyword").hide();
                $("#REGIONKeyword").attr("disabled", true);
            }
        })
    });
</script>

</body>
</html>