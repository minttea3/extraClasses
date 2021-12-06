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
                    <h1 class="h3 mb-0 text-gray-800">회원 가입 리스트 김영준</h1>
                </div>

                <!-- 요기가 컨텐츠 -->

                 <form:form action="/signup/signupListkyj" method="get">
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
		                           		&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" id="gender${vsg.index }" name="gender" value="${rdS.dtlCd }"   <c:if test="${signupVO2.gender eq rdS.dtlCd }"> checked="checked"</c:if>>
		                           		<label for="gender${vsg.index }" >${rdS.dtlNm}</label>
	                           		</c:forEach>&nbsp;&nbsp;
                           		</div>
                            </div>
                        </div>
                        <div class="col-auto">
							<button name="action" class="btn btn-info" type="submit">조회</button>
                            <button name="action" class="btn btn-info" type="button" id="upDateBtten">수정</button>
                            <button name="action" class="btn btn-info" type="button" id="deLeteBtten">삭제</button>   
							<button name="action" class="btn btn-info" type="button" onclick="crelow();">추가</button>                            
							<button name="action" class="btn btn-info" type="button" onclick="add();">등록</button>
                          
                        </div>
                    </div>
                </form:form> 
                      <!--   <div class="col-auto">
                        </div> -->
                <br /><br /> 
                 <form:form id="fomelist" name="fomelist" action="/signup/listSignUpdate" method="post">
                  <table id="test" class="table table-striped">
                    <thead>
                    <tr>
						<th><input name="checkbox_all" id="chkall" type="checkbox"/></th>
                   		<th scope="col">#</th>
                        <th scope="col"></th>
                        <th scope="col">유저아이디</th>
                        <th scope="col">비밀번호</th>
                        <th scope="col">비밀번호질문</th>
                        <th scope="col">비밀번호답변</th>
                        <th scope="col">성별</th>
                        <th scope="col">닉네임</th>
                        <th scope="col">주소</th>
                        <th scope="col">상세주소</th>
                        <th scope="col">전화번호</th>
                        <th scope="col">개인정보</th>
                        <th scope="col">구매약관</th>
                        <th scope="col">판매약관</th>
		            </tr>
                    </thead>
                    <tbody id="cbBody">
                    <c:forEach var="list" items="${selectSignupKyj}" varStatus="status">
                       <tr>
                        	<td>	
								<input class="idx" type="checkbox" name="listSignupVO[${status.index}].checkFlag" id="checkFlag" value="Y" />
							</td> 
                            <td scope="row"><c:out value="${status.count}" /></td>
                            <td><input type="hidden" name="listSignupVO[${status.index}].seq" value="${list.seq} " ></td>
                            <td><input type="text" name="listSignupVO[${status.index}].userId" value="${list.userId} " ></td>
                            <td><input type="text" name="listSignupVO[${status.index}].userPw" value="${list.userPw}" ></td>
                           
                           	<td>
                            	<select class="form-control" name="listSignupVO[${status.index}].pwQuestion">
	                                <c:forEach var="map" items="${selectPwQuestionList}" varStatus="statusx">
                              		      <option value="${map.dtlCd}"<c:if test="${list.pwQuestion eq  map.dtlCd}" >selected="selected"</c:if>  >${map.dtlNm}</option>
	                                </c:forEach>
                                </select>
                            </td>
                            <td><input type="text" name="listSignupVO[${status.index}].pwAnswer" value="${list.pwAnswer}" ></td>
							 <td>                     
                              <c:forEach var="gen"  items="${selectGenderList}"  varStatus="statz">
                                    <input  type="radio" id="gender${statz.index }" name="listSignupVO[${status.index}].gender" value="${gen.dtlCd }" <c:if test="${list.gender eq gen.dtlCd }">checked="checked"</c:if> >${gen.dtlNm }
                            </c:forEach>          
                            </td>
							
							<td><input type="text" name="listSignupVO[${status.index}].nickname"   value="${list.nickname}" ></td>
                            <td><input type="text" name="listSignupVO[${status.index}].address1"   value="${list.address1}" ></td>
                            <td><input type="text" name="listSignupVO[${status.index}].address2"   value="${list.address2}" ></td>
                            <td>
                                <select class="form-control" name="listSignupVO[${status.index}].phoneNumber1">
                                    <c:forEach var="map" items="${selectPhoneNumberList}" varStatus="statusa">
                                        <option value="${map.dtlCd}" <c:if test="${list.phoneNumber1 eq map.dtlCd}">selected="selected"</c:if> >${map.dtlNm}</option>
                                    </c:forEach>
                                </select>
                                <input type="text" name="listSignupVO[${status.index}].phoneNumber2" value="${list.phoneNumber2}" />
                                <input type="text" name="listSignupVO[${status.index}].phoneNumber3" value="${list.phoneNumber3}" />
                            </td>
                            <td>
                                <input type="checkbox" name="listSignupVO[${status.index}].termsInfoYn" value="Y" <c:if test="${list.termsInfoYn eq 'Y'}"> checked="checked"</c:if> >
                            </td>
                            <td>
                                <input type="checkbox" name="listSignupVO[${status.index}].termsBuyYn" value="Y" <c:if test="${list.termsBuyYn eq 'Y'}"> checked="checked"</c:if> >
                            </td>
                            <td>
                                <input type="checkbox" name="listSignupVO[${status.index}].termsSellYn" value="Y" <c:if test="${list.termsSellYn eq 'Y'}"> checked="checked"</c:if>>
                            </td>
	                 </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <input type="hidden" id="chkSbm" name="action" >
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

