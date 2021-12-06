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
                    <h1 class="h3 mb-0 text-gray-800">방문한 국가 등록</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form id="frm" name="frm" action="/01visitlistsaveadd" method="post">
                    <div class="form-group">
                        <label for="Country">국가</label>
                        <input type="text" class="form-control" id="Country" placeholder="방문한 국가를 적어주세요. " name="Country" value="${visitVO.Country}">
                    </div>
                    <div class="form-group">
                        <label for="city">도시</label>
                        <input type="text" class="form-control" id="city" placeholder="방문한 도시를 적어주세요" name="city" value="${visitVO.city}">
                    </div>
                    <div class="form-group">
                        <label for="vdate1">날짜</label>
                        <input type="text" class="form-control" id="vdate1" placeholder="방문한 날짜를 적어주세요" name="vdate1" value="${visitVO.vdate1}">
                    </div>
                    <button name="action" value="save" type="submit" class="btn btn-success">저장</button>
                    <c:if test="${visitVO.Country ne null}">
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
