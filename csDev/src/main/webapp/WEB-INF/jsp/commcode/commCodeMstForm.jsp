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
                    <h1 class="h3 mb-0 text-gray-800">공통코드 마스터 Form</h1>
                </div>

                <form:form id="frm" name="frm" action="/commcode/commCodeMstFormSave" method="post">
                    <div class="form-group">
                        <label for="mstCd">마스터코드</label>
                        <input type="text" class="form-control" id="mstCd" placeholder="mstCd" name="mstCd" value="${mstVO.mstCd}" <c:if test="${mstVO.mstCd ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="mstNm">마스터코드명</label>
                        <input type="text" class="form-control" id="mstNm" placeholder="mstNm" name="mstNm" value="${mstVO.mstNm}">
                    </div>
                    <div class="form-group">
                        <label for="useYn">사용유무</label>
                        <input type="text" class="form-control" id="useYn" placeholder="useYn" name="useYn" value="${mstVO.useYn}">
                    </div>
                    <c:if test="${mstVO.mstCd eq null}">
                        <button name="action" value="insert" type="submit" class="btn btn-success">등록</button>
                    </c:if>
                    <c:if test="${mstVO.mstCd ne null}">
                        <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
                        <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
                    </c:if>
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
