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
                    <h1 class="h3 mb-0 text-gray-800">Dept List</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <div class="container">
                    <form id="frmSave" onsubmit="return false">
                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="deptCode">Dept Code</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">Dept Code</div>
                                    </div>
                                    <input type="text" class="form-control" id="deptCode" placeholder="" name="deptCode" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="deptName">deptName</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">deptName</div>
                                    </div>
                                    <input type="text" class="form-control" id="deptName" placeholder="" name="deptName" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <label class="sr-only" for="deptGrp">deptGrp</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">deptGrp</div>
                                    </div>
                                    <input type="text" class="form-control" id="deptGrp" placeholder="" name="deptGrp" value="" />
                                </div>
                            </div>
                            <div class="col">
                                <div class="col-auto">
                                    <button id="btnInsert" class="btn btn-info">등록</button>
                                    <button id="btnUpdate" class="btn btn-info">수정</button>
                                    <button id="btnDelete" class="btn btn-info">삭제</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <br />
                <hr />
                <br />

                <div class="container">
                    <form id="frmSearch" onsubmit="return false">
                        <div class="row">
                            <div class="col">
                                <label class="sr-only" for="deptCode1">Dept Code</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">Dept Code</div>
                                    </div>
                                    <input type="text" class="form-control" placeholder="" name="deptCode" value="" />
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
                        <th scope="col">Code</th>
                        <th scope="col">Name</th>
                        <th scope="col">그룹Code</th>
                    </tr>
                    </thead>
                    <tbody id="tbodyDeptList">
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
    $(document).ready(function(){

        $('#btnSearch').click(function (){
            selectDeptList();
        });

        $('#btnInsert').click(function (){
            insertDept();
        });

        $('#btnUpdate').click(function (){
            updateDept();
        });

        $('#btnDelete').click(function (){
            deleteDept();
        });

        selectDeptList();
    });

    function selectDeptList(){
        fn_callAjax('/selectDeptList', $('#frmSearch').serialize(), 'get', cb_selectDeptList);
    }

    function cb_selectDeptList( rstData ){

        let innerHtml = '';
        let idx = 0;
        for (const deptMap of rstData) {
            innerHtml += '<tr>';
            innerHtml += '<td scope="row">' + ++idx + '</td>';
            innerHtml += '<td>' + deptMap.deptCode + '</td>';
            var jsParam = "javascript:setDeptData('" + deptMap.deptCode + "','" + deptMap.deptName + "','" + deptMap.deptGrp + "')";
            innerHtml += '<td><a href="' + jsParam + '">' + deptMap.deptName + '</a></td>';
            innerHtml += '<td>' + deptMap.deptGrp + '</td>';
            innerHtml += '</tr>';
        }
        $('#tbodyDeptList').html( innerHtml );

        fn_formReset('frmSave');
    }

    function insertDept(){
        fn_callAjax('/insertDept', $('#frmSave').serialize(), 'POST', cb_insertDept);
    }

    function cb_insertDept( rstData ){
        alert('등록완료');
        fn_formReset('frmSave');
        selectDeptList();
    }

    function updateDept(){
        fn_callAjax('/updateDept', $('#frmSave').serialize(), 'POST', cb_updateDept);
    }

    function cb_updateDept( rstData ){
        alert('수정완료');
        fn_formReset('frmSave');
        selectDeptList();
    }

    function setDeptData(deptCode, deptName, deptGrp){
        $('#deptCode').val(deptCode);
        $('#deptName').val(deptName);
        $('#deptGrp').val(deptGrp);
    }

    function deleteDept(){
        fn_callAjax('/deleteDept', $('#frmSave').serialize(), 'POST', cb_deleteDept);
    }

    function cb_deleteDept( rstData ){
        selectDeptList();
        fn_formReset('frmSave');
        alert('삭제완료');
    }

</script>
</body>
</html>
