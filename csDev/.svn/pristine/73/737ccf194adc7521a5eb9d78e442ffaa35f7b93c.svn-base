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
                    <h1 class="h3 mb-0 text-gray-800">LYS 회원가입</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form id="frm" name="frm" action="/signup/insertSignupLys" method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">ID</label>
                                <input type="text" class="form-control" name="userId" value="${cheValue.userId}"/>
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
                                	<c:forEach var="list" items="${questionList}" varStatus="status">
                                		 <option value="${list.dtlCd}" <c:if test="${list.dtlCd eq cheValue.pwQuestion}">selected</c:if>>${list.dtlNm}</option>
                                		 
                                	</c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">비밀번호 답변</label>
                                <input type="text" class="form-control" name="pwAnswer" value="${cheValue.pwAnswer}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">닉네임</label>
                                <input type="text" class="form-control" name="nickname" value="${cheValue.nickname}" />
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">전화번호</label>
                                <select class="form-control" name="phoneNumber1">
                                <c:forEach var="numList" items="${phoneNumList}" varStatus="status">
                                    <option value="${numList.dtlCd}" <c:if test="${numList.dtlCd eq cheValue.phoneNumber1}">selected</c:if>>${numList.dtlNm}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">&nbsp</label>
                                <input type="text" class="form-control" name="phoneNumber2" value="${cheValue.phoneNumber2}"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">&nbsp</label>
                                <input type="text" class="form-control" name="phoneNumber3" value="${cheValue.phoneNumber3}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="">성별</label>
                            <div class="form-check">
                                <c:forEach var="gender" items="${genderList}" varStatus="status">
                                	<input class="form-check-input" type="radio" value="${gender.dtlCd}" name="gender" id="gender" <c:if test="${gender.dtlCd eq cheValue.gender}">checked</c:if>>
                                	<label class="form-check-label" for="gender">
	                                    ${gender.dtlNm}
	                                </label>
	                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">주소</label>
                                <input type="text" class="form-control" name="address1" value="${cheValue.address1}"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="">상세주소</label>
                                <input type="text" class="form-control" name="address2" value="${cheValue.address2}"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">약관</label>
                                <textarea class="form-control" rows="6" id="signupTerms" name="signupTerms">${cheValue.signupTerms}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label for="">약관 동의</label>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Y" name="termsInfoYn" id="termsInfoYn" <c:if test="${cheValue.termsInfoYn eq 'Y'}">checked</c:if>>
                                <label class="form-check-label" for="termsInfoYn">
                                    개인정보 동의
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="checkbox" value="Y" name="termsBuyYn" id="termsBuyYn" <c:if test="${cheValue.termsBuyYn eq 'Y'}">checked</c:if>>
                                <label class="form-check-label" for="termsBuyYn">
                                    구매약관 동의
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="checkbox" value="Y" name="termsSellYn" id="termsSellYn" <c:if test="${cheValue.termsSellYn eq 'Y'}">checked</c:if>>
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
var msg = '${msg}'
if(msg != '') {
	alert(msg);
}
</script>
</body>
</html>
