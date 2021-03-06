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
                    <h1 class="h3 mb-0 text-gray-800">회원 가입 리스트 ver2 김은진</h1>
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
                        <div class="col-auto" >
                            <label class="sr-only" for="gender">gender</label>
                            <div class="input-group mb-2" style="border: 1px solid #d3d3d3; border-radius: 0.5em;">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">gender</div>
                                </div>
                                <%-- <input type="text" class="form-control" id="gender" placeholder="gender" name="gender" value="${signupVO2.gender}"> --%>
                           		<div  style="padding-top: 10px;   height: 23px; ">
	                           		<c:forEach var="rdS" items="${selectGenderList}" varStatus="vsg">
		                           		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="genders${vsg.index }" name="gender" value="${rdS.dtlCd }"   <c:if test="${signupVO2.gender eq rdS.dtlCd }"> checked="checked"</c:if>>
		                           		<label for="genders${vsg.index }" >${rdS.dtlNm}</label>
	                           		</c:forEach>&nbsp;&nbsp;
                           		</div>
                            </div>
                        </div>
                        <div class="col-auto">
                            <button name="action" value="view" class="btn btn-info" type="submit">조회</button>
							<button id="upBt" name="action" value="update" class="btn btn-success" type="button">수정</button>
							<button id="delBt" name="action" value="delete" class="btn btn-danger" type="button">삭제</button>
                          
                        </div>
                    </div>
                </form:form> 
                      <!--   <div class="col-auto">
                        </div> -->
                <br /><br /> 
                 <form:form id="frm" name="frm" action="/signup/signupListKejUpdate2" method="post">
                 <table class="table table-striped">
                <!--     <thead> -->
                    <tr>
                        <th scope="col" width="250px">
							<input type="checkbox" id="allCb" name="allCb" value="Y">
						</th><c:forEach var="list" items="${selectSignupKej}" varStatus="status">
						<td scope="row" class="chsize ${status.count }" >
                            	<input type="checkbox" value="Y" class="cb ${status.count }" name="listSignupVO[${status.index}].chkflag">
						</td></c:forEach>
					</tr>
					<tr>
                        <th scope="col">#</th>
                        <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
                        <td scope="row"><c:out value="${status.count}" /></td>
                        </c:forEach>
                    </tr>
					<tr>
                        <th scope="col">ID</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
                        <td>
                           	<input type="hidden" name="listSignupVO[${status.index}].seq" value="${list.seq}">
                           	<input type="text" name="listSignupVO[${status.index}].userId" value="${list.userId}">
                        </td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">비밀번호</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
                        <td><input type="text" name="listSignupVO[${status.index}].userPw" value="${list.userPw}"> </td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">비밀번호 질문</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
                        <td> 
                        	<select name="listSignupVO[${status.index}].pwQuestion">
                            	<c:forEach var ="pwQ" items="${selectPwQuestionList }">
                            		<option  value="${pwQ.dtlCd }" <c:if test="${pwQ.dtlCd eq list.pwQuestion}">selected="selected" </c:if>>${pwQ.dtlNm}</option>
                            	</c:forEach>
	                     	</select>
	                    </td>
                     </c:forEach>
                    </tr>
					<tr>   
                        <th scope="col">비밀번호 답변</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td><input type="text" name="listSignupVO[${status.index}].pwAnswer" value="${list.pwAnswer}"></td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">닉네임</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td><input type="text" name="listSignupVO[${status.index}].nickname" value="${list.nickname}"></td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">연락처</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td><select name="listSignupVO[${status.index}].phoneNumber1">
                         		<c:forEach var="ph1" items="${selectPhoneNumberList }">
                         			<option value="${ph1.dtlCd }" <c:if test="${list.phoneNumber1 eq ph1.dtlCd}">selected="selected"</c:if>>${ph1.dtlNm }</option>
                         		</c:forEach>
                         		<input type="text" value="${list.phoneNumber2 }" name="listSignupVO[${status.index}].phoneNumber2">
                         		<input type="text" value="${list.phoneNumber3 }" name="listSignupVO[${status.index}].phoneNumber3">
                        </select></td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">성별</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					  <td>
                           	 <c:forEach var="gd"  items="${selectGenderList}"  varStatus="vs">
                            	<input  type="radio" id="gender${status.index}${vs.index}" name="listSignupVO[${status.index}].gender" value="${gd.dtlCd }" <c:if test="${list.gender eq gd.dtlCd }">checked="checked"</c:if> >
                           		<label for="gender${status.index}${vs.index}" >${gd.dtlNm }</label>
                           	</c:forEach>
                      </td>
                     </c:forEach>
                    </tr>
					<tr>   
                        <th scope="col">주소1</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td><input type="text" name="listSignupVO[${status.index}].address1" value="${list.address1}"></td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">주소2</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td><input type="text" name="listSignupVO[${status.index}].address2" value="${list.address2}"></td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">개인정보 동의</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td>
                            	<input type="checkbox" name="listSignupVO[${status.index}].termsInfoYn" value="Y" <c:if test="${list.termsInfoYn eq 'Y' }">checked="checked"</c:if>>
                     </td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">구매약관 동의</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td>
                     	<input type="checkbox" name="listSignupVO[${status.index}].termsBuyYn" value="Y" <c:if test="${list.termsBuyYn eq 'Y' }">checked="checked"</c:if>>
                     </td>
                     </c:forEach>
                    </tr>
					<tr>    
                        <th scope="col">판매약관 동의</th>
					 <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
					 <td>
                            	<input type="checkbox" name="listSignupVO[${status.index}].termsSellYn" value="Y" <c:if test="${list.termsSellYn eq 'Y'}">checked="checked"</c:if>> 
                            </td>
                     </c:forEach>
                   </tr>
                <!--     </thead> -->
                  <!--   <tbody id="cbBody"> -->
                   <%--  <c:forEach var="list" items="${selectSignupKej}" varStatus="status">
                        <tr>
                            <td scope="row" class="chsize ${status.count }" >
                            	<input type="checkbox" value="Y" class="cb ${status.count }" name="listSignupVO[${status.index}].chkflag">
							</td>
                            <td scope="row"><c:out value="${status.count}" /></td>
                            <td>
                            	<input type="hidden" name="listSignupVO[${status.index}].seq" value="${list.seq}">
                            	<input type="text" name="listSignupVO[${status.index}].userId" value="${list.userId}"></a></td>
                            <td><input type="text" name="listSignupVO[${status.index}].userPw" value="${list.userPw}"> </td>
                            <td>
	                            <select name="listSignupVO[${status.index}].pwQuestion">
	                            	<c:forEach var ="pwQ" items="${selectPwQuestionList }">
	                            	<option  value="${pwQ.dtlCd }" <c:if test="${pwQ.dtlCd eq list.pwQuestion}">selected="selected" </c:if>>${pwQ.dtlNm}</option>
	                            	</c:forEach>
	                            </select>
                            </td>
                            <td><input type="text" name="listSignupVO[${status.index}].pwAnswer" value="${list.pwAnswer}"></td>
                            <td><input type="text" name="listSignupVO[${status.index}].nickname" value="${list.nickname}"></td>
                            <td><input type="text" value="${list.phoneNumber}"> //${list.phoneNumber1 }///${list.phoneNumber2 }////${list.phoneNumber3 }
                            	<select name="listSignupVO[${status.index}].phoneNumber1">
                            		<c:forEach var="ph1" items="${selectPhoneNumberList }">
                            			<option value="${ph1.dtlCd }" <c:if test="${list.phoneNumber1 eq ph1.dtlCd}">selected="selected"</c:if>>${ph1.dtlNm }</option>
                            		</c:forEach>
                            		<input type="text" value="${list.phoneNumber2 }" name="listSignupVO[${status.index}].phoneNumber2">
                            		<input type="text" value="${list.phoneNumber3 }" name="listSignupVO[${status.index}].phoneNumber3">
                            	</select>
                            </td>
                            <td>
                           	 <c:forEach var="gd"  items="${selectGenderList}"  varStatus="vs">
                            	<input  type="radio" id="gender${status.index}${vs.index}" name="listSignupVO[${status.index}].gender${status.index }" value="${gd.dtlCd }" <c:if test="${list.gender eq gd.dtlCd }">checked="checked"</c:if> >
                           		<label for="gender${status.index}${vs.index}" >${gd.dtlNm }</label>
                           	</c:forEach>
                            	
                            	
                            </td>
                            <td><input type="text" name="listSignupVO[${status.index}].address1" value="${list.address1}"></td>
                            <td><input type="text" name="listSignupVO[${status.index}].address2" value="${list.address2}"></td>
                            <td>${list.termsInfoYn}
                            	<input type="checkbox" name="listSignupVO[${status.index}].termsInfoYn" value="Y" <c:if test="${list.termsInfoYn eq 'Y' }">checked="checked"</c:if>>
                            </td>
                            <td>${list.termsBuyYn}
                            	<input type="checkbox" name="listSignupVO[${status.index}].termsBuyYn" value="Y" <c:if test="${list.termsBuyYn eq 'Y' }">checked="checked"</c:if>>
                            </td>
                            <td>${list.termsSellYn}
                            	<input type="checkbox" name="listSignupVO[${status.index}].termsSellYn" value="Y" <c:if test="${list.termsSellYn eq 'Y'}">checked="checked"</c:if>> 
                            </td>
                        </tr>
                    </c:forEach> --%>
                            	<input type="hidden" name="action" id="action" value="">
                    <!-- </tbody> -->
                </table> 
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
// 해더영역 체크 클릭시 -> 체크 되어있다면 바디영역 모두 체크, 체크가 안되어 있다면 바디영역 모두 체크 풀기
$('#allCb').click(function(){ // th영역 all체크 버튼 클릭시 -> 하단 체크박스 모두 클릭되게
	// 1. 해더 영역 체크가 클릭이 되어있는지 여부 확인
	var allCbChk = $(this).prop('checked');
	if(allCbChk){ // 2-1. 체크가 된 상태라면
		// 2-2. 바디영역 name="cb" 인걸 모두 체크하기
		//alert("오잉");
		$('.cb').prop('checked',true);
	}else{ // 3-1. 체크가 풀린 상태 라면
		// 3-2. 바디영역 name="cb" 인걸 모두 체크 풀기
		$('.cb').prop('checked',false);
	}
});

