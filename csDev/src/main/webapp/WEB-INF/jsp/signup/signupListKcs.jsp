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
                    <h1 class="h3 mb-0 text-gray-800">회원 가입 리스트 김은진꺼 복사</h1>
                </div>

                <!-- 요기가 컨텐츠 -->

                <form:form action="/signup/signupListKej" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="userId">User ID</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">User ID</div>
                                </div>
                                <input type="text" class="form-control" id="userId" placeholder="UserID" name="userId" value="${signupVO2.userId}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="nickname">nickname</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">nickname</div>
                                </div>
                                <input type="text" class="form-control" id="nickname" placeholder="nickname" name="nickname" value="${signupVO2.nickname}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="gender">gender</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">gender</div>
                                </div>
                                <input type="text" class="form-control" id="gender" placeholder="gender" name="gender" value="${signupVO2.gender}">
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
                        <th scope="col" style="width: 5%;"><input type="checkbox" id="headChk" /></th>
                        <th scope="col" style="width: 5%;">#</th>
                        <th scope="col" style="width: 10%;">ID</th>
<%--                        <th scope="col" style="width: 5%;">비밀번호</th>--%>
<%--                        <th scope="col" style="width: 5%;">비밀번호 질문</th>--%>
<%--                        <th scope="col" style="width: 10%;">비밀번호 답변</th>--%>
<%--                        <th scope="col" style="width: 5%;">닉네임</th>--%>
                        <th scope="col" style="width: 10%;">연락처</th>
                        <th scope="col" style="width: 5%;">성별</th>
<%--                        <th scope="col" style="width: 10%;">주소1</th>--%>
<%--                        <th scope="col" style="width: 10%;">주소2</th>--%>
                        <th scope="col" style="width: 5%;">개인정보 동의</th>
<%--                        <th scope="col" style="width: 5%;">구매약관 동의</th>--%>
<%--                        <th scope="col" style="width: 5%;">판매약관 동의</th>--%>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
                        <tr>
                            <td scope="row"><input type="checkbox" name="bodyChk" /> </td>
                            <td scope="row"><c:out value="${status.count}" /></td>
                            <td>
                                <input type="text" value="${list.userId}" />
                            </td>
<%--                            <td>${list.userPw}</td>--%>
<%--                            <td>${list.pwQuestion}</td>--%>
<%--                            <td>${list.pwAnswer}</td>--%>
<%--                            <td>${list.nickname}</td>--%>
                            <td>
<%--                                    ${list.phoneNumber}--%>
                                <select class="form-control" name="phoneNumber1">
                                    <c:forEach var="map" items="${phoneNumber}" varStatus="status">
                                        <option value="${map.dtlCd}" <c:if test="${list.phoneNumber1 eq map.dtlCd}">selected="selected"</c:if> >${map.dtlNm}</option>
                                    </c:forEach>
                                </select>
                                <input type="text" value="${list.phoneNumber2}" />
                                <input type="text" value="${list.phoneNumber3}" />
                            </td>
                            <td>
<%--                                    ${list.gender}--%>
                                <input type="radio" name="rdo<c:out value="${status.count}" />" /> 여자<c:out value="${status.count}" />
                                <input type="radio" name="rdo<c:out value="${status.count}" />" /> 남자
                            </td>
<%--                            <td>${list.address1}</td>--%>
<%--                            <td>${list.address2}</td>--%>
                            <td>
                                <input type="checkbox" value="Y" <c:if test="${list.termsInfoYn eq 'Y'}"> checked="checked"</c:if> ><c:out value="${status.count}" />
                            </td>
<%--                            <td>${list.termsBuyYn}</td>--%>
<%--                            <td>${list.termsSellYn}</td>--%>
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

<script>

    $(document).ready(function () {
        $('#headChk').change(function (){
            fn_headChk( $(this).prop('checked') );
        });

        $('input[name=bodyChk]').change(function () {
            fn_bodyChk();
        })
    });

    function fn_headChk( chkFlag ){
        if ( chkFlag ){
            $('input[name=bodyChk]').each(function() {
                $(this).prop('checked', true);
            });
        }else{
            $('input[name=bodyChk]').each(function() {
                $(this).prop('checked', false);
            });
        }
    }

    function fn_bodyChk() {
        let allChkFlag = false;
        $('input[name=bodyChk]').each(function() {
            if ( !$(this).prop('checked') ){
                allChkFlag = true;
                return false;
            }
        });

        if ( allChkFlag ){
            $('#headChk').prop('checked', false);
        }else{
            $('#headChk').prop('checked', true);
        }
    }
</script>
</body>
</html>
