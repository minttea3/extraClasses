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
                    <h1 class="h3 mb-0 text-gray-800">과제 등록 정상우</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <div>
                    <form:form id="frm" name="frm" action="/syncBaseBallSaveJsw" method="post">
                        <div class="form-group">
                            <label for="userId">선수이름</label>
                            <input type="text" class="form-control" id="pyName" placeholder="선수명" name="pyName" value="${JswBaseballVO.pyName}">
                        </div>
                        <div class="form-group">
                            <label for="userName">등번호</label>
                            <input type="text" class="form-control" id="pyNum" placeholder="등번호" name="pyNum" value="${JswBaseballVO.pyNum}">
                        </div>
                        <div class="form-group">
                            <label for="userPhone">인지도</label>
                            <input type="text" class="form-control" id="pyPopular" placeholder="인지도" name="pyPopular" value="${JswBaseballVO.pyPopular}">
                        </div>
                        <div class="form-group">
                            <label for="userPhone">선수연봉</label>
                            <input type="text" class="form-control" id="pySal" placeholder="선수연봉" name="pySal" value="${JswBaseballVO.pySal}">
                        </div>
                        <div class="form-group">
                            <label for="userPhone">소속팀</label>
                            <input type="text" class="form-control" id="pyTeam" placeholder="소속팀" name="pyTeam" value="${JswBaseballVO.pyTeam}">
                        </div>
                        <button name="action" value="save" type="submit" class="btn btn-success">저장</button>
                        <c:if test="${JswBaseballVO.pyName ne null}">
                      		<button name="action" value="update" type="submit" class="btn btn-danger">수정</button>
                            <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
                        </c:if>
                    </form:form>
                </div>
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