// 바디 영역 체크 클릭시 -> 바디 영역 name="cb" 인게 모두 체크가 되어 있다면 해더 영역 체크하기
// 					-> 바디 영역 name="cb" 인게 모두 체크가 되어 있지 않다면 해더 영역 체크풀기
/* $('input[name=cb]').click(function(){ // 1. 바디 영역 name="cb"클릭 이벤터
	// flag 변수를 스위치 처럼 사용해보자. 일단선언!
	var flag = true;
	$('input[name=cb]').each(function(index,item){ // 2. 바디영역 체크 박스 포문 돌려 접근한다.
		// 3. 바디영역 체크가 클릭 되어있는지 여부 확인
		// var cbChk = $(this).prop('checked');
		var item = $(item).prop('checked');
	if(item){ // 4-1. 바디 영역 체크박스가 모두 클릭이 되어 있다면 -> 해더 영역 클릭하기
		//$('#allCb').prop('checked',true);	
	}else{ // 4-2. 바디 영역 체크박스가 모두 클릭이 안 되어 있다면 -> 해더 영역 클릭해제하기 
		//$('#allCb').prop('checked',false);	
		flag = false; // 클릭이 안 된 경우에만 변경함.
		return false;
	}
	});
	
	if(flag){ // 바디 영역 모두 클릭이 된경우
		$('#allCb').prop('checked',true);	
	}else{ // 바디 영역 모두 클릭이 안 된 경우
		$('#allCb').prop('checked',false);	
	}
}); */
$('.cb').click(function(){ // 1. 바디 영역 name="cb"클릭 이벤터
	// flag 변수를 스위치 처럼 사용해보자. 일단선언!
	var flag = true;
	$('.cb').each(function(index,item){ // 2. 바디영역 체크 박스 포문 돌려 접근한다.
		// 3. 바디영역 체크가 클릭 되어있는지 여부 확인
		// var cbChk = $(this).prop('checked');
		var item = $(item).prop('checked');
	if(item){ // 4-1. 바디 영역 체크박스가 모두 클릭이 되어 있다면 -> 해더 영역 클릭하기
		//$('#allCb').prop('checked',true);	
	}else{ // 4-2. 바디 영역 체크박스가 모두 클릭이 안 되어 있다면 -> 해더 영역 클릭해제하기 
		//$('#allCb').prop('checked',false);	
		flag = false; // 클릭이 안 된 경우에만 변경함.
		return false;
	}
	});
	
	if(flag){ // 바디 영역 모두 클릭이 된경우
		$('#allCb').prop('checked',true);	
	}else{ // 바디 영역 모두 클릭이 안 된 경우
		$('#allCb').prop('checked',false);	
	}
});
</script>
<script>
$(document).ready(function(){
	// 수정 버튼 눌렀을 떄
	$('#upBt').click(function(){
		//alert("안녕");
		$('#action').val("update");
		//alert($('#action').val());
		$('#frm').submit();
	});
	
	// 삭제 버튼 눌렀을 때
	$('#delBt').click(function(){
		$('#action').val("delete");
		//alert($('#action').val());
		  $('#frm').submit(); 
		//alert("안녕2");
		
	});
	
	// 체크 박스의 td 영역 클릭시 체크 박스가 선택되게
/* 	$('.chsize').click(function(){
	//var a=$(this).children(".cb"); // td 안에 input 이 있을경우 -> 자식노드를 가져오고 싶은데 자식 노드를 가져올수가 없음.. ㅠ 
	var a = $(this).find(".cb").prop('checked');
	if(a){
		$(this).find(".cb").prop('checked',false);
	}else{
		$(this).find(".cb").prop('checked',true);
		
	}
		//$(a).prop('checked',true);
	});
	
		
 */
	
	
	
	
	
	
	
	
	
});
</script>
</body>
</html>