$('#allCheckb').click(function(){ 
	var allCheckbChk = $(this).prop('checked');
	if(allCheckbChk){ 
		$('input[name=cb]').prop('checked',true);
	}else{ 
		$('input[name=cb]').prop('checked',false);
	}
});


$('input[name=cb]').click(function(){ 
	var flag = true;
	$('input[name=cb]').each(function(index,item){
		
		var item = $(item).prop('checked');
	if(item){ 
	}else{ 
		flag = false; 
		return false;
	}
	});
	
	if(flag){
		$('#allCheckb').prop('checked',true);	
	}else{
		$('#allCheckb').prop('checked',false);	
	}
});


$(document).ready(function(){

	$('#upDateBtten').click(function(){
		$('#chkSbm').val('update');
		$('#fomelist').submit();
	});		
	$('#deLeteBtten').click(function(){
		$('#chkSbm').val('delete');
		$('#fomelist').submit();
	});	
	
});


function add(){
	$('#chkSbm').val('insert');
	$('#fomelist').submit();
}

//////////////

// 전체 갯수
$("input:checkbox[name=is_check]").length
 	
// 선택된 갯수
$("input:checkbox[name=is_check]:checked").length
 
// 전체 체크
$("input[name=mycheck]:checkbox").prop("checked", true);
 
// 전체 체크 순회
$("input:checkbox[name=is_check]").each(function() {
 this.checked = true;
});
 
// 체크여부 확인
if($("input:checkbox[name=complete_yn]").is(":checked") == true) {
  //작업
}


//로우 추가 
function crelow() {


	// 1. 테이블 바디영역 변수 선언
	 var my_tbody = document.getElementById('cbBody');
	 // tbody에 아이디 부여 후 tbody 안에 있는 로우를 추가해준다
		// insertCell(숫자)는 n번째 cell  
	    var row = my_tbody.insertRow( my_tbody.rows.length ); // 하단에 추가
	    var cell1 = row.insertCell(0);
	    var cell2 = row.insertCell(1);
	    var cell3 = row.insertCell(2);
	    var cell4 = row.insertCell(3);
	    var cell5 = row.insertCell(4);
	    var cell6 = row.insertCell(5);
	    var cell7 = row.insertCell(6);
	    var cell8 = row.insertCell(7);
	    var cell9 = row.insertCell(8);
	    var cell10 = row.insertCell(9);
	    var cell11 = row.insertCell(10);
	    var cell12 = row.insertCell(11);
	    var cell13 = row.insertCell(12);
	    var cell14 = row.insertCell(13);
	    var cell15 = row.insertCell(14);
	    
//	    var cnt = $("input[name=checkFlag] .idx").length+1;
	    var asd = document.getElementsByClassName("idx").length+1; 
	    var count = parseInt(asd);
	    
	    cell1.innerHTML = '<td><input type="checkbox" class="idx" name="listSignupVO['+count+'].checkFlag" id="checkFlag" value="Y" /></td> ';
	    cell2.innerHTML = count;
	    cell3.innerHTML = '<td><input type="hidden" name="listSignupVO['+count+'].seq ></td>';
	    cell4.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].userId"></td>';
	    cell5.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].userPw" ></td>';
	    cell6.innerHTML = '<td><select class="form-control" name="listSignupVO['+count+'].pwQuestion"><c:forEach var="map" items="${selectPwQuestionList}" varStatus="statusx"><option>${map.dtlNm}</option></c:forEach></select></td>';
	    cell7.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].pwAnswer" ></td>';
	    cell8.innerHTML = '<td><c:forEach var="gen"  items="${selectGenderList}"  varStatus="statz"><input  type="radio" id="gender'+count+'" name="listSignupVO['+count+'].gender" value="${gen.dtlCd }">${gen.dtlNm }</c:forEach></td>';
	    cell9.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].nickname"></td>';
	    cell10.innerHTML ='<td><input type="text" name="listSignupVO['+count+'].address1"></td>';
	    cell11.innerHTML ='<td><input type="text" name="listSignupVO['+count+'].address2"></td>';
	    cell12.innerHTML ='<td><select class="form-control" name="listSignupVO['+count+'].phoneNumber1">'+'<c:forEach var="map" items="${selectPhoneNumberList}" varStatus="statusa"><option>${map.dtlNm}</option></c:forEach> </select><input type="text" name="listSignupVO['+count+'].phoneNumber2" /><input type="text" name="listSignupVO['+count+'].phoneNumber3"  /></td>';
	    cell13.innerHTML ='<td><input type="checkbox" name="listSignupVO['+count+'].termsInfoYn" value="Y"></td>';
	    cell14.innerHTML ='<td><input type="checkbox" name="listSignupVO['+count+'].termsBuyYn" value="Y"></td>';
	    cell15.innerHTML ='<td><input type="checkbox" name="listSignupVO['+count+'].termsSellYn" value="Y"></td>';
	  }

</script>

</body>
</html>
