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

                <form:form id="frm" name="frm" action="/updateRadioSelectKcs" method="post">
                    <div class="form-group">
                        <label for="seq">seq</label>
                        <input type="text" class="form-control" id="seq" name="seq" value="${selectRadioSelectVO.seq}" <c:if test="${selectRadioSelectVO.seq ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="userName">userName</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${selectRadioSelectVO.userName}" <c:if test="${selectRadioSelectVO.seq ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="radio1">radio1</label>
                        <c:forEach var="map" items="${radio01List}" varStatus="status">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="radio1${status.count}" value="${map.deptCode}" name="radio1" <c:if test="${selectRadioSelectVO.radio1 eq map.deptCode}">checked="checked"</c:if> />
                                <label class="form-check-label" for="radio1${status.count}">
                                    ${map.deptName}
                                </label>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="form-group">
                        <label for="radio2">radio2</label>
                        <%--라디오로 바꾸기--%>
                        <input type="text" class="form-control" id="radio2" placeholder="" name="radio2" value="${selectRadioSelectVO.radio2}">
                    </div>
                    <div class="form-group">
                        <label for="select1">select1</label>
                        <%--셀렉트 완성하기--%>
                        <select class="form-control" id="select1" name="select1">
                            <c:forEach var="map" items="${select01List}" varStatus="status">
                            <option value="${map.deptCode}">${map.deptName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="select2">select2</label>
                        <%--셀렉트로 바꾸기--%>
                        <input type="text" class="form-control" id="select2" placeholder="" name="select2" value="${selectRadioSelectVO.select2}">
                    </div>
                    <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
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
