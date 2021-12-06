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
                        <h1 class="h3 mb-0 text-gray-800">Sync Sample List</h1>
                    </div>

                    <br /><br />
                    <form:form id="frm" name="frm" action="/testSave" method="post">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">인풋</th>
                                <th scope="col">성별</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="map" items="${syncTestList}" varStatus="status">
                                <tr>
                                    <td scope="row"><c:out value="${status.count}" /></td>
                                    <td><input type="text" name="listTestVO[${status.index}].input" value="${map.rdo}"></td>
                                    <td>
                                        <input type="radio" name="listTestVO[${status.index}].rdo" value="W" <c:if test="${map.rdo eq 'W'}"> checked="checked"</c:if> /> 여자 <input type="radio" name="listTestVO[${status.index}].rdo" value="M" <c:if test="${map.rdo eq 'M'}"> checked="checked"</c:if> /> 남자
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <button name="action" value="insert" type="submit" class="btn btn-success">커모온</button>
                    </form:form>
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
