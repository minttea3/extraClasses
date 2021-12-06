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
                    <h1 class="h3 mb-0 text-gray-800">회원 리스트 - 이용선</h1>
                </div>
                             
                <form:form id="searchForm" action="/signup/signupListLys" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="userId">User ID</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">User ID</div>
                                </div>
                                <input type="text" class="form-control" id="userId" placeholder="UserID" name="userId" value="${searchValue.userId}"/>
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="nickname">nickname</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">nickname</div>
                                </div>
                                <input type="text" class="form-control" id="nickname" placeholder="nickname" name="nickname" value="${searchValue.nickname}"/>
                            </div>
                        </div>
                        <div class="col-auto" >
                            <label class="sr-only" for="gender">gender</label>
                            <div class="input-group mb-2" style="border: 1px solid #d3d3d3; border-radius: 0.5em;">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">gender</div>
                                </div>
                                <%-- <input type="text" class="form-control" id="gender" placeholder="gender" name="gender" value="${signupVO2.gender}"> --%>
                           		<div  style="padding-top: 10px;   height: 23px; ">
	                           		<c:forEach var="genderlist" items="${genderList}" varStatus="status2">
	                    				&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="gender" name="gender" value="${genderlist.dtlCd}" <c:if test="${genderlist.dtlCd eq searchValue.gender}">checked</c:if>/>
	                    				<label class="form-check-label" for="gender">
	                    					${genderlist.dtlNm}
	                    				</label>
	                    			</c:forEach>&nbsp;&nbsp;
                           		</div>
                            </div>
                        </div>
                        <div class="col-auto">
                            
                        </div>
                    </div>
                </form:form>
                
                <button type="submit" id="btnSearch" name="action" class="btn btn-info" >조회</button>
                <button type="button" id="btnIU" 	 name="action" class="btn btn-info" >저장</button>
                <button type="submit" id="btnDelete" name="action" class="btn btn-info" >삭제</button>
                <button type="button" id="addRow" 	 name="action" class="btn btn-info" >Row 추가</button>
                
                <form:form id="dataForm" commandName="lysSignupVO"  action="/signup/signupSaveListLys" method="post">
                <table class="table table-striped">
                    <thead>
	                    <tr>
	                    	<th><input type="checkbox" id="checkAll" value="All"/></th>
	                        <th scope="col">No</th>
	                        <th scope="col">ID</th>
	                        <th scope="col">PassWord</th>
	                        <th scope="col">질문</th>
	                        <th scope="col">답변</th>
	                        <th scope="col">성별</th>
	                        <th scope="col">닉네임</th>
	                        <th scope="col">주소1</th>
	                        <th scope="col">주소2</th>
	                        <th scope="col">전화번호</th>
	                        <th scope="col">개인정보</th>
	                        <th scope="col">구매약관</th>
	                        <th scope="col">판매약관</th>
	                    </tr>
                    </thead>
                    <tbody id="dataArea">
	                    <c:forEach var="list" items="${list}" varStatus="status">
	                    	<tr>
	                    		<td>
	                    			<input type="checkbox" id="checkTest" name="listLysSignupVO[${status.index}].checkTest" value="Y"/>
	                    		</td>
	                    		<td>
	                    			<input type="hidden" id="hidindex" name="hidindex" value="${status.index}" />
	                    			<input type="hidden" id="seq" name="listLysSignupVO[${status.index}].seq" value="${list.seq}"/>${status.index}
	                    		</td>
	                    		<td>
	                    			<input type="text" id="userId" name="listLysSignupVO[${status.index}].userId" value="${list.userId}"/>
	                    		</td>
	                    		<td>
	                    			<input type="text" id="userPw" name="listLysSignupVO[${status.index}].userPw" value="${list.userPw}"/>
	                    		</td>
	                    		<td>
	                    			<select class="" id="question" name="listLysSignupVO[${status.index}].pwQuestion">
	                    			<c:forEach var="question" items="${question}" varStatus="status1">
	                    				<option value="${question.dtlCd}" <c:if test="${question.dtlCd eq list.pwQuestion}">selected</c:if>>${question.dtlNm}</option>
	                    			</c:forEach>
	                    			</select>
	                    		</td>
	                    		<td>
	                    			<input type="text" id="pwAnswer" name="listLysSignupVO[${status.index}].pwAnswer" value="${list.pwAnswer}"/>
	                    		</td>
	                    		<td>
	                    			<c:forEach var="genderlist" items="${genderList}" varStatus="status2">
	                    				<input type="radio" id="gender" name="listLysSignupVO[${status.index}].gender" value="${genderlist.dtlCd}" <c:if test="${genderlist.dtlCd eq list.gender}">checked</c:if> />
	                    				<label class="form-check-label" for="gender">
	                    				${genderlist.dtlNm}
	                    				</label>
	                    				<br/>
	                    			</c:forEach>                            
	                    		</td>
	                    		<td>
	                    			<input type="text" id="nickname" name="listLysSignupVO[${status.index}].nickname" value="${list.nickname}"/>
	                    		</td>
	                    		<td>
	                    			<input type="text" id="address1" name="listLysSignupVO[${status.index}].address1" value="${list.address1}"/>
	                    		</td>
	                    		<td>
	                    			<input type="text" id="address2" name="listLysSignupVO[${status.index}].address2" value="${list.address2}"/>
	                    		</td>
	                    		<td>
	                    			<select class="" id="phoneNumber1" name="listLysSignupVO[${status.index}].phoneNumber1">
		                    			<c:forEach var="phoneNumList" items="${phoneNumList}" varStatus="status3">
		                    				<option value="${phoneNumList.dtlCd}" <c:if test="${phoneNumList.dtlCd eq list.phoneNumber1}">selected</c:if>>${phoneNumList.dtlNm}</option>
		                    			</c:forEach>
	                    			</select>
	                    			<br/>
	                    			<input type="text" id="phoneNumber2" name="listLysSignupVO[${status.index}].phoneNumber2" value="${list.phoneNumber2}"/>
	                    			<br/>
	                    			<input type="text" id="phoneNumber3" name="listLysSignupVO[${status.index}].phoneNumber3" value="${list.phoneNumber3}"/>
	                    		</td>
	                    		<td>
	                    			<input type="checkbox" id="termsInfoYn" name="listLysSignupVO[${status.index}].termsInfoYn" value="Y"<c:if test="${list.termsInfoYn eq 'Y'}">checked</c:if>/>
	                    		</td>
	                    		<td>
	                    			<input type="checkbox" id="termsBuyYn" name="listLysSignupVO[${status.index}].termsBuyYn" value="Y"<c:if test="${list.termsBuyYn eq 'Y'}">checked</c:if>/>
	                    		</td>
	                    		<td>
	                    			<input type="checkbox" id="termsSellYn" name="listLysSignupVO[${status.index}].termsSellYn" value="Y"<c:if test="${list.termsSellYn eq 'Y'}">checked</c:if>/>
	                    		</td>
	                    	</tr>
	                    </c:forEach>
					</tbody>
	                <input type="hidden" id="submitAction" name="action" />
                </table>
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


