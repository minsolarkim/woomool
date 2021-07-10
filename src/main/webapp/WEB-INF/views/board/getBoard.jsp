<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%@ include file="../fragments/head.html" %>
    <title>게시글 상세</title>
</head>
<body>

<!-- navbar -->
<jsp:include page="../fragments/navbar.jsp" flush="false"/>

<!-- Main -->
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <div class="breadcrumbs" data-aos="fade-in">
        <div class="container">
            <h2>상세 페이지</h2>
            <p> </p>
        </div>
    </div><!-- End Breadcrumbs -->

    <form action="/board/download" method="post">
        <input type="hidden" name="no" value="${board.no}">
        <div class="container">
            <div class="row mt-2">
                <div class="col-1"></div>
                <div class="col-1 text-center">
                    <i class="fa fa-check" aria-hidden="true"></i>
                </div>
                <div class="col-2 pt-1">
                    <h5><strong>제목</strong></h5>
                </div>
                <div class="col-7">
                    ${board.title}
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-1"></div>
                <div class="col-1 text-center">
                    <i class="fa fa-check" aria-hidden="true"></i>
                </div>
                <div class="col-2 pt-1">
                    <h5><strong>작성자</strong></h5>
                </div>
                <div class="col-7">
                    ${board.writer }
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-1"></div>
                <div class="col-1 text-center">
                    <i class="fa fa-check" aria-hidden="true"></i>
                </div>
                <div class="col-2 pt-1">
                    <h5><strong>내용</strong></h5>
                </div>
                <div class="col-7" style="width: 200px;">
                    ${board.content}
                </div>
            </div>
            <div class="row mt-2">
                <div class="col-1"></div>
                <div class="col-1 text-center">
                    <i class="fa fa-check" aria-hidden="true"></i>
                </div>
                <div class="col-2 pt-1">
                    <h5><strong>등록일</strong></h5>
                </div>
                <div class="col-7">
                    ${board.regdate }
                </div>
            </div>
            <c:if test="${not empty file}">
                <c:forEach var="file" items="${file}">
                    <div class="row mt-2">
                        <div class="col-1"></div>
                        <div class="col-1 text-center">
                            <i class="fa fa-check" aria-hidden="true"></i>
                        </div>
                        <div class="col-2 pt-1">
                            <h5><strong>첨부파일</strong></h5>
                        </div>
                        <div class="col-7">
                            <a href="/board/fileDownload?file_no=${file.file_no }">${file.org_file_name }</a>
                        </div>
                    </div>
                </c:forEach>
            </c:if>

            <div class="row mt-2">
                <div class="col-9"></div>
                <div class="col-1">
                    <input type="button" value="글 수정" onclick="updateBoard(this)" class="get-started-btn">
                </div>
                <div class="col-1">
                    <input type="button" value="글 삭제" onclick="deleteBoard(this)" class="get-started-btn">
                </div>
            </div>
        </div>
    </form>

    <hr>

    <form name="answer">
        <div class="container">
            <div class="row">
                <div class="col-4"></div>
                <div class="col-5">
                    <input type="hidden" name="no" value="${board.no}">
                    <c:if test="${fn:contains(board.flag_nq, 'Q') && empty answer}">
                        <div id="answer">
                            <textarea name="text" id="text" rows="2" cols="50"></textarea>
                        </div>
                    </c:if>
                </div>
                <div class="col-2">
                    <input type="button" onclick="insertAnswer(this)" value="답변 등록" class="get-started-btn">
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-9"></div>
                    <div class="col-1">
                        <c:if test="${not empty answer }">
                            <div id="answer">
                                <p id='text'>${answer.text}</p>
                                <input type='button' value='삭제' onclick='deleteAnswer(this)' class="get-started-btn">
                                <input type='button' value='수정' onclick='modifyAnswer(this)' class="get-started-btn">
                            </div>
                        </c:if>
                    </div>
                    <%--                    <div class="col-1">--%>
                    <%--                        <div id="answer">--%>
                    <%--                        </div>--%>
                    <%--                    </div>--%>
                </div>
            </div>
        </div>
    </form>
    <div class="container">
        <div class="row">
            <div class="col-5"></div>
            <div class="col-2">
                <a href="getBoardList.do?no=${board.no}&flag_nq=${board.flag_nq}">글 목록</a>
            </div>
        </div>
    </div>
</main>
<!-- End Main -->

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

<script>
    function updateBoard(frm) {
        if (${sessionScope.loginMember == null}) {
            alert('로그인이 필요한 서비스입니다.');
            location.href = '/login';
        } else
            location.href = "/board/updateBoard?no=${board.no}&flag_nq=${board.flag_nq}";
    }

    function deleteBoard(frm) {
        if (${sessionScope.loginMember == null}) {
            alert('로그인이 필요한 서비스입니다.');
            location.href = '/login';
        } else
            location.href = "/board/deleteBoard?no=${board.no}&flag_nq=${board.flag_nq}";
    }

    function cancelAnswer(frm) {
        location.href = "/board/getBoard?no=${board.no}";
    }

    function insertAnswer(frm) {
        var formData = $("form[name=answer]").serialize();
        $.ajax({
            url: '/board/insertAnswer',
            data: formData,
            type: 'POST',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            dataType: "json",
            success: function (answer) {
                $("#answer").html("<p id='text'>" + answer.text + "</p><input type='button' value='삭제' onclick='deleteAnswer(this)'><input type='button' value='수정' onclick='modifyAnswer(this)'>");
            },
            error: function (e) {
                alert("write 실패");
            }
        });

    }

    function modifyAnswer(frm) {
        var text = $("#text");
        $("#answer").html("<textarea id='text' rows='6' cols='60' name='text'>" +
            text.text() + "</textarea><input type='button' onclick='updateAnswer(this)' value='답변 수정'><input type='button' onclick='cancelAnswer(this)' value='취소'>");
    }

    function updateAnswer(frm) {
        var formData = $("form[name=answer]").serialize();
        $.ajax({
            url: '/board/updateAnswer',
            data: formData,
            type: 'POST',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function () {
                location.reload();
            },
            error: function (e) {
                alert("실패");
            }
        });
    }

    function deleteAnswer(frm) {
        var formData = $("form[name=answer]").serialize();
        $.ajax({
            url: '/board/deleteAnswer',
            data: formData,
            type: 'POST',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
            success: function () {
                location.reload();
            },
            error: function () {
                alert("실패");
            }
        });
    }
</script>

</body>
</html>