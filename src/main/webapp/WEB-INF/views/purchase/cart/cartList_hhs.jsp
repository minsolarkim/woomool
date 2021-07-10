<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <title>장바구니 목록</title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/purchase/purchase.css'/>" >
</head>
<body>
<div>
    <button onclick="location.href='/product/productList'">상품목록</button>
</div>
<h2>장바구니 확인</h2>
<c:choose>
    <c:when test="${cartChecks == null }">
        장바구니가 비었습니다.
    </c:when>
    <c:otherwise>
        <form method="post">
            <table>
                <tr>
                    <th>장바구니번호</th>
                    <th>회원 아이디</th>
                    <th>상품명</th>
                    <th>상품 수</th>
                    <th>상품 금액</th>
                    <th>취소</th>
                </tr>
                <c:forEach var="cartCheck" items="${cartChecks}" varStatus="i">
                    <tr>
                        <td>${cartCheck.id }</td>
                        <td>${cartCheck.member_id }</td>
                        <td>${cartCheck.name}</td>
                        <td>${cartCheck.product_count}</td>
                        <td><fmt:formatNumber value="${cartCheck.price }" pattern="#,###,###"/></td>
                        <td><a href="/cart/delete/${cartCheck.id}">[삭제]</a></td>
                    </tr>
                    <tr>
                        <td colspan="6" style="text-align: center">
                                ${cartCheck.id}번 주문 금액 합계 : <fmt:formatNumber value="${cartCheck.total_money }"
                                                                              pattern="#,###,###"/>
                        </td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="6" style="text-align: center">
                        총합계 : <fmt:formatNumber value="${sum}" pattern="#,###,###"/>
                    </td>
                </tr>
            </table>
                <%--			<input type="hidden" name="cart_count" value="${cart.count }">--%>
            <div align="center">
                <br>
                <button type="button" onclick="location.href='/cart/deleteAll/${member_id}'">장바구니 비우기</button>
                <c:if test="${!empty cartChecks}">
                    <button type="button" onclick="location.href='/order/orderDetail/${member_id}'">주문하기</button>
                </c:if>
                <c:if test="${empty cartChecks}">
                    <button type="button" onclick="OrderDetail()">주문하기</button>
                </c:if>
            </div>
        </form>
    </c:otherwise>
</c:choose>
<script>
    function OrderDetail() {
        alert("장바구니가 비었습니다.");
        window.location.href = '/cart/list/${member_id}';
    }
</script>
</body>
</html>