<script>

$(document).ready(function(){
	$('#btnDelete').click(function (){
		$("#submitAction").val("D");
		$("#dataForm").submit();
	});
	$('#btnIU').click(function (){
		$("#submitAction").val("M");
		$("#dataForm").submit();
	});
	$('#btnSearch').click(function (){
		$("#searchForm").submit();
	});

	$('#checkAll, #checkTest').click(checkedChange);
	$('#addRow').click(addRow);
});


var checkedChange = function() {
	//최상단 체크박스
	var chkAll = $("#checkAll");
	//for문 내의 체크박스
	var chkTest = $("input[id=checkTest]");
	//for문 내의 체크박스 중 체크된 갯수
	var chkTestCount = $("input[id=checkTest]:checked");
	//클릭한 체크박스의 value
	var clickVal = this.value;
	
	//alert("체크박스 전체 갯수 : " + chkTest.length + "체크된 체크박스 갯수 : " + chkTestCount.length);
	
	if(clickVal == "All") {
		if(chkAll.prop("checked")) {
			chkTest.prop("checked", true);
		} else if(!chkAll.prop("checked")) {
			chkTest.prop("checked", false);
		}
	} else {
		if(chkTest.length == chkTestCount.length) {
			chkAll.prop("checked", true);
		} else {
			chkAll.prop("checked", false);
		}
	}
};

