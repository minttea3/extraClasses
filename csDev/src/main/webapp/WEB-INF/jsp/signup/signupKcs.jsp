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
                    <h1 class="h3 mb-0 text-gray-800">KCS 회원가입</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form id="frm" name="frm" action="/signup/insertSignup" method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">ID</label>
                                <input type="text" class="form-control" name="userId" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">PassWord</label>
                                <input type="password" class="form-control" name="userPw" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">PassWord 확인</label>
                                <input type="password" class="form-control" name="userPwChk" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
    <%--                            질문테이블 생성필요--%>
                                <label for="">비밀번호 질문</label>
                                <select class="form-control" name="pwQuestion">
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">비밀번호 답변</label>
                                <input type="text" class="form-control" name="pwAnswer" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">닉네임</label>
                                <input type="text" class="form-control" name="nickname" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">전화번호</label>
                                <select class="form-control" name="phoneNumber1">
                                <c:forEach var="signupPhoneMap" items="${signupPhoneList}" varStatus="status">
                                    <option value="${signupPhoneMap.deptCode}">${signupPhoneMap.deptName}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">&nbsp</label>
                                <input type="text" class="form-control" name="phoneNumber2" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">&nbsp</label>
                                <input type="text" class="form-control" name="phoneNumber3" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="">성별</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="M" name="gender" id="gender1" >
                                <label class="form-check-label" for="gender1">
                                    남자
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="radio" value="W" name="gender" id="gender2" >
                                <label class="form-check-label" for="gender2">
                                    여자
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">주소</label>
                                <input type="text" class="form-control" name="address1" />
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">상세주소</label>
                                <input type="text" class="form-control" name="address2" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">약관</label>
                                <textarea class="form-control" rows="6">${signupTerms}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label for="">약관 동의</label>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Y" name="termsInfoYn" id="termsInfoYn">
                                <label class="form-check-label" for="termsInfoYn">
                                    개인정보 동의
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="checkbox" value="Y" name="termsBuyYn" id="termsBuyYn">
                                <label class="form-check-label" for="termsBuyYn">
                                    구매약관 동의
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="checkbox" value="Y" name="termsSellYn" id="termsSellYn">
                                <label class="form-check-label" for="termsSellYn">
                                    판매약관 동의
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <button type="submit" class="btn btn-success">회원가입</button>
                    </div>
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

<script>

</script>
</body>
</html>
