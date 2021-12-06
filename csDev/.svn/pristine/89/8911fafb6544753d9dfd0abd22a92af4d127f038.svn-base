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
                    <h1 class="h3 mb-0 text-gray-800">공통코드 디테일 Form</h1>
                </div>

                <form:form id="frm" name="frm" action="/commcode/commCodeDtlFormSave" method="post">
                    <div class="form-group">
                        <label for="dtlCd">마스터코드</label>
                   		<c:if test="${dtlVO.mstCd eq null}">
	                   		<select name="mstCd" id="mstCd" class="form-control" >
		                   		<c:forEach var="list" items="${selectCommCodeMstList}">
		                   			<option value="${list.mstCd}">${list.mstNm }</option>
		                   		</c:forEach>
	                   		</select>
                   		</c:if>
                   		<c:if test="${dtlVO.mstCd ne null}">
                     	  <input type="text" class="form-control" id="mstCd" placeholder="mstCd" name="mstCd" value="${dtlVO.mstCd}" <c:if test="${dtlVO.mstCd ne null}"> readonly="readonly"</c:if>/>
                   		</c:if>
                    </div>
                    <div class="form-group">
                        <label for="dtlCd">디테일코드</label>
                        <input type="text" class="form-control" id="dtlCd" placeholder="dtlCd" name="dtlCd" value="${dtlVO.dtlCd}" <c:if test="${dtlVO.dtlCd ne null}"> readonly="readonly"</c:if>/>
                    </div>
                    <div class="form-group">
                        <label for="dtlNm">디테일코드명</label>
               	 	    <input type="text" class="form-control" id="dtlNm" placeholder="dtlNm" name="dtlNm" value="${dtlVO.dtlNm}">
                      <%--   <select name = "dtlNm" id = "dtlNm" class="form-control">
                            <c:forEach var = "map" items="${mg}" >
                            <option value="${map.mstCd}">${map.dtlNm}</option>
                            </c:forEach>
                        </select> --%>
                    </div>
                    <div class="form-group">
                        <label for="useYn">사용유무</label>
                        <select class="form-control" name="useYn"  id="useYn">
                            <c:forEach var="uLists" items="${uList}" >
                            	<option value="${uLists.dtlCd }"  <c:if test="${dtlVO.dtlCd eq uLists.dtlCd}"> selected="selected"</c:if>>${uLists.dtlNm}</option>
                          
                            </c:forEach>
                         </select>
                    </div>
                    <div class="form-group">
                        <label for="useYn">코드그룹</label>
                       <input type="text" class="form-control" id="codeGrp" placeholder="codeGrp" name="codeGrp" value="${dtlVO.codeGrp}">
                       <%-- <select name = "ccc" class="form-control">
                         <c:forEach var ="map" items="${bbb}">
                            <option value="${map.dtlCd}">${map.dtlNm}</option>
                        </c:forEach> --%>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="useYn">Etc1</label>
                        <input type="text" class="form-control" id="etc1" placeholder="etc1" name="etc1" value="${dtlVO.etc1}">
                    </div>
                    <div class="form-group">
                        <label for="useYn">Etc2</label>
                        <input type="text" class="form-control" id="etc2" placeholder="etc2" name="etc2" value="${dtlVO.etc2}">
                    </div>
                    <div class="form-group">
                        <label for="useYn">Etc3</label>
                        <input type="text" class="form-control" id="etc3" placeholder="etc3" name="etc3" value="${dtlVO.etc3}">
                    </div>
                    <div class="form-group">
                        <label for="useYn">Etc4</label>
                        <input type="text" class="form-control" id="etc4" placeholder="etc4" name="etc4" value="${dtlVO.etc4}">
                    </div>
                    <div class="form-group">
                        <label for="useYn">Etc5</label>
                        <input type="text" class="form-control" id="etc5" placeholder="etc5" name="etc5" value="${dtlVO.etc5}">
                    </div>
                    <c:if test="${dtlVO.dtlCd eq null}">
                        <button name="action" value="insert" type="submit" class="btn btn-success">등록</button>
                    </c:if>
                    <c:if test="${dtlVO.dtlCd ne null}">
                        <button name="action" value="update" type="submit" class="btn btn-success">수정</button>
                        <button name="action" value="delete" type="submit" class="btn btn-danger">삭제</button>
                    </c:if>
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


</body>
</html>