var addRow = function() {
	var hidIndex = $("input[name=hidindex]");
	var maxIndex = 0;	
	
	for(var i=0; i<hidIndex.length; i++) {
		if(parseInt(maxIndex) < parseInt(hidIndex.eq(i).val())) {
			maxIndex = hidIndex.eq(i).val();
		}
	}
	maxIndex = parseInt(maxIndex) + 1;
	
	$("#dataArea").append('<tr>'
		+ '<td><input type="checkbox" id="checkTest" name="listLysSignupVO[' + maxIndex + '].checkTest" value="Y" checked="checked" onClick="checkedChange()"/></td>'
		+ '<td><input type="hidden" id="hidindex" name="hidindex" value="' + maxIndex + '" />'
		+ '<input type="hidden" id="seq" name="listLysSignupVO[' + maxIndex + '].seq" value="0"/>' + maxIndex + '</td>'
		+ '<td><input type="text" id="userId" name="listLysSignupVO[' + maxIndex + '].userId"/></td>'
		+ '<td><input type="text" id="userPw" name="listLysSignupVO[' + maxIndex + '].userPw"/></td>'
		
		+ '<td><select id="question" name="listLysSignupVO[' + maxIndex + '].pwQuestion">'
		+ '<c:forEach var="question" items="${question}" varStatus="status1">'
		+ '<option value="${question.dtlCd}">${question.dtlNm}</option>'
		+ '</c:forEach></select></td>'
		
		+ '<td><input type="text" id="pwAnswer" name="listLysSignupVO[' + maxIndex + '].pwAnswer"/></td>'
		
		+ '<td><c:forEach var="genderlist" items="${genderList}" varStatus="status2">'
		+ '<input type="radio" id="gender" name="listLysSignupVO[' + maxIndex + '].gender" value="${genderlist.dtlCd}"/>'
		+ '<label class="form-check-label" for="gender">${genderlist.dtlNm}</label><br/></c:forEach></td>'
		
		+ '<td><input type="text" id="nickname" name="listLysSignupVO[' + maxIndex + '].nickname"/></td>'
		+ '<td><input type="text" id="address1" name="listLysSignupVO[' + maxIndex + '].address1"/></td>'
		+ '<td><input type="text" id="address2" name="listLysSignupVO[' + maxIndex + '].address2"/></td>'
		
		+ '<td><select id="phoneNumber1" name="listLysSignupVO[' + maxIndex + '].phoneNumber1">'
		+ '<c:forEach var="phoneNumList" items="${phoneNumList}" varStatus="status3">'
		+ '<option value="${phoneNumList.dtlCd}">${phoneNumList.dtlNm}</option>'
		+ '</c:forEach></select><br/>'
		
		+ '<input type="text" id="phoneNumber2" name="listLysSignupVO[' + maxIndex + '].phoneNumber2"/><br/>'
		+ '<input type="text" id="phoneNumber3" name="listLysSignupVO[' + maxIndex + '].phoneNumber3"/></td>'
		+ '<td><input type="checkbox" id="termsInfoYn" name="listLysSignupVO[' + maxIndex + '].termsInfoYn" value="Y"/></td>'
		+ '<td><input type="checkbox" id="termsBuyYn" name="listLysSignupVO[' + maxIndex + '].termsBuyYn" value="Y"/></td>'
		+ '<td><input type="checkbox" id="termsSellYn" name="listLysSignupVO[' + maxIndex + '].termsSellYn" value="Y"/></td>'			
		+ '</tr>');
};

</script>
</body>
</html>
