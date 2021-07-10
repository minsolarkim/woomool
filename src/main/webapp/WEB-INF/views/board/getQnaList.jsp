<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@ include file="../fragments/head.html" %>
    <title>Board</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
</head>
<body>

<%-- navbar --%>
<jsp:include page="../fragments/navbar.jsp" flush="false"/>

<main>
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>Q&A 페이지</h2>
            <p> </p>
        </div>
    </div><!-- End Breadcrumbs -->

    <!-- 데이터 표시영역 -->
    <section>
        <div class="container">
            <table class="table">
                <thead>
                <tr>
                    <th>글번호</th>
                    <th>제목</th>
                    <th>글쓴이</th>
                    <th>작성일</th>
                    <th>조회수</th>
                </tr>
                </thead>
                <tbody>

                <c:if test="${not empty boardList}">
                    <c:forEach var="board" items="${boardList}">
                        <tr>
                            <td class="center">${board.no }</td>
                            <td>
                                <a href="/board/getBoard?no=${board.no}&cnt=1&flag_nq=Q">${board.title }</a>
                                <c:forEach var="answer" items="${answerList}">
                                    <c:if test="${board.no eq answer.board_no}">
                                        답변완료
                                    </c:if>
                                </c:forEach>
                            </td>
                            <td>${board.writer }</td>
                            <td>${board.regdate }</td>
                            <td>${board.hit }</td>
                        </tr>
                    </c:forEach>
                </c:if>
                </tbody>
                <tfoot>
                <tr>
                    <td colspan="4"></td>
                    <td>
                        <button class="btn-primary" onclick="location.href='/board/insertBoard?flag_nq=Q'">글쓰기</button>
                    </td>
                </tr>
                </tfoot>
            </table>


            <!-- 검색을 위한 폼  -->
            <form action="/board/getBoardList?flag_nq=Q" method="post">
                <table class="border-none">
                    <tr>
                        <td>

                            <select name="searchCondition">
                                <option value="TITLE">제목
                                <option value="CONTENT">내용
                            </select>
                            <!--
			 <select name="searchCondition">
			 <c:forEach var="option" items="${conditionMap }">
			 	<option value="${option.value }">${option.key }</option>
			 </c:forEach>
			 </select>
			 -->
                            <input type="text" name="searchKeyword">
                            <input type="submit" value="검색">
                            <input type="hidden" value="Q" name="flag_nq">
                        </td>
                    </tr>
                </table>
            </form>

            <ul>
                <c:if test="${pageMaker.prev}">
                    <li class="page"><a href="/board/getBoardList${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a>
                    </li>
                </c:if>

                <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                    <li class="page"><a href="/board/getBoardList${pageMaker.makeQuery(idx)}">${idx}</a></li>
                </c:forEach>

                <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                    <li class="page"><a href="/board/getBoardList${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </section>
</main>

<%-- footer --%>
<jsp:include page="../fragments/footer.jsp" flush="false"/>

<!-- arrow -->
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