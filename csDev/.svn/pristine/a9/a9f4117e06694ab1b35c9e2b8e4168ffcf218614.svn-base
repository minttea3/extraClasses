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
                        <h1 class="h3 mb-0 text-gray-800">김창수 라디오 셀렉트 리스트</h1>
                    </div>

                    <form:form action="/selectRadioList" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="userName">User Name</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">User Name</div>
                                </div>
                                <input type="text" class="form-control" id="userName" placeholder="" name="userName" value="${radioSelectVO.userName}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <button name="action" class="btn btn-info" type="submit">조회</button>
                        </div>
                    </div>
                    </form:form>
                    <br /><br />
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">seq</th>
                            <th scope="col">이름</th>
                            <th scope="col">라디오1</th>
                            <th scope="col">라디오2</th>
                            <th scope="col">셀렉트1</th>
                            <th scope="col">셀렉트2</th>
                            <th scope="col">등록일시</th>
                            <th scope="col">수정일시</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="map" items="${selectRadioSelectList}" varStatus="status">
                            <tr>
                                <td>${map.seq}</td>
                                <td><a href="<c:url value='/radioselect/kcsForm?seq=${map.seq}' />">${map.userName}</a></td>
                                <td>${map.radio1}</td>
                                <td>${map.radio2}</td>
                                <td>${map.select1}</td>
                                <td>${map.select2}</td>
                                <td>${map.createDt}</td>
                                <td>${map.updateDt}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
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
