<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <%@ include file="../fragments/head.html" %>
    <title>WooMool MARKET</title>

</head>

<body>

<%-- navbar --%>
<%@ include file="../fragments/navbar.jsp" %>

<%-- main --%>
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>펀딩 신청 페이지</h2>
            <p>Est dolorum ut non facere possimus quibusdam eligendi voluptatem. Quia id aut similique quia voluptas sit
                quaerat debitis. Rerum omnis ipsam aperiam consequatur laboriosam nemo harum praesentium. </p>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- myResume에서 가져옴 -->
    <!-- ======= Contact Section ======= -->
    <form action="/funding/insertBoard" method="post" enctype="multipart/form-data">
        <section id="contact" class="contact">
            <div class="container" data-aos="fade-up">
                <br><br>

                <div></div>
                <div class="section-title">
                    <h2>펀딩 신청 양식</h2>
                </div>

                <!-- 2 1 2 7 비율로 가운데로 입력하게 -->
                <!-- 틀 -->
                <!-- <div class="row mt-2">
                  <div class="col-1"></div>
                  <div class="col-1 text-center">
                    <i class="bi bi-geo-alt"></i>
                  </div>
                  <div class="col-2 pt-1">
                    <h5><strong>제목</strong></h5>
                  </div>
                  <div class="col-7">
                    인풋
                  </div>
                </div> -->

                <!-- 시작 -->
                <!-- 사업자명 -->
                <div class="row mt-2">
                    <div class="col-1"></div>
                    <div class="col-1 pt-1 text-center">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </div>
                    <div class="col-2 pt-2">
                        <h5><strong>사업자명</strong></h5>
                    </div>
                    <div class="col-7">
                        <input type="text" value="${sessionScope.id }" name="id" class="form-control" id="id"
                               placeholder="사업자명" readonly>
                    </div>
                </div>
                <!-- 지역 -->
                <div class="row mt-2">
                    <div class="col-1"></div>
                    <div class="col-1 pt-1 text-center">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </div>
                    <div class="col-2 pt-2">
                        <h5><strong>지역</strong></h5>
                    </div>
                    <div class="col-7">
                        <select class="form-control">
                            <option value="">지역</option>
                            <option value="서울">서울</option>
                            <option value="경기">경기</option>
                            <option value="인천">인천</option>
                            <option value="강원">강원</option>
                            <option value="충북">충북</option>
                            <option value="충남">충남</option>
                            <option value="세종">세종</option>
                            <option value="대전">대전</option>
                            <option value="전북">전북</option>
                            <option value="전남">전남</option>
                            <option value="광주">광주</option>
                            <option value="경북">경북</option>
                            <option value="경남">경남</option>
                            <option value="대구">대구</option>
                            <option value="울산">울산</option>
                            <option value="부산">부산</option>
                            <option value="제주">제주</option>
                        </select>
                    </div>
                </div>
                <!-- 펀딩이름 -->
                <div class="row mt-2">
                    <div class="col-1"></div>
                    <div class="col-1 pt-1 text-center">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </div>
                    <div class="col-2 pt-2">
                        <h5><strong>펀딩이름</strong></h5>
                    </div>
                    <div class="col-7">
                        <input type="text" name="product_name" class="form-control" id="name"
                               placeholder="신청할 펀딩 이름을 입력해주세요" required>
                    </div>
                </div>
                <!-- 마감일 -->
                <div class="row mt-2">
                    <div class="col-1"></div>
                    <div class="col-1 pt-1 text-center">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </div>
                    <div class="col-2 pt-2">
                        <h5><strong>마감일</strong></h5>
                    </div>
                    <div class="col-7">
                        <input type="date" name="deadLine" class="form-control" placeholder="마감일" required>
                    </div>
                </div>
                <!-- 목표금액 -->

                <div class="row mt-2">
                    <div class="col-1"></div>
                    <div class="col-1 pt-1 text-center">
                        <i class="fa fa-check" aria-hidden="true"></i>
                    </div>
                    <div class="col-2 pt-2">
                        <h5><strong>목표금액</strong></h5>
                    </div>
                    <div class="col-7">
                        <input type="text" name="goal_money" class="form-control" id="name"
                               placeholder="목표금액은 수정이 불가하니 신중히 입력해주세요" required>
                    </div>
                </div>
                <!-- 리워드 입력 -->
            </div>
        </section>
        <table class="reward">
            <tr>
                <th>리워드 선택</th>
                <td>
                    <c:forEach var="name_price_map" varStatus="status" items="${name_price_map}">
                        <label for="${name_price_map.key }">
                            <input type="checkbox" value="${name_price_map.key } / ${name_price_map.value}"
                                   id="${name_price_map.key }" name="list${status.index }" class="opt"
                                   onclick="sum(this)">
                                ${name_price_map.key } <fmt:formatNumber value="${name_price_map.value}"
                                                                         pattern="#,###,###,###"/>원
                        </label><br>
                    </c:forEach>
                </td>
            </tr>
            <tr>
                <th>총 금액</th>
                <td>
                    <input type="text" value="0" id="total" name="totalSum" readonly>원
                </td>
            </tr>
        </table>
        <div class="row mt-2">
            <div class="col-1"></div>
            <div class="col-1 pt-1 text-center">
                <i class="fa fa-check" aria-hidden="true"></i>
            </div>
            <div class="col-2 pt-2">
                <h5><strong>리워드</strong></h5>
            </div>
            <div class="col-3">
                <input type="text" id="name" name="reward_name" class="form-control" placeholder="ex) 감자 1kg">
            </div>
            <div class="col-1 pt-2 text-center">
                <h5><strong>가격</strong></h5>
            </div>
            <div class="col-2">
                <input type="text" id="name" name="reward_name" class="form-control" placeholder="ex) 9000">
            </div>
            <div class="col-1 pt-1">
                <input type="button" value="추가" onclick="add_div()">
            </div>
        </div>
        <!-- 상품 설명 -->
        <div class="row mt-2">
            <div class="col-1"></div>
            <div class="col-1 pt-1 text-center">
                <i class="fa fa-check" aria-hidden="true"></i>
            </div>
            <div class="col-2">
                <h5><strong>상품 설명</strong></h5>
            </div>
            <div class="col-7">
                <textarea class="form-control" name="content" rows="5" placeholder="상품 정보를 입력해주세요" required></textarea>
            </div>
        </div>
        <!-- 이미지 첨부 -->
        <div class="row mt-2">
            <div class="col-1"></div>
            <div class="col-1 pt-1 text-center">
                <i class="fa fa-check" aria-hidden="true"></i>
            </div>
            <div class="col-2 pt-1">
                <h5><strong>이미지 첨부</strong></h5>
            </div>
            <div class="col-7 pt-1">
                <input type="file" name="uploadFile">
            </div>
        </div>
        <br>
        <hr class="mt5">
        <!-- 작성 버튼 -->
        <div class="row mt-2">
            <div class="col-3"></div>
            <div class="col-2 pt-1">
                <input type="reset" value="다시 작성">
            </div>
            <div class="col-2 pt-1">
                <input type="submit" value="오픈 신청하기">
            </div>
            <div class="col-2 pt-1">
                <input type="button" value="목록으로 이동" onclick="location.href='/board/getFundingList'">
            </div>
        </div>
        <hr class="mt-5">

        </div>
    </form>
    </section><!-- End Contact Section -->
</main>
<!-- End #main -->


<%-- footer --%>
<%@ include file="../fragments/footer.jsp" %>

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
<!-- Funding JS -->
<script src="/js/funding/funding_open.js" type="text/javascript"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</body>
</html>