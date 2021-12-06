
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
                    <h1 class="h3 mb-0 text-gray-800">회원 리스트 정상우</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <form:form name="list" action="/signup/signupListJsw" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for="user_id">USER ID</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">USER ID </div>
                                </div>
                                <input type="text" class="form-control" id="userId" placeholder="아이디 " name="userId" value="${signupVO.userId}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for="nickname">NICKNAME</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">NICKNAME</div>
                                </div>
                                <input type="text" class="form-control" id="nickname" placeholder="닉네임" name="nickname" value="${signupVO.nickname}">
                            </div>
                        </div>
                        <div class="col-auto">
                            <label class="sr-only" for=""></label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">여성</div>
                                </div>
                                <input type="radio" class="form-control" id="gender" name="gender" value="W"<c:if test="${signupVO.gender eq 'W'}"> checked="checked"</c:if> >
                                <div class="input-group-prepend">
                                    <div class="input-group-text">남성</div>
                                </div>
                                <input type="radio" class="form-control" id="gender" name="gender" value="M"<c:if test="${signupVO.gender eq 'M'}"> checked="checked"</c:if>>
                            </div>
                        </div>
                        <div class="col-auto">
                            <button name="action" class="btn btn-info" type="submit">조회</button>
                            <button name="action" class="btn btn-info" type="button" id="uptBtn">수정</button>
                            <button name="action" class="btn btn-info" type="button" id="delBtn">삭제</button>                            
                            <button name="action" class="btn btn-info" type="button" id="saveBtn" onclick="save();">저장</button>                            
                            <button name="action" class="btn btn-info" type="button" id="btnchange">행전환</button>                            
                            <button name="action" class="btn btn-info" type="button" onclick="add_row();">행추가</button>                            
                            <button name="action" class="btn btn-info" type="button" onclick="add();">등록</button>                            
                        </div>
                    </div>

                </form:form>
                <br /><br />
                
                <form id="list" action="/signup/updateListJsw" method="post">
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
                    <tbody id="users">
                    <c:forEach var="list" items="${signupListJsw}" varStatus="status">
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
	                                <c:forEach var="map" items="${QA}" varStatus="statusx">
                              		      <option value="${map.dtlCd}"<c:if test="${list.pwQuestion eq  map.dtlCd}" >selected="selected"</c:if>  >${map.dtlNm}</option>
	                                </c:forEach>
                                </select>
                            </td>
                            <td><input type="text" name="listSignupVO[${status.index}].pwAnswer" value="${list.pwAnswer}" ></td>
							 <td>                     
                              <c:forEach var="gen"  items="${gender}"  varStatus="statz">
                                    <input  type="radio" id="gender${statz.index }" name="listSignupVO[${status.index}].gender" value="${gen.dtlCd }" <c:if test="${list.gender eq gen.dtlCd }">checked="checked"</c:if> >${gen.dtlNm }
                            </c:forEach>          
                            </td>
							
							<td><input type="text" name="listSignupVO[${status.index}].nickname"   value="${list.nickname}" ></td>
                            <td><input type="text" name="listSignupVO[${status.index}].address1"   value="${list.address1}" ></td>
                            <td><input type="text" name="listSignupVO[${status.index}].address2"   value="${list.address2}" ></td>
                            <td>
                                <select class="form-control" name="listSignupVO[${status.index}].phoneNumber1">
                                    <c:forEach var="map" items="${telNum}" varStatus="statusa">
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
                <input type="hidden" id="checkSubmit" name="action" >
                </form>
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
<script  type="text/javascript">
	
	$(document).ready(function(){
		//체크박스 체크 확인하기 
		$("input[name='checkbox_all']").click(function(){//전체 선택 클릭시 
			console.log("1");
			if($("input[name='checkbox_all']").is(":checked")){//전체 선택에 체크되면 
				$("input:checkbox[id='checkFlag']").prop("checked",true); // 하단 체크값 체크 
			}else{
				$("input:checkbox[id='checkFlag']").prop("checked",false); // 아니면 해제 
			}
		});
		//Reverse
		$("input:checkbox[id='checkFlag']").click(function(){ 
			if($("input:checkbox[id='checkFlag']:checked").length == $("input:checkbox[id='checkFlag']").length){//체크된 값 과 체크박스의 길이를 비교했을 때 같으면 전체 체크박스 체크 
				$("input[name='checkbox_all']").prop("checked",true);
			}else{
				$("input[name='checkbox_all']").prop("checked",false);
			}
		});
		/// 수정 버튼 클릭시 
		// 버튼 value에 update 값을 넣어준다
		// 그 후 list submit 처리 
		$('#uptBtn').click(function(){
			$('#checkSubmit').val('update');
			$('#list').submit();
		});		
		$('#delBtn').click(function(){
			$('#checkSubmit').val('delete');
			$('#list').submit();
		});	
	});		
	
	 //등록 
	 function add(){
		$('#checkSubmit').val('insert');
		$('#list').submit();
	 }
	 //수정 및 저장 
	 function save(){
		 $('#checkSubmit').val('save');
		 $('#list').submit();
	 }
	 
	//로우 추가 
	function add_row() {
	    var my_tbody = document.getElementById('users'); 
	    // tbody에 아이디 부여 후 tbody 안에 있는 로우를 추가해준다
		// insertCell(숫자)는 n번째 cell  
	    var row = my_tbody.insertRow( my_tbody.rows.length ); // 하단에 추가
// 	    var row = my_tbody.insertRow(0); // 상단에 추가
	    
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
	    
// 	    var cnt = $("input[name=checkFlag] .idx").length+1;
	    var asd = document.getElementsByClassName("idx").length+1; 
// 	    var ser = my_tbody.row(0).length;
	    var count = parseInt(asd);
	    
	    cell1.innerHTML = '<td><input type="checkbox" class="idx" name="listSignupVO['+count+'].checkFlag" id="checkFlag" value="Y" /></td> ';
	    cell2.innerHTML =  count;
	    cell3.innerHTML = '<td><input type="hidden" name="listSignupVO['+count+'].seq ></td>';
	    cell4.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].userId"></td>';
	    cell5.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].userPw" ></td>';
	    cell6.innerHTML = '<td><select class="form-control" name="listSignupVO['+count+'].pwQuestion"><c:forEach var="map" items="${QA}" varStatus="statusx"><option>${map.dtlNm}</option></c:forEach></select></td>';
	    cell7.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].pwAnswer" ></td>';
	    cell8.innerHTML = '<td><c:forEach var="gen"  items="${gender}"  varStatus="statz"><input  type="radio" id="gender'+count+'" name="listSignupVO['+count+'].gender" value="${gen.dtlCd }">${gen.dtlNm }</c:forEach></td>';
	    cell9.innerHTML = '<td><input type="text" name="listSignupVO['+count+'].nickname"></td>';
	    cell10.innerHTML ='<td><input type="text" name="listSignupVO['+count+'].address1"></td>';
	    cell11.innerHTML ='<td><input type="text" name="listSignupVO['+count+'].address2"></td>';
	    cell12.innerHTML ='<td><select class="form-control" name="listSignupVO['+count+'].phoneNumber1">'+'<c:forEach var="map" items="${telNum}" varStatus="statusa"><option>${map.dtlNm}</option></c:forEach> </select><input type="text" name="listSignupVO['+count+'].phoneNumber2" /><input type="text" name="listSignupVO['+count+'].phoneNumber3"  /></td>';
	    cell13.innerHTML ='<td><input type="checkbox" name="listSignupVO['+count+'].termsInfoYn" value="Y"></td>';
	    cell14.innerHTML ='<td><input type="checkbox" name="listSignupVO['+count+'].termsBuyYn" value="Y"></td>';
	    cell15.innerHTML ='<td><input type="checkbox" name="listSignupVO['+count+'].termsSellYn" value="Y"></td>';
	  }
	

</script>
</body>
</html>
