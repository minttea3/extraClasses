<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2021. 8. 23.
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Navbar -->
    <jsp:include page="/WEB-INF/jsp/common/nav.jsp" />
    <!-- End of Navbar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <jsp:include page="/WEB-INF/jsp/common/topbar.jsp" />

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">카페 메뉴 등록 김은진</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form id="frm" name="frm" action="/cafeMenuFormSaveKej" method="post">
                    <div class="form-group">
                        <label for="cCode">코드번호</label>
                        <input type="text" class="form-control" id="cCode" placeholder="코드번호" name="cCode" value="${cafeMenuVO.cCode}">
                    </div>
                    <div class="form-group">
                        <label for="cMenu">음료명</label>
                        <input type="text" class="form-control" id="cMenu" placeholder="음료명" name="cMenu" value="${cafeMenuVO.cMenu}">
                    </div>
                    <div class="form-group">
                        <label for="cOrigin">원산지</label>
                        <input type="text" class="form-control" id="cOrigin" placeholder="원산지" name="cOrigin" value="${cafeMenuVO.cOrigin}">
                    </div>
                    <div class="form-group">
                        <label for="cPrice">가격</label>
                        <input type="text" class="form-control" id="price" placeholder="가격" name="cPrice" value="${cafeMenuVO.cPrice}">
                    </div>
                    <button name="action" value="save" type="submit" class="btn btn-success">저장  </button>
                    <c:if test="${cafeMenuVO.cCode ne null}">
                        <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
                    </c:if>
                </form:form>
                <!-- 요기가 컨텐츠 끝 -->

            </div>
        </div>
        <!-- Footer -->
        <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
        <!-- End of Footer -->
    </div>
    <!-- End of Content Wrapper -->
</div>
<!-- End of Page Wrapper -->


</body>
</html>
