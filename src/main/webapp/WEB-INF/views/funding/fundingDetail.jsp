<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펀딩상세</title>
    <script src="/js/funding/funding_detail.js" type="text/javascript"></script>
    <%@ include file="../fragments/head.html" %>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<%-- navbar --%>
<jsp:include page="../fragments/navbar.jsp" flush="false"/>

<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>[${funding.region }]&nbsp;&nbsp;${funding.product_name }</h2>
            <p></p>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- ======= Cource Details Section ======= -->
    <section id="course-details" class="course-details">
        <div class="container" data-aos="fade-up">

            <div class="row">
                <div class="col-lg-8">
                    <img src="/assets/img/products/hallabong.jpg" class="img-fluid" alt="">
                    <h3>[${funding.region }]&nbsp;&nbsp;${funding.product_name }</h3>
                    <p>
                        ${funding.content }
                    </p>
                </div>

                <div class="col-lg-4">
                    <c:if test="${funding.d_day >= 0}">
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <p>[진행 중]</p>
                            <p>
                                &#9203; <strong>마감일 ${funding.deadLine }</strong>까지
                                <strong>${funding.d_day }일</strong> 남음 &#9203;
                            </p>
                        </div>
                    </c:if>
                    <c:if test="${funding.d_day < 0}">
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <p>[종료]</p>
                            <p>
                                &#10060; 이미 <strong>종료된 펀딩</strong>입니다 &#10060;
                            </p>
                        </div>
                    </c:if>

                    <div class="course-info d-flex justify-content-between align-items-center">
                        <h5></h5>
                        <p>
                        <p>현재까지 <strong><fmt:formatNumber value="${funding.supporter }"
                                                          pattern="#,###,###,###"/>명</strong>이 펀딩에 참여해주셨습니다!</p></p>
                    </div>

                    <form action="/funding/fundingEnter" method="post">
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>상품번호</h5>
                            <p><a href="#">${funding.product_no }</a></p>
                            <input type="text" name="product_no" hidden value="${funding.product_no}">
                        </div>
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>상품명</h5>
                            <p>[${funding.region }]&nbsp;&nbsp;${funding.product_name }</p>
                        </div>
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>사업자명</h5>
                            <p>${funding.id }</p>
                        </div>
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>목표금액</h5>
                            <p>${funding.goal_money}원</p>
                        </div>
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>달성금액</h5>
                            <p><fmt:formatNumber value="${funding.save_money }" pattern="#,###,###,###"/>원</p>
                        </div>

                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>리워드 선택</h5>
                            <p>
                                <c:forEach var="name_price_map" varStatus="status" items="${name_price_map}">
                                    <label for="${name_price_map.key }">
                                        <input type="checkbox" value="${name_price_map.key } / ${name_price_map.value}"
                                               id="${name_price_map.key }" name="list${status.index }" class="opt check"
                                               onclick="sum(this)">
                                            ${name_price_map.key } <fmt:formatNumber value="${name_price_map.value}"
                                                                                     pattern="#,###,###,###"/>원
                                    </label><br>
                                </c:forEach>
                            </p>
                        </div>
                        <div class="course-info d-flex justify-content-between align-items-center">
                            <h5>총 금액</h5>
                            <p><input type="text" value="0" id="total" name="totalSum" readonly>원</p>
                        </div>

                        <hr>
                        <div class="center">
                            <c:if test="${sessionScope.loginMember.id == null}">
                                <input type="button" value="펀딩 참여하기" onclick="alert_login(this.form)">
                            </c:if>
                            <c:if test="${sessionScope.loginMember.id != null && funding.d_day >= 0}">
                                <input type="button" value="펀딩 참여하기" onclick="alert_go(this.form)">
                            </c:if>
                            <c:if test="${funding.d_day < 0}">
                                <input type="button" disabled='disabled' value="펀딩 참여하기">
                            </c:if>
                            <input type="button" class="more-btn" value="목록으로 이동"
                                   onclick="location.href='/board/getFundingList'">
                        </div>
                    </form>
                    <!-- <%-- 수정/삭제--%> -->
                    <c:if test="${sessionScope.loginMember == null || funding.id ne sessionScope.loginMember.id}">
                        <button class="btn btn-danger btn-lg" onclick="alert('본인이 작성한 글만 수정할 수 있습니다.');" type="reset">수정
                        </button>
                        <button class="btn btn-danger btn-lg" onclick="alert('본인이 작성한 글만 삭제할 수 있습니다.');" type="reset">삭제
                        </button>
                    </c:if>
                    <c:if test="${funding.id eq sessionScope.loginMember.id}">
                        <input class="center" type="button" value="수정" onclick="update_go(this.form)">
                        <input class="center" type="button" value="삭제" onclick="delete_go(this.form)">
                    </c:if>
                </div>
            </div>

        </div>
    </section><!-- End Cource Details Section -->

    <!-- 같은 지역 다른 상품 추천 -->
    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials">
        <div class="container" data-aos="fade-up">

            <div class="section-title">
                <h2>추천 상품</h2>
                <p></p>
            </div>

            <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="/assets/img/products/keem.jfif" class="testimonial-img" alt="">
                                <h3>완도 재래김</h3>
                                <h4>30개 / 6,000원</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    펀딩 70% 진행중
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div><!-- End testimonial item -->

                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="/assets/img/products/oioi.jfif" class="testimonial-img" alt="">
                                <h3>제주도 오이</h3>
                                <h4>1kg / 4,000원</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    펀딩 33% 진행중
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
    </section><!-- End Testimonials Section -->
</main><!-- End #main -->

<!-- footer -->
<jsp:include page="../fragments/footer.jsp" flush="false"/>

<!-- arrow -->
<div id="preloader"></div>
<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="../assets/vendor/aos/aos.js"></script>
<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="../assets/vendor/php-email-form/validate.js"></script>
<script src="../assets/vendor/purecounter/purecounter.js"></script>
<script src="../assets/vendor/swiper/js/swiper-bundle.min.js"></script>

<!-- Template Main JS File -->
<script src="../assets/js/main.js"></script>

</body>
</html>
