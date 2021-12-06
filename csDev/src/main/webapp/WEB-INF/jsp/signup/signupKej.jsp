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
                    <h1 class="h3 mb-0 text-gray-800">김은진 회원가입</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form id="frm" name="frm" action="/signup/insertSignupKej" method="post">
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="userId">ID</label>
                                <input type="text" class="form-control" name="userId" value="${signupVO.userId }" required="required" maxlength="20"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="userPw">PassWord</label>
                                <input type="password" class="form-control" name="userPw" value="${signupVO.userPw }" required="required" maxlength="20"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="userPwChk">PassWord 확인</label>
                                <input type="password" class="form-control" name="userPwChk" value="${signupVO.userPwChk }" required="required" maxlength="20"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
    <%--                            질문테이블 생성필요--%>
                                <label for="pwQuestion">비밀번호 질문</label>
                                <select class="form-control" name="pwQuestion" class="form-control">
                                	<c:forEach var="map" items="${selectPwQuestionList }">
                                		<option value="${map.dtlCd }" <c:if test="${map.dtlCd eq signupVO.pwQuestion }">selected="selected"</c:if>>${map.dtlNm }</option>
                                	</c:forEach>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="pwAnswer">비밀번호 답변</label>
                                <input type="text" class="form-control" name="pwAnswer" value="${signupVO.pwAnswer }" maxlength="20" required="required"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="nickname">닉네임</label>
                                <input type="text" class="form-control" name="nickname" value="${signupVO.nickname }" maxlength="20" required="required"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="phoneNumber1">전화번호</label>
                                <select class="form-control" name="phoneNumber1">
                                <c:forEach var="signupPhoneMap" items="${selectPhoneNumberList}" varStatus="status">
                                    <option value="${signupPhoneMap.dtlCd}" <c:if test="${signupPhoneMap.dtlCd eq signupVO.phoneNumber1}">selected="selected"</c:if>>${signupPhoneMap.dtlNm}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="phoneNumber2">&nbsp</label>
                                <input type="text" class="form-control" name="phoneNumber2" value="${signupVO.phoneNumber2 }" placeholder="숫자만 입력 가능합니다." maxlength="4" required="required"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="phoneNumber3">&nbsp</label>
                                <input type="text" class="form-control" name="phoneNumber3" value="${signupVO.phoneNumber3 }" placeholder="숫자만 입력 가능합니다." maxlength="4" required="required"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label for="gender">성별</label>
                            <div class="form-check">
                            <c:forEach var="gl" items="${ selectGenderList}" varStatus="status">
                                <input class="form-check-input" type="radio" value="${gl.dtlCd }"  name="gender"  id="gender${status.count }" <c:if test="${gl.dtlCd eq signupVO.gender }">checked="checked"</c:if>>
                                <label class="form-check-label" for="gender${status.count }" >
                                   ${gl.dtlNm }
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                             </c:forEach>
                               
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="address1">주소</label>
                                <input type="text" class="form-control" name="address1" value="${signupVO.address1 }" maxlength="20" required="required"/>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label for="address2">상세주소</label>
                                <input type="text" class="form-control" name="address2" value="${signupVO.address2 }" maxlength="20" required="required"/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="form-group">
                                <label for="">약관</label>
                                <textarea class="form-control" rows="6">${selectTerms}</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <label for="">약관 동의</label>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="Y" name="termsInfoYn" id="termsInfoYn" <c:if test="${signupVO.termsInfoYn eq 'Y' }">checked="checked"</c:if>>
                                <label class="form-check-label" for="termsInfoYn">
                                    개인정보 동의
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="checkbox" value="Y" name="termsBuyYn" id="termsBuyYn" <c:if test="${signupVO.termsBuyYn eq 'Y' }">checked="checked"</c:if>>
                                <label class="form-check-label" for="termsBuyYn">
                                    구매약관 동의
                                </label>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                <input class="form-check-input" type="checkbox" value="Y" name="termsSellYn" id="termsSellYn" <c:if test="${signupVO.termsSellYn eq 'Y' }">checked="checked"</c:if>>
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
var msg = '${msg}';
if(msg != ""){
	alert(msg);
}

</script>
</body>
</html>
