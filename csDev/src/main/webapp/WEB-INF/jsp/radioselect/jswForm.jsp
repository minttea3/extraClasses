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
                    <h1 class="h3 mb-0 text-gray-800">정상우 Sync Sample List</h1>
                </div>

                <form:form id="frm" name="frm" action="/updateRadioSelectJsw" method="post">
                    <div class="form-group">
                        <label for="seq">seq</label>
                        <input type="text" class="form-control" id="seq" name="seq" value="${sRsVO.seq}" <c:if test="${sRsVO.seq ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="userName">userName</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${sRsVO.userName}" <c:if test="${sRsVO.seq ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                    <!--
                       	1.라디오 버튼 값 수정시 데이터가 저장 된다
                        2.리스트에서 셀렉시 수정된 값을 불러오는 지 확인한다.
                    -->
                        <label for="radio1">radio1</label>
                        <c:forEach var="map" items="${radio01List}" varStatus="status">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="radio1${status.count}" value="${map.deptCode}" name="radio1" <c:if test="${sRsVO.radio1 eq map.deptCode}">checked="checked"</c:if> />
                                <label class="form-check-label" for="radio1${status.count}">
                                    ${map.deptName}
                                </label>
                            </div>
                        </c:forEach>
                    </div>

                    <div class="form-group">
                        <label for="radio2">radio2</label>  
                        <%--라디오로 바꾸기--%>
                        <c:forEach var="map" items="${radio02List}" varStatus="status">
                        <div class="form-check">
                        <input class="form-check-input"  type="radio"  id="radio2${status.count}" placeholder="" value="${map.deptCode}" name="radio2" <c:if test="${sRsVO.radio2 eq map.deptCode}">checked="checked"</c:if> />
                        <label class="formp-check-label" for="radio2${status.count}">
                      			${map.deptName}
                        </label>
                        </div>
                       </c:forEach>
                    </div>
                    <div class="form-group">
                        <label for="select1">select1</label>
 				   <!--
                       	1.셀렉박스 수정시 데이터가 저장 된다
                        2.리스트에서 셀렉시 수정된 값을 불러오는 지 확인한다.
                    -->
                        <%--셀렉트 완성하기--%>
                        <select class="form-control" id="select1" name="select1">
                            <c:forEach var="map" items="${select01List}" varStatus="status">
                          	  <option value="${map.deptCode}">${map.deptName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="select2">select2</label>
                        <%--셀렉트로 바꾸기--%>
                        <select  class="form-control" id="select2" name="select2">
                        	<c:forEach var="map" items="${select02List}" varStatus="status">
                        		<option value="${map.deptCode}">${map.deptName}</option>
                        	</c:forEach>
                        </select>
                    </div>
                    <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
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
/**	
	$(document).ready(function() {
	/*
		1.셀렉트박스를 수정한 후 저장을 하면 정상적으로 수정된 값이 DB에 저장된다.
		2.조회를 다시 하면 수정 한 value가 아닌 초기 값으로 보여준다.
		3.jstl문법을 사용해 옵션을 저장 했기 때문에 jstl문법으로 출력을 해줘야한다.
		4.컨트롤러 55라인~58라인에 selectone 함수 호출시 지정한 변수에 데이터가 저장이 되있으므로 
		  값을 가져오면 된다.
	
		
		var selVal1 = '<c:out value="${sRsVO.select1}"/>';
		var selVal2 = '<c:out value="${sRsVO.select2}"/>';
		
		// DB에서 꺼내 온 값을 각 셀렉박스 VALUE로 넣어주고 , prop selected-선택된 값 , true 로 선택된 값(DB에 저장된 값)을 가져온다.
 		$('#select1').val(selVal1).prop("selected",true);
		$('#select2').val(selVal2).prop("selected",true);  
		
	});
	
*/
</script>


</body>
</html>
