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
                    <h1 class="h3 mb-0 text-gray-800">Sample등록 류진환</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form id="frm" name="frm" action="/syncSampleFormSaveRjh2" method="post">
                    <div class="form-group">
                        <label for="sPlayer">name</label>
                        <input type="text" class="form-control" id="sPlayer" placeholder="sPlayer" name="sPlayer" value="${rjh_soccerVO.sPlayer}" <c:if test="${rjh_soccerVO.sPlayer ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="sAge">age</label>
                        <input type="text" class="form-control" id="sAge" placeholder="sAge" name="sAge" value="${rjh_soccerVO.sAge}">
                    </div>
                    <div class="form-group">
                        <label for="sTeam">team</label>
                        <input type="text" class="form-control" id="sTeam" placeholder="sTeam" name="sTeam" value="${rjh_soccerVO.sTeam}">
                    </div>
                    <div class="form-group">
                        <label for="sPosition">position</label>
                        <input type="text" class="form-control" id="sPosition" placeholder="sPosition" name="sPosition" value="${rjh_soccerVO.sPosition}">
                    </div>
                    <div class="form-group">
                        <label for="sCountry">country</label>
                        <input type="text" class="form-control" id="sCountry" placeholder="sCountry" name="sCountry" value="${rjh_soccerVO.sCountry}">
                    </div>
                    <button name="action" value="save" type="submit" class="btn btn-success">저장</button>
                    <c:if test="${rjh_soccerVO.sPlayer ne null}">
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
