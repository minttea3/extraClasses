<%--
  Created by IntelliJ IDEA.
  User: kimchangsu
  Date: 2021. 8. 23.
  Time: 오후 8:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<script src="http://code.jquery.com/jquery-3.5.1.min.js" ></script>
<html>
<head>
<meta charset="utf-8">
<%@ include file="/WEB-INF/jsp/common/header.jsp"%>
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
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">회원가입 이민규List</h1>
					</div>

					<form:form action="/signup/signupListLmg" method="get">
						<div class="form-row align-items-center">
							<div class="col-auto">
								<label class="sr-only" for="userId">User ID</label>
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">User ID</div>
									</div>
									<input type="text" class="form-control" id="userId"
										placeholder="ID" name="userId" value="${signupVO.userId}">
								</div>
							</div>
							<div class="col-auto">
								<label class="sr-only" for="userId">Nickname</label>
								<div class="input-group mb-2">
									<div class="input-group-prepend">
										<div class="input-group-text">Nickname</div>
									</div>
									<input type="text" class="form-control" id="nickname"
										placeholder="닉네임" name="nickname" value="${signupVO.nickname}">
										
								</div>
							</div>
							<div class="col-auto">
								<label class="sr-only" for="gender">gender</label>
								<div class="input-group mb-2">
									<div class="input-group-prepend">
									<div class="input-group-text">남성</div>
									</div>
									<input type="radio" class="form-control" value="M"
										 name="gender" value="${signupVO.gender}"<c:if test="${signupVO.gender eq 'M'}"> checked="checked"</c:if>>
										<div class="input-group-prepend">
									<div class="input-group-text">여성</div>
										 </div>
										 <input type="radio" class="form-control" value="W"
										 name="gender" value="${signupVO.gender}"<c:if test="${signupVO.gender eq 'W'}"> checked="checked"</c:if>>
										<div class="input-group-prepend">
								</div>
							</div>
						</div>
							<div class="col-auto">
								<button name="action" class="btn btn-info" type="submit">조회</button> <!-- submit은 새로고침을 하기때문에 새로 다시 뿌려주는것  -->
								<button name="action" class="btn btn-info" type="button" id="updatebtn">수정</button> <!-- button은 스크립트를 이용해서 이용해서 화면이동없이 바로 뿌려주는것  -->
								<button name="action" class="btn btn-info" type="button" id="deletebtn">삭제</button> <!-- button은 스크립트를 이용해서 이용해서 화면이동없이 바로 뿌려주는것  -->
							</div>
							</div>

					</form:form>

					<br />
					<br />
					<form id="update" action="/singup/updateLmg" method="post">
					
					<table class="table table-striped">
						<thead>
							<tr>
							<th><input type ="checkbox" id="all" name="all"></th>
								<th scope="col"></th>
								<th scope="col">#</th>
								<th scope="col">아이디</th>
								<th scope="col">비밀번호</th>
								<th scope="col">비밀번호 질문</th>
								<th scope="col">비밀번호 답변</th>
								<th scope="col">닉네임</th>
								<th scope="col">연락처</th>
								<th scope="col">성별</th>
								<th scope="col">주소</th>
								<th scope="col">상세주소</th>
								<th scope="col">개인정보 동의</th>
								<th scope="col">구매약관 동의</th>
								<th scope="col">판매약관 동의</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="map" items="${listsignup}" varStatus="status">
								<tr>
							<td><input type="checkbox" name="listsignup[${status.index}].chkFlag" id="checkbox_id" value ="Y"></td>
								<td><input type="hidden" name="listsignup[${status.index}].seq" value="${map.seq}"></td>
									<td scope="row"><c:out value="${status.count}" /></td>
									<td><input type="text" class="form-control" id="userId"
										name="listsignup[${status.index}].userId" value="${map.userId}"></td>
									<td><input type="text" class="form-control" id="userPw"
										name="listsignup[${status.index}].userPw" value="${map.userPw}"></td>

									<td><select class="form-control" name="listsignup[${status.index}].pwQuestion">
											<c:forEach var="list" items="${passwordQs}">
												<option value="${list.dtlCd}"
													<c:if test="${map.pwQuestion eq list.dtlCd}">selected="selected"</c:if>>${list.dtlNm}</option>
											</c:forEach>
									</select></td>

									<td><input type="text" class="form-control" id="pwAnswer"
										name="listsignup[${status.index}].pwAnswer" value="${map.pwAnswer}"></td>
									<td><input type="text" class="form-control" id="nickname"
										name="listsignup[${status.index}].nickname" value="${map.nickname}"></td>

									<td><select class="form-control" name="listsignup[${status.index}].phoneNumber1">
											<c:forEach var="list" items="${phoneNumber}">
												<option value="${list.dtlCd}"
													<c:if test="${map.phoneNumber1 eq list.dtlCd}">selected="selected"</c:if>>${list.dtlNm}</option>
											</c:forEach>
									</select> <input type="text" class="form-control" id="phoneNumber2"
										name="listsignup[${status.index}].phoneNumber2" value="${map.phoneNumber2}"> <input
										type="text" class="form-control" id="phoneNumber3"
										name="listsignup[${status.index}].phoneNumber3" value="${map.phoneNumber3}"></td>

									<td><c:forEach var="list" items="${gender}">
											<input type="radio" name="listsignup[${status.index}].gender" id="rad"
												value="${list.dtlCd}"
												<c:if test="${map.gender eq list.dtlCd}"> checked="checked"</c:if>>${list.dtlNm}
                                </c:forEach></td>

									<td><input type="text" class="form-control" id="address1"
										name="listsignup[${status.index}].address1" value="${map.address1}"></td>
									<td><input type="text" class="form-control" id="address2"
										name="listsignup[${status.index}].address2" value="${map.address2}"></td>
									<td><input type="checkbox" value="Y" name="listsignup[${status.index}].termsInfoYn"
										<c:if test="${map.termsInfoYn eq 'Y'}">checked="checked"</c:if>>${list.termsInfoYn}</td>
									<td><input type="checkbox" value="Y" name="listsignup[${status.index}].termsBuyYn"
										<c:if test="${map.termsBuyYn eq 'Y'}">checked="checked"</c:if>>${list.termsBuyYn}</td>
									<td><input type="checkbox" value="Y" name="listsignup[${status.index}].termsSellYn"
										<c:if test="${map.termsSellYn eq 'Y'}">checked="checked"</c:if>>${list.termsSellYn}</td>
								</tr>
								
							</c:forEach>
						</tbody>
					</table>
					<input type="hidden" name="action" id="action">
					</form>
				</div>
			</div>
			<!-- Footer -->
			<%@ include file="/WEB-INF/jsp/common/footer.jsp"%>
			<!-- End of Footer -->
		</div>
		<!-- End of Content Wrapper -->
	</div>
	<!-- End of Page Wrapper -->
	
<script>
$('input[name=all]').click(function(){
	if($('input[name=all]').is(":checked")) {
		$('input:checkbox[id=checkbox_id]').prop("checked",true);
	} else {
		$('input:checkbox[id=checkbox_id]').prop("checked",false);
	}
	
});

 $('input:checkbox[id=checkbox_id]').click(function(){
	if($('input:checkbox[id=checkbox_id]:checked').length == $('input:checkbox[id=checkbox_id]').length) {
		$('input[name=all]').prop("checked",true);
	} else {
		$('input[name=all]').prop("checked",false);
	}
}); 

 
//update 폼을 하나 생성해서 폼 안에만 새로고침 돌리기 위함
 $('#updatebtn').click(function(){
	 
	$('#action').val("update");
	$('#update').submit();
	 
 });
 
 
 $('#deletebtn').click(function(){
		
	$('#action').val("delete");
	$('#update').submit();
		 
	 });
	 
</script>

</body>
</html>
