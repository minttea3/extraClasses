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
                    <h1 class="h3 mb-0 text-gray-800">카페 메뉴 리스트 김은진</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form action="/cafeMenuListKej" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="cCode">코드 번호</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">코드번호</div>
                                </div>
                                <input type="text" class="form-control" id="cCode" placeholder="코드번호" name="cCode" value="${cafeMenuVO.cCode}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="cMenu">음료명</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">음료명</div>
                                </div>
                                <input type="text" class="form-control" id="cMenu" placeholder="음료명" name="cMenu" value="${cafeMenuVO.cMenu}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="cOrigin">원산지</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">원산지</div>

                                </div>
                                <input type="text" class="form-control" id="cOrigin" placeholder="원산지" name="cOrigin" value="${cafeMenuVO.cOrigin}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="cPrice">가격</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">가격</div>
                                </div>
                                <input type="text" class="form-control" id="cPrice" placeholder="가격" name="cPrice" value="${cafeMenuVO.cPrice}">
                            </div>
                        </div>
                            <%-- <div class="col-auto">
                                <label class="sr-only" for="c_incoming">입고일</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">입고일</div>
                                    </div>
                                    <input type="text" class="form-control" id="c_incoming" placeholder="입고일" name="c_incoming" value="${cafeMenuVO.c_incoming}">
                                </div>
                            </div> --%>
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
                        <th scope="col">코드번호</th>
                        <th scope="col">음료명</th>
                        <th scope="col">원산지</th>
                        <th scope="col">가격</th>
                        <!--   <th scope="col">입고일</th> -->
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${cafeMenuList}" varStatus="status">
                        <tr>
                            <td scope="row"><c:out value="${status.count}" /></td>
                            <td><a href="<c:url value='/cafeMenuFormKej?cCode=${list.cCode}' />">${list.cCode }</a></td>
                            <td>${list.cMenu }</td>
                            <td>${list.cOrigin }</td>
                            <td>${list.cPrice }</td>


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
