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
                        <h1 class="h3 mb-0 text-gray-800">공통코드 디테일 List</h1>
                    </div>

                    <form:form action="/syncSampleList" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="mstCd">디테일코드</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">디테일코드</div>
                                </div>
                                <input type="text" class="form-control" id="mstCd" placeholder="mstCd" name="mstCd" value="${dtlVO.mstCd}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="dtlCd">디테일코드</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">디테일코드</div>
                                </div>
                                <input type="text" class="form-control" id="dtlCd" placeholder="dtlCd" name="dtlCd" value="${dtlVO.dtlCd}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="dtlNm">디테일코드명</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">디테일코드명</div>
                                </div>
                                <%--<input type="text" class="form-control" id="dtlNm" placeholder="dtlNm" name="dtlNm" value="${dtlVO.dtlNm}">--%>
                                <select name = "bbbbb" id = "bbbbb" class="form-control">
                                    <c:forEach var = "map" items="${kkk}" >
                                        <option value="${map.mstCd}">${map.dtlNm}</option>

                                    </c:forEach>

                                </select>

                            </div>
                        </div>
                    </div>
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="useYn">사용유무</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">사용유무</div>
                                </div>
                                <input type="text" class="form-control" id="useYn" placeholder="useYn" name="useYn" value="${dtlVO.useYn}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <button name="action" class="btn btn-info" type="submit">조회</button>
                            <button name="action" class="btn btn-info" type="button" onclick = "location.href='/commcode/commCodeDtlForm'">등록</button>



                        </div>
                    </div>
                    </form:form>
                    <br /><br />
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">마스터코드</th>
                            <th scope="col">디테일코드</th>
                            <th scope="col">디테일코드명</th>
                            <th scope="col">사용유무</th>
                            <th scope="col">코드그룹</th>
                            <th scope="col">기타1</th>
                            <th scope="col">기타2</th>
                            <th scope="col">기타3</th>
                            <th scope="col">기타4</th>
                            <th scope="col">기타5</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="map" items="${commCodeDtlList}" varStatus="status">
                            <tr>
                                <td scope="row"><c:out value="${status.count}" /></td>
                                <td><a href="<c:url value='/commcode/commCodeDtlForm?mstCd=${map.mstCd}&dtlCd=${map.dtlCd}' />">${map.mstCd}</a></td>
                                <td>${map.dtlCd}</td>
                                <td>${map.dtlNm}</td>
                                <td>${map.useYn}</td>
                                <td>${map.codeGrp}</td>
                                <td>${map.etc1}</td>
                                <td>${map.etc2}</td>
                                <td>${map.etc3}</td>
                                <td>${map.etc4}</td>
                                <td>${map.etc5}</td>
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
