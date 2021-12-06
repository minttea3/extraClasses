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
                    <h1 class="h3 mb-0 text-gray-800">Sync Sample List</h1>
                </div>


                <div class="container">
                    <form id="frmSave" onsubmit="return false">
                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="userId">User ID</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">User ID</div>
                                    </div>
                                    <input type="text" class="form-control" id="userId" placeholder="UserID" name="userId" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="userName">userName</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">userName</div>
                                    </div>
                                    <input type="text" class="form-control" id="userName" placeholder="UserName" name="userName" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="userPhone">userPhone</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">userPhone</div>
                                    </div>
                                    <input type="text" class="form-control" id="userPhone" placeholder="userPhone" name="userPhone" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="deptCode">deptCode</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">deptCode</div>
                                    </div>
                                    <select class="form-control" id="deptCode" name="deptCode">
                                        <option value="">선택하세요</option>
                                        <c:forEach var="list" items="${deptCodeList}" varStatus="status">
                                            <option value="${list.deptCode}" <c:if test="${list.deptCode eq sampleVO.deptCode}">selected="selected"</c:if> >${list.deptName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="col-auto">
                                    <button id="btnSave" class="btn btn-info">저장</button>
                                    <button id="btnDelete" style="display: none" class="btn btn-info">삭제</button>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="action" id="action" />
                    </form>
                </div>

                <br />
                <hr />
                <br />

                <div class="container">
                    <form id="frmSearch" onsubmit="return false">
                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="userId1">User ID</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">User ID</div>
                                    </div>
                                    <input type="text" class="form-control" placeholder="UserID" name="userId" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="userName1">userName</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">userName</div>
                                    </div>
                                    <input type="text" class="form-control" placeholder="UserName" name="userName" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="userPhone1">userPhone</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">userPhone</div>
                                    </div>
                                    <input type="text" class="form-control" placeholder="userPhone" name="userPhone" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="">deptCode</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">deptCode</div>
                                    </div>
                                    <select class="form-control" id="" name="deptCode">
                                        <option value="">전체</option>
                                        <c:forEach var="list" items="${deptCodeList}" varStatus="status">
                                            <option value="${list.deptCode}" <c:if test="${list.deptCode eq sampleVO.deptCode}">selected="selected"</c:if> >${list.deptName}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                            <div class="col">
                                <div class="col-auto">
                                    <button id="btnSearch" class="btn btn-info">조회</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <br /><br />
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">ID</th>
                        <th scope="col">이름</th>
                        <th scope="col">전화</th>
                        <th scope="col">부서코드</th>
                    </tr>
                    </thead>
                    <tbody id="tbodySampleList">
                    </tbody>
                </table>

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

        $('#btnSearch').click(function (){
            selectSampleList();
        });

        $('#btnSave').click(function (){
            saveSample();
        });

        $('#btnDelete').click(function (){
            deleteSample();
        });

        selectSampleList();
    });

    function selectSampleList(){
        fn_callAjax('/selectAsyncSampleList', $('#frmSearch').serialize(), 'get', cb_selectSampleList);
    }

    function cb_selectSampleList( rstData ){

        let innerHtml = '';
        let idx = 0;
        for (const sampleMap of rstData) {
            innerHtml += '<tr>';
            innerHtml += '<td scope="row">' + ++idx + '</td>';
            var jsParam = "javascript:setSampleData('" + sampleMap.userId + "','" + sampleMap.userName + "','" + sampleMap.userPhone + "','" + sampleMap.deptCode + "')";
            innerHtml += '<td><a href="' + jsParam + '">' + sampleMap.userId + '</a></td>';
            innerHtml += '<td>' + sampleMap.userName + '</td>';
            innerHtml += '<td>' + sampleMap.userPhone + '</td>';
            innerHtml += '<td>' + sampleMap.deptName + '</td>';
            innerHtml += '</tr>';
        }
        $('#tbodySampleList').html( innerHtml );

        fn_formReset('frmSave');
    }

    function saveSample(){
        $('#action').val('save');
        $('#btnDelete').hide();
        fn_callAjax('/saveAsyncSample', $('#frmSave').serialize(), 'POST', cb_saveSample);
    }

    function cb_saveSample( rstData ){
        selectSampleList();
        fn_formReset('frmSave');
        alert('저장완료');
    }

    function setSampleData(userId, userName, userPhone, deptCode){
        $('#btnDelete').show();
        $('#userId').val(userId);
        $('#userName').val(userPhone);
        $('#userPhone').val(userPhone);

        $('#deptCode option').each(function (){
            if ($(this).val() == deptCode){
                $(this).attr('selected', true);
            }else{
                $(this).attr('selected', false);
            }
        });
    }

    function deleteSample(){
        $('#action').val('delete');
        $('#btnDelete').hide();
        fn_callAjax('/saveAsyncSample', $('#frmSave').serialize(), 'POST', cb_deleteSample);
    }

    function cb_deleteSample( rstData ){
        selectSampleList();
        fn_formReset('frmSave');
        alert('삭제완료');
    }

</script>
</body>
</html>

