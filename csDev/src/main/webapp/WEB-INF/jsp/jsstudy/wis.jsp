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
    <%@ include file="/WEB-INF/jsp/common/header.jsp" %>
</head>
<body>
<jsp:include page="/WEB-INF/jsp/common/nav.jsp" />

<h3>JavaScript | jQuery</h3>
<br />
<div class="container">
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
    <div class="row">
        <div class="col">
            <button name="btnInsert" id="btnInsert" class="btn btn-info">등록</button>
        </div>
        <div class="col">
            <button name="btnUpdate" id="btnUpdate"  class="btn btn-success">수정</button>
        </div>
        <div class="col">
            <button name="btnDelete" id="btnDelete"  class="btn btn-danger">삭제</button>
        </div>
    </div>
</div>

<br />
<hr />
    <h5>요기에 뿌리기</h5>
<div class="container">
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
                    <label class="form-check-label" for="rdoBaseball">
                        야구
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="basketball" name="resultRdoSports" id="resultRdoBasketball">
                    <label class="form-check-label" for="rdoBasketball">
                        농구
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="soccer" name="resultRdoSports" id="resultRdoSoccer">
                    <label class="form-check-label" for="rdoSoccer">
                        축구
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="tennis" name="resultRdoSports" id="resultRdoTennis">
                    <label class="form-check-label" for="rdoTennis">
                        테니스
                    </label>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="baseball" name="resultChkSports" id="resultChkBaseball">
                <label class="form-check-label" for="chkBaseball">
                    야구
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="basketball" name="resultChkSports" id="resultChkBasketball">
                <label class="form-check-label" for="chkBasketball">
                    농구
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="soccer" name="resultChkSports" id="resultChkSoccer">
                <label class="form-check-label" for="chkSoccer">
                    축구
                </label>
            </div>
            <div class="form-check">
                <input class="form-check-input" type="checkbox" value="tennis" name="resultChkSports" id="resultChkTennis">
                <label class="form-check-label" for="chkTennis">
                    테니스
                </label>
            </div>
        </div>
    </div>
</div>
</body>

<script>

    $(document).ready(function(){

        $('#btnInsert').click(function (){
           getInputDate(); // 함수 호출하여 사용한다.
        });

        $('#btnUpdate').click(function (){
           getSelectData();
        });

        $('#btnDelete').click(function (){
        });
    });
    
    function getInputDate(){ // 등록 버튼 클릭시
       // 1. 위 Input01 값을 가져온다. a
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
      // 1. Select Box의 "선택된" text를 가져온다.
      var upSelectBoxText = $('#selSports').text();
      //alert(upSelectBoxText); // 실제 옵션에 있는거라 안된다. 통으로 다뜸
      //alert(upSelectBoxVal); 
      // 2. 아래 Input01에 값을 뿌린다.
      $('#resultInput01').val(upSelectBoxVal);
   }

</script>
</html>