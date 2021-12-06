
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
                    <h1 class="h3 mb-0 text-gray-800">회원 리스트 정상우</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form action="/signup/signupListJsw" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="user_id">USER ID</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">USER ID </div>
                                </div>
                                <input type="text" class="form-control" id="userId" placeholder="아이디 " name="userId" value="${signupVO.userId}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="nickname">NICKNAME</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">NICKNAME</div>
                                </div>
                                <input type="text" class="form-control" id="nickname" placeholder="닉네임" name="nickname" value="${signupVO.nickname}">
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
                        <th scope="col">#</th>
                        <th scope="col">유저아이디</th>
                        <th scope="col">닉네임</th>
                        <th scope="col">전화번호</th>
                        <th scope="col">비밀번호질문</th>
                        <th scope="col">비밀번호답변</th>
                        
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${signupListJsw}" varStatus="status">
                        <tr>
                            <td scope="row"><c:out value="${status.count}" /></td>
                            <td>${list.userId}</td>
                            <td>${list.nickname}</td>
                            <td>${list.phoneNumber}</td>
                            <td>${list.pwQuestion}</td>
                            <td>${list.pwAnswer}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
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
