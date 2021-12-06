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
                    <h1 class="h3 mb-0 text-gray-800">JavaScript | jQuery 방소연</h1>
                </div>

                <!-- 요기가 컨텐츠 -->
                <div class="row align-items-start">
                    <div class="col">
                        <div class="form-group">
                            <label for="input01">Input01</label>
                            <input type="text" class="form-control" id="input01" name="input01" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="input02">Input02</label>
                            <input type="text" class="form-control" id="input02" name="input02" />
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="input03">Input03</label>
                            <input type="text" class="form-control" id="input03" name="input03" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="selSports">SelectBox</label>
                            <select class="form-control" id="selSports" name="selSports">
                                <option value="">전체</option>
                                <option value="baseball">야구</option>
                                <option value="basketball">농구</option>
                                <option value="soccer">축구</option>
                                <option value="tennis">테니스</option>
                            </select>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="">Radio</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="baseball" name="rdoSports" id="rdoBaseball">
                                <label class="form-check-label" for="rdoBaseball">
                                    야구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="basketball" name="rdoSports" id="rdoBasketball">
                                <label class="form-check-label" for="rdoBasketball">
                                    농구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="soccer" name="rdoSports" id="rdoSoccer">
                                <label class="form-check-label" for="rdoSoccer">
                                    축구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="tennis" name="rdoSports" id="rdoTennis">
                                <label class="form-check-label" for="rdoTennis">
                                    테니스
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="">Check</label>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="baseball" name="chkSports" id="chkBaseball">
                                <label class="form-check-label" for="chkBaseball">
                                    야구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="basketball" name="chkSports" id="chkBasketball">
                                <label class="form-check-label" for="chkBasketball">
                                    농구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="soccer" name="chkSports" id="chkSoccer">
                                <label class="form-check-label" for="chkSoccer">
                                    축구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="tennis" name="chkSports" id="chkTennis">
                                <label class="form-check-label" for="chkTennis">
                                    테니스
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <button name="btnInsert" id="btnInsert" class="btn btn-info">Input</button>
                    </div>
                    <div class="col">
                        <button name="btnUpdate" id="btnUpdate"  class="btn btn-success">Select&Radio</button>
                    </div>
                    <div class="col">
                        <button name="btnDelete" id="btnDelete"  class="btn btn-danger">Check</button>
                    </div>
                </div>

                <br />
                <hr />
                <h5>요기에 뿌리기</h5>
                
                <div class="row align-items-start">
                    <div class="col">
                        <div class="form-group">
                            <label for="resultInput01">Input01</label>
                            <input type="text" class="form-control" id="resultInput01"/>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="resultInput02">Input02</label>
                            <input type="text" class="form-control" id="resultInput02"/>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="resultInput03">Input03</label>
                            <input type="text" class="form-control" id="resultInput03"/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <div class="form-group">
                            <label for="selSports">SelectBox</label>
                            <select class="form-control" id="resultSelSports" name="resultSelSports">
                                <option value="">전체</option>
                                <option value="baseball">야구</option>
                                <option value="basketball">농구</option>
                                <option value="soccer">축구</option>
                                <option value="tennis">테니스</option>
                            </select>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="">Radio</label>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="baseball" name="resultRdoSports" id="resultRdoBaseball">
                                <label class="form-check-label" for="resultRdoBaseball">
                                    야구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="basketball" name="resultRdoSports" id="resultRdoBasketball">
                                <label class="form-check-label" for="resultRdoBasketball">
                                    농구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="soccer" name="resultRdoSports" id="resultRdoSoccer">
                                <label class="form-check-label" for="resultRdoSoccer">
                                    축구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="radio" value="tennis" name="resultRdoSports" id="resultRdoTennis">
                                <label class="form-check-label" for="resultRdoTennis">
                                    테니스
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="form-group">
                            <label for="">Check</label>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="baseball" name="resultChkSports" id="resultChkBaseball">
                                <label class="form-check-label" for="resultChkBaseball">
                                    야구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="basketball" name="resultChkSports" id="resultChkBasketball">
                                <label class="form-check-label" for="resultChkBasketball">
                                    농구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="soccer" name="resultChkSports" id="resultChkSoccer">
                                <label class="form-check-label" for="resultChkSoccer">
                                    축구
                                </label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="tennis" name="resultChkSports" id="resultChkTennis">
                                <label class="form-check-label" for="resultChkTennis">
                                    테니스
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
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

        $('#btnInsert').click(function (){
            getInputDate(); // 함수 호출하여 사용한다.
        });

        $('#btnUpdate').click(function (){
            getSelectData();
        });

        $('#btnDelete').click(function (){
            getCheckData();
        });
    });

    function getInputDate(){ // 등록 버튼 클릭시
        // 1. 위 Input01 값을 가져온다.
        var upInput01 = $('#input01').val();

        // 2. 아래 Input01 값을 뿌린다.
        $('#resultInput01').val(upInput01);

        var upInput02 = $('#input02').val();
        $('#resultInput02').val(upInput02);

        var upInput03 = $('#input03').val();
        $('#resultInput03').val(upInput03);
    }
    
    function getSelectData(){ // 수정 버튼 클릭시
        // 1. Select Box의 "선택된" value를 가져온다.
        var upSelectBoxVal = $('#selSports').val();

        $('#resultSelSports').val(upSelectBoxVal);

        // 1. Select Box의 "선택된" text 를 가져온다.
        var upSelectBoxText = $("#selSports option:selected").text();

        //1. 위 Radio의 "선택 된 " 데이터를  Value 가져온다.
        var upRdoVal = $('input[name=rdoSports]:checked').val(); // 한개 선택

        $("input:radio[name='resultRdoSports']:radio[value="+ upRdoVal + "]").prop('checked', true);
        // 인풋 라디오 하단에있는것을 라디오(위에 선택된값)프롭 체크 트루로 선택

    }
    function getCheckData(){
        //1. 위 체크박스에 "선택 된 모든" 데이터를 가져온다.
        var checkArr = [];
        if ($(this).is(':checked')) {
            var checked = ($(this).val());
            checkArr.push(checked);
        }
        console.log(checkArr);
    }
</script>
</body>
</html>
