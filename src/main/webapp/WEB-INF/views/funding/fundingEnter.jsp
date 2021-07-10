<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <%@ include file="../fragments/head.html" %>
    <meta charset="UTF-8">
    <title>펀딩 참여 화면</title>
<%--    <link href="/css/funding/detail.css" rel="stylesheet" type="text/css">--%>
    <script src="/js/funding/funding_detail.js" type="text/javascript"></script>
</head>

<body>

<%-- navbar --%>
<jsp:include page="../fragments/navbar.jsp" flush="false"/>
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>${sessionScope.loginMember.id}이 방금! 참여하신 펀딩 내역</h2>
        </div>
    </div><!-- End Breadcrumbs -->

    <!--pricing 적용한 펀딩 내역 -->
    <main id="main">

        <!-- ======= Pricing Section ======= -->
        <section id="pricing" class="pricing">
            <div class="container" data-aos="fade-up">

                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8 col-md-6">
                        <div class="box">
                            <h2>펀딩 내역</h2>
                            <h4><sup>$</sup><fmt:formatNumber value="${totalSum }" pattern="#,###,###,###"/><span> / month</span></h4>
                            <c:forEach var="element" items="${list }">
                                <h2>
                                ${element }<br>
                                <input type="text" name="choice_reward" value="${element }" hidden="hidden"/>

                                    <input type="text" hidden name="product_no" value="${funding.product_no }">
                                    <input type="text" hidden name="total_sum" value="${totalSum }">
                                </h2>
                            </c:forEach>
                            <ul>
                                <li>Aida dere</li>
                                <li>Nec feugiat nisl</li>
                                <li>Nulla at volutpat dola</li>
                                <li class="na">Pharetra massa</li>
                                <li class="na">Massa ultricies mi</li>
                            </ul>
                            <div class="btn-wrap">
                                <a href="#" class="btn-buy">Buy Now</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </section><!-- End Pricing Section -->
    </main><!-- End #main -->


    <div class="container">
        <h1>${funding.product_name }</h1>
        <h4>${funding.id }</h4>

        <hr>
        <form action="fundingPayment" method="post" onsubmit="alert_go(this.form)">
            <h3>펀딩 내역</h3>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4 text-center">
                    <h3>펀딩 내역</h3>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-2"></div>
                <div class="col-3">
                    <div class="course-info d-flex justify-content-between align-items-center">
                        <p>선택한 리워드</p>
                    </div>
                </div>
            </div>

<%--            원래의 테이블 형식    --%>
            <table>
                <tr>
                    <th>선택한 리워드</th>
                    <td>
                        <c:forEach var="element" items="${list }">
                            ${element }<br>
                            <input type="text" name="choice_reward" value="${element }" hidden="hidden"/>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <th>총 금액</th>
                    <td><fmt:formatNumber value="${totalSum }" pattern="#,###,###,###"/>원</td>
                    <input type="text" hidden name="product_no" value="${funding.product_no }">
                    <input type="text" hidden name="total_sum" value="${totalSum }">
                </tr>
            </table>

            <hr>
            <h3>배송지 입력</h3>

            <table>
                <tr>
                    <th>이름</th>
                    <td><input type="text" id="name" name="name" required></td>
                    <input type="hidden" value="${sessionScope.loginMember.id }" id="id" name="id">
                </tr>
                <tr>
                    <th>연락처</th>
                    <td><input type="text" id="phone" name="phone" required></td>
                </tr>
                <tr>
                    <th>이메일</th>
                    <td><input type="text" id="email" name="email" required></td>
                </tr>
                <tr>
                    <th>주소</th>
                    <td><input type="text" name="address" required></td>
                </tr>
            </table>

            <hr>

            <div class="center">
                <button type="submit" value="펀딩 참여하기" onclick="return validate();">펀딩 참여하기</button>
                <input type="button" value="목록으로 이동" onclick="location.href='/board/getFundingList'">
            </div>
        </form>
    </div>
</main>
<%-- footer --%>
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
</body>
</html>