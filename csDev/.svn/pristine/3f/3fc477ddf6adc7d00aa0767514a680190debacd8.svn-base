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
                    <h1 class="h3 mb-0 text-gray-800">Mr.we Sync Sample List</h1>
                </div>

                <form:form id="frm" name="frm" action="/updateRadioSelectWis" method="post">
                    <div class="form-group">
                        <label for="seq">seq</label>
                        <input type="text" class="form-control" id="seq" name="seq" value="${selectRadioSelectVO.seq}" <c:if test="${selectRadioSelectVO.seq ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="userName">userName</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${selectRadioSelectVO.userName}" <c:if test="${selectRadioSelectVO.seq ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="radio1">radio1</label>
                        <c:forEach var="map" items="${radio01List}" varStatus="status">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="radio1${status.count}" value="${map.deptCode}" name="radio1" <c:if test="${selectRadioSelectVO.radio1 eq map.deptCode}">checked="checked"</c:if> />
                                <label class="form-check-label" for="radio1${status.count}">
                                    ${map.deptName}
                                </label>
                            </div>
                        </c:forEach>
                    </div>
					
                    <div class="form-group">
                        <label for="radio2">radio2</label>
                        <c:forEach var="map" items="${radio02List}" varStatus="status">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" id="radio2${status.count}" value="${map.deptCode}" name="radio2" <c:if test="${selectRadioSelectVO.radio2 eq map.deptCode}">checked="checked"</c:if> />
                                <label class="form-check-label" for="radio2${status.count}">
                                    ${map.deptName}
                                </label>
                            </div>
                        </c:forEach>
                       <%--  <input type="text" class="form-control" id="radio2" placeholder="" name="radio2" value="${selectRadioSelectVO.radio2}"> --%>
                    </div>
                    <div class="form-group">
                        <label for="select1">select1</label>
                        <%--셀렉트 완성하기--%>
                        <!-- 1. 값을 변경하고 수정버튼을 누르면 값이 변경된것을 확인 할 수 있다.
                        2. 하지만 수정을 다시하기 위해 돌아가면 수정한 값이 셀렉박스에 노출되는것이 아닌, 최상위에 있는 셀렉박스에 최상위로 도는 값이 출력된다.
                        3. 선택을 하기위해선 $("select[name=select1]").val 로 선언을 하고싶은데, 현재 프로그래밍 문법은.
                        4. 이치문을 돌면서 맵 형식으로 키 벨류를 선언해서 코드를 선택하면 이름이 띄워지게 저장이 되는 로직인것같다.
                        5. 그러니 즉 3번에 로직을 적용 시키려면 어떻게 해야할까? -->
						<select class="form-control" id="select1" name="select1">
                            <c:forEach var="map" items="${select01List}" varStatus="status">
                            <option value="${map.deptCode}">${map.deptName}</option>
                            </c:forEach>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="select2">select2</label>
                        <%--셀렉트로 바꾸기--%>
                       <%--  <input type="text" class="form-control" id="select2" placeholder="" name="select2" value="${selectRadioSelectVO.select2}"> --%>
                       <select class="form-control" id="select2" name="select2">
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


	$(document).ready(function(){
	
		

	
	var selectbox01 = '<c:out value="${selectRadioSelectVO.select1}"/>';
	var selectbox02 = '<c:out value="${selectRadioSelectVO.select2}"/>';
	

	$('#select1').val(selectbox01).prop("selected", true);
	$('#select2').val(selectbox02).prop("selected", true);

	});

</script>


</body>
</html>
