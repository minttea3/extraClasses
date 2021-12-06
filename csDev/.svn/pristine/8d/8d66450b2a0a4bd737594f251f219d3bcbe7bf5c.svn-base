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
                    <h1 class="h3 mb-0 text-gray-800">김은진 JavaScript | jQuery</h1>
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
            getInputData();
        });

        $('#btnUpdate').click(function (){
            getSelectData();
        });

        $('#btnDelete').click(function (){
            getCheckData();
        });
    });

    // Input 버튼 클릭시
    function getInputData(){
    	
    	/* ----- Input text ----- */
    	
    	// 1. 위 Input01 값을 가져온다.
    	var input01 = $('#input01').val(); 
    	// 2. 아래 Input01 값을 뿌린다.
    	$('#resultInput01').val(input01);

    	// 1. 위 Input02 값을 가져온다.
    	var input02 = $('#input02').val(); 
    	// 2. 아래 Input02 값을 뿌린다.
    	$('#resultInput02').val(input02);

    	// 1. 위 Input03 값을 가져온다.
    	var input03 = $('#input03').val(); 
    	// 2. 아래 Input03 값을 뿌린다.
    	$('#resultInput03').val(input03);
    	
    }
    
    // Select&Radio 버튼 클릭시
    function getSelectData(){
    	
    	/* ----- SelectBox ----- */
    	// 1. Select Box의 "선택된" text 를 가져온다.
    	var selSports = $('#selSports').val();
		// 2. 아래 Select Box에 값을 뿌린다.
		$('#resultSelSports').val(selSports);
    	
    	/* ----- Radio ----- */
    	//1. 위 Radio의 "선택 된 " 데이터를(Value) 가져온다.
    	var rdoSportsVal = $('input[name = rdoSports]:checked').val(); // 값을 하나만 가져온다.
		// 2. 아래 Radio에 값을 뿌린다.(라디오 버튼 값 선택하기)
		$('input[name = resultRdoSports]:input[value='+rdoSportsVal+']').prop("checked", true);

    }

    // Check 버튼 클릭시
    function getCheckData(){
    	
	/* ----- CheckBox ----- */
    	
		var chkVal = '';
    	// 1. 위 체크박스에 "선택 된 모든" 데이터를 가져온다.
		$('input[name = chkSports]:checked').each(function(){ //체크박스의 값을 여러개 가져오기 위해 포문을 돌린다.
			chkVal += $(this).val()+'/'; // 선택된 데이터 구분자 '/' 넣어 꺼내기
		$('input[name = resultChkSports]').prop("checked", false); // 하단 체크박스 값 초기화
		 
		});
		var arrChkVal = [];
		arrChkVal= chkVal.split('/');
		arrLength = arrChkVal.length;// -> 개수
		
		// 2. 아래 체크박스에 값을 뿌린다.
		var i;
		// console.log("arrLength",arrLength);
		for(i=0;i<arrLength;i++){ // 위 체크박스 클릭된 개수만큼
			 $('input[name = resultChkSports]').each(function(){ //하단 체크박스 포문돌리기
				 var resultChkSportsVal= this.value; // resultChkSports 값 돌면서 현재 값 가져옴
				 if(resultChkSportsVal == arrChkVal[i]){ // 현재 값과 뽑아 오는 값 일치하는지 조건준다
					//console.log("arrChkVal[i]",arrChkVal[i]);
					 this.checked = true; // 체크로 바꿈
				 }else if(arrChkVal == "") { // 체크 모두 풀었을때 체크 풀기
					 this.checked = false;
				 }
			});
		}
    }

</script>
</body>
</html>
