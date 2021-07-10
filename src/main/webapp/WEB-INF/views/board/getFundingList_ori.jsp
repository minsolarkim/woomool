<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <%@ include file="../fragments/head.html" %>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
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
    <meta charset="UTF-8">
<%--    <style>--%>
<%--        #container {--%>
<%--            width: 50%;--%>
<%--            margin: 0 auto;--%>
<%--        }--%>

<%--        h1, h3, p {--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        table {--%>
<%--            border-collapse: collapse;--%>
<%--        }--%>

<%--        table, th, td {--%>
<%--            border: 1px solid black;--%>
<%--            margin: 0 auto;--%>
<%--            text-align: center !important;--%>
<%--        }--%>

<%--        th {--%>
<%--            background-color: silver;--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .page {--%>
<%--            display: block;--%>
<%--            margin: 0 3px;--%>
<%--            float: left;--%>
<%--            border: 1px solid #e6e6e6;--%>
<%--            width: 28px;--%>
<%--            height: 28px;--%>
<%--            line-height: 28px;--%>
<%--            text-align: center;--%>
<%--            background-color: #fff;--%>
<%--            font-size: 13px;--%>
<%--            color: #999999;--%>
<%--            text-decoration: none;--%>
<%--        }--%>

<%--        .center {--%>
<%--            text-align: center;--%>
<%--        }--%>

<%--        .border-none, .border-none td {--%>
<%--            border: none;--%>
<%--        }--%>

<%--        div > img {--%>
<%--            width: 100%;--%>
<%--            height: 35%;--%>
<%--        }--%>

<%--        .list {--%>
<%--            display: block;--%>
<%--        }--%>

<%--    </style>--%>
    <title>펀딩리스트</title>
</head>
<body>

<%-- navbar --%>
<jsp:include page="../fragments/navbar.jsp" flush="false"/>

<div class="container" id="container">
    <h1>펀딩리스트</h1>
    <c:if test="${not empty boardList}">
        <c:forEach var="board" items="${boardList}">
            <div style="float: left; padding:3%; width:33%;">
                <div><img class="image" src="/board/getImg.do?no=${board.pimg_no }"></div>
                <br>
                <div class="progress">
                    <div class="progress-bar" role="progressbar" style="width: ${board. percent }%"
                         aria-valuenow="${board. percent }"
                         aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                <div>${board. percent }%</div>
                <ul>
                    <li class="list">${board.product_name }</li>
                    <li class="list">${board.region }</li>
                    <li class="list">${board. percent }%</li>
                </ul>
            </div>
        </c:forEach>
    </c:if>

    <div>
        <form action="/board/getFundingList.do">
            <table class="border-none">
                <tr>
                    <td>
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

        <p><a href="">글등록</a></p>

        <ul>
            <c:if test="${pageMaker.prev}">
                <li class="page"><a href="/board/getFundingList.do?page=1">처음</a></li>
                <li class="page"><a href="${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
            </c:if>

            <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
                <li class="page"><a href="${pageMaker.makeQuery(idx)}">${idx}</a></li>
            </c:forEach>

            <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
                <li class="page"><a href="${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
                <li class="page"><a href="/board/getFundingList.do?page=${pageMaker.tempEndPage }">맨끝</a></li>
            </c:if>
        </ul>
    </div>
</div>

<%-- footer --%>
<jsp:include page="../fragments/footer.jsp" flush="false"/>

</body>
</html>