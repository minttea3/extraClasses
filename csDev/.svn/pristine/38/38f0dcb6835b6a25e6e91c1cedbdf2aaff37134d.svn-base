<!--인섭 코드-->

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
                    <h1 class="h3 mb-0 text-gray-800">회원가입 리스트 위인섭</h1>
                </div>

                <!-- 요기가 컨텐츠 -->

                <form:form action="/signup/signupListWis" method="get">
                    <div class="form-row align-items-center">
                        <div class="col-auto">
                            <label class="sr-only" for=userId>userId</label>
                            <div class="input-group mb-2">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">검색조건</div>
                                </div>
                                <input type="text" class="form-control" id="userId" placeholder="ID" name="userId" value="${signupVOWis.userId}">
                            </div>
                        </div>
                        <div class="form-row align-items-center">
                            <div class="col-auto">
                                <label class="sr-only" for="nickname">nickname</label>
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">검색조건</div>
                                    </div>
                                    <input type="text" class="form-control" id="nickname" placeholder="닉네임" name="nickname" value="${signupVOWis.nickname}">
                                </div>
                            </div>
                                <%--                    </div>--%>
                            <c:forEach var="gd"  items="${signupGender}"  varStatus="status4">
                                <input type="radio" id="gender${status4.index }" name="gender" value="${gd.dtlCd }" >
                                <label for="gender${status4.index }" >${gd.dtlNm }</label>
                            </c:forEach>
                        </div>
                        <div class="col-auto">
                            <button name="action" class="btn btn-info" type="submit">조회</button>
                            <button id="btnSave" name="btnSave" value="update" type="button" class="btn btn-success">수정</button>
                            <button id="btnReset" name="btnReset" value="reset" type="button" class="btn btn-success" onclick="location.href='/signup/signupListWis'">초기화</button>
                                <%--쓸꺼면 아래 온클릭 함수 살려     <button id="btncheck" name="btncheck" value="check" type="button" class="btn btn-success" onclick="vlaueChk()">체크</button> --%>
<%--                            <button id="btncheck" name="btncheck" value="check" type="button" class="btn btn-success" >체크</button>--%>
                            <button id="btnDelete" name="btnDelete" value="delete" type="button" class="btn btn-success">삭제</button>
                            <button name="btnchange" id="btnchange" class="btn btn-info" type="submit">행열</button>
                            <button id="btnAdd" name="btnAdd" value="add" type="button" class="btn btn-success" onclick="row_add()" >Row추가</button>
                        </div>
                        <div>
                        </div>
                    </div>
                </form:form>
                <form:form id="updatelist" action="/signup/listUpdate" method="post">
                    <br/><br/>
                    <table class="table table-striped">
                        <thead>
                        <tr>
                            <th style="width: 2%;"><input name="checkall" id="checkall" name="checkall" type="checkbox" /></th>
                            <th scope="col" style="width: 1%;">#</th>
                            <th scope="col" style="width: 10%;">ID</th>
                            <th scope="col" style="width: 10%;">비밀번호</th>
                            <th scope="col" style="width: 10%;">비밀번호 질문</th>
                            <th scope="col" style="width: 10%;">비밀번호 답변</th>
                            <th scope="col" style="width: 10%;">닉네임</th>
                            <th scope="col" style="width: 8%;">연락처</th>
                            <th scope="col" style="width: 10%;">성별</th>
                            <th scope="col" style="width: 10%;">주소1</th>
                            <th scope="col" style="width: 10%;">주소2</th>
                            <th scope="col" style="width: 5%;">개인정보 동의</th>
                            <th scope="col" style="width: 5%;">구매약관 동의</th>
                            <th scope="col" style="width: 5%;">판매약관 동의</th>
                        </tr>
                        </thead>
                        <tbody id="my-tbody">
                        <c:forEach var="list" items="${signupListwis}" varStatus="status">
                            <tr>
                                    <%--                                    2021.11.04 vlaue값을 시퀄이랑 엮어서 고유값으로 해서 그값을 불러와서 시퀄을 갖고 이벤트발생하기--%>
                                    <%--                                    <td><input type="checkbox" class="list-check" name="check" id="check"/></td>--%>
                                    <%--                                    <td><input type="checkbox" class="list-check" name="check" id="check" onclick="vlaueChk()"/></td>--%>
<%--                                        <c:set var="status_idx" value="ListSignupVOWis[${status.index}].btncheck"></c:set>--%>
                                        <td><input type="checkbox" class="list-check" name="ListSignupVOWis[${status.index}].btncheck" id="check" value="Y"/></td>
<%--                        체크박스에 강제 seq 박기       <td><input type="checkbox" class="list-check" name="check" id="check" value="${list.seq}"   /></td>--%>
                                <td scope="row"><c:out value="${status.count}" /></td>
                                <td>
                                    <input type="hidden" name="ListSignupVOWis[${status.index}].seq" value="${list.seq}"/>
                                    <input type="text" class="form-control" name="ListSignupVOWis[${status.index}].userId" value="${list.userId}"/></td>
                                <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].userPw" value="${list.userPw}"/></td>
                                <td>
                                    <select class="form-control" name="ListSignupVOWis[${status.index}].pwQuestion">
                                        <c:forEach var="map" items="${signupPwAnswer}" varStatus="status2">
                                            <option value="${map.dtlCd}"<c:if test="${list.pwQuestion eq  map.dtlCd}" >selected="selected"</c:if>  >${map.dtlNm}</option>
                                        </c:forEach>
                                    </select>
                                </td>
                                <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].pwAnswer" value="${list.pwAnswer}"/></td>
                                <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].nickname" value="${list.nickname}"/></td>
                                <td>
                                    <select class="form-control" name="ListSignupVOWis[<c:out value="${status.index}" />].phoneNumber1">
                                        <c:forEach var="map" items="${signupPhone}" varStatus="status2">
                                            <option value="${map.dtlCd}" <c:if test="${list.phoneNumber1 eq map.dtlCd}">selected="selected"</c:if> >${map.dtlNm}</option>
                                        </c:forEach>
                                    </select>
                                    <input type="text" name="ListSignupVOWis[<c:out value="${status.index}" />].phoneNumber2" value="${list.phoneNumber2}" />
                                    <input type="text" name="ListSignupVOWis[<c:out value="${status.index}" />].phoneNumber3" value="${list.phoneNumber3}" />
                                </td>
                                <td>
                                    <c:forEach var="gd"  items="${signupGender}"  varStatus="status3">
                                        <input  type="radio" id="gender${status3.index }"
                                                name="ListSignupVOWis[${status.index}].gender" value="${gd.dtlCd }"
                                                <c:if test="${list.gender eq gd.dtlCd }">checked="checked"</c:if> >
                                        <label for="gender${status3.index }" >${gd.dtlNm }</label>
                                    </c:forEach>
                                </td>
                                <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].address1" value="${list.address1}"/></td>
                                <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].address2" value="${list.address2}"/></td>
                                <td>
                                    <input type="checkbox" name="ListSignupVOWis[${status.index}].termsInfoYn" value="Y" <c:if test="${list.termsInfoYn eq 'Y'}"> checked="checked"</c:if>>
                                </td>
                                <td>
                                    <input type="checkbox" name="ListSignupVOWis[${status.index}].termsBuyYn" value="Y" <c:if test="${list.termsBuyYn eq 'Y'}"> checked="checked"</c:if>>
                                </td>
                                <td>
                                    <input type="checkbox" name="ListSignupVOWis[${status.index}].termsSellYn" value="Y" <c:if test="${list.termsSellYn eq 'Y'}"> checked="checked"</c:if>>
                                </td>
<%--                                <td>--%>
<%--                                    <input type="hidden" name="check_index" id="check_index" value="ListSignupVOWis[${status.index}]">--%>
<%--                                </td>--%>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <!-- 요기가 컨텐츠 끝 -->
                    <input type="hidden" name="action" id="submitAction">
                </form:form>
            </div>
        </div>
        <!-- Footer -->
        <%@ include file="/WEB-INF/jsp/common/footer.jsp" %>
        <!-- End of Footer -->
    </div id=div1>
    <!-- End of Content Wrapper -->
</div id=div2>
<!-- End of Page Wrapper -->
</div>

</body>
</html>
<script>
    $(document).ready(function(){
        // 수정버튼을 눌렀을때, 수정이 된 데이터들을 submit으로 값을 다시 업데이트 해준다.
        $('#btnSave').click(function(){
            //alert("안녕");
            $('#submitAction').val('update');
            $('#updatelist').submit();

        });

        $('#btnDelete').click(function(){
            //alert("안녕");
            $('#submitAction').val('delete');
            $('#updatelist').submit();
            console.log('#submitAction');
        });


        //체크 버튼을 눌렀을때, 체크박스에 시퀄스 벨류값을 담아준다 .그것을 확인하는 로직.
        // $('#btncheck').click(function (){
        //     var obj = $("[id=check]");
        //     var chkArray = new Array(); // 배열 선언%
        //     $('input:checkbox[id=check]:checked').each(function() { // 체크된 체크박스의 value 값을 가지고 온다.
        //         chkArray.push(this.value);
        //     });
        //     alert("해당 체크박스의 seq 번호는 "+ chkArray +"입니다."); // 아래 체크박스가 모두 체크되어 있다면 1,2,3,4 가 출력 된다.
        //
        // });


        // 체크올 버튼 왼쪽 버튼을 눌렀을 경우함수
        // 만약 체크올에 체크가 되어있다면 , 체크박스 네임이 check인것들의 속성값을 체크 혹은 해제 해라.
        $("#checkall").change(function(){
            if($("#checkall").is(":checked",true)){
                // alert($('#check_index').val());
                $("input:checkbox[id='check']").prop("checked", true);
            }
            else{
                $("input:checkbox[id='check']").prop("checked", false);
            }
        });
    });
    // 인풋박스 list-check 클래스 인것들의 값이 변하면
    // checkbuttoncheck 함수에 클래스 list-check 에 포함되어있는 체크박스를 담는다.
    // checkbuttoncheck 의 길이와 checkbuttoncheck버튼의 체크되어있는 길이가 같다면, (즉 그 카운트)
    // 위에 문장은 즉, 전체의 체크박스의 체크박스의 값이 체크가 되어있다면,
    // 체크올 체크박스를 체크해라, 혹은 체크해제해라
    $("input[type='checkbox'].list-check").change(function(){
        var checkbuttoncheck = $("input[type='checkbox'].list-check");
        if(checkbuttoncheck.length == checkbuttoncheck.filter(":checked").length){
            $("input:checkbox[name='checkall']").prop("checked", true);
        }
        else{
            $("input:checkbox[name='checkall']").prop("checked", false);
        }
    });

    function row_add() {
        var my_tbody = document.getElementById('my-tbody');
      //idx_List = document.getElementsByClassName('list-check');
        var idx_List = document.getElementsByClassName('list-check').length;
        alert(idx_List);
        // var row = my_tbody.insertRow(0); // 상단에 추가
        var Row = my_tbody.insertRow(my_tbody.rows.length); // 하단에 추가
        var Cell0 = Row.insertCell(0);
        var Cell1 = Row.insertCell(1);
        var Cell2 = Row.insertCell(2);
        var Cell3 = Row.insertCell(3);
        var Cell4 = Row.insertCell(4);
        var Cell5 = Row.insertCell(5);
        var Cell6 = Row.insertCell(6);
        var Cell7 = Row.insertCell(7);
        var Cell8 = Row.insertCell(8);
        var Cell9 = Row.insertCell(9);
        var Cell10 = Row.insertCell(10);
        var Cell11 = Row.insertCell(11);
        var Cell12 = Row.insertCell(12);
        var Cell13 = Row.insertCell(13);

<%--        <c:set var="status_idx" value="ListSignupVOWis[${status.index}].btncheck"></c:set>--%>
<%--        <td><input type="checkbox" class="list-check" name="ListSignupVOWis[${stat5ㄱs.index}].btncheck" id="check" value="Y"/></td>--%>

        Cell0.innerHTML = ' <td><c:set var="status_idx" value="ListSignupVOWis[${status.index}].btncheck"></c:set><input type="checkbox" class="list-check" name="<c:out value="${status_idx}"></c:out>" id="check" value="Y"/></td>';
        <%--Cell0.innerHTML = ' <td><input type="checkbox" class="list-check" name="ListSignupVOWis[${status.index}].btncheck" id="check" value="Y"/></td>';--%>
        Cell1.innerHTML = ' <td><input type="hidden" name="ListSignupVOWis[${status.index}].seq" value="${list.seq}"/></td>';
        Cell2.innerHTML = ' <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].userId" value="${list.userId}"/></td></td>';
        Cell3.innerHTML = ' <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].userPw" value="${list.userPw}"/></td>';
        Cell4.innerHTML = ' <td><select class="form-control" name="ListSignupVOWis[${status.index}].pwQuestion"><c:forEach var="map" items="${signupPwAnswer}" varStatus="status2"> <option value="${map.dtlCd}"<c:if test="${list.pwQuestion eq  map.dtlCd}" >selected="selected"</c:if>  >${map.dtlNm}</option></c:forEach> </select>';
        Cell5.innerHTML = ' <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].pwAnswer" value="${list.pwAnswer}"/></td>';
        Cell6.innerHTML = ' <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].nickname" value="${list.nickname}"/></td>';
        Cell7.innerHTML = ' <td> <select class="form-control" name="ListSignupVOWis[<c:out value="${status.index}" />].phoneNumber1"> <c:forEach var="map" items="${signupPhone}" varStatus="status2"> <option value="${map.dtlCd}" <c:if test="${list.phoneNumber1 eq map.dtlCd}">selected="selected"</c:if> >${map.dtlNm}</option></c:forEach></select><input type="text" name="ListSignupVOWis[<c:out value="${status.index}" />].phoneNumber2" value="${list.phoneNumber2}" /><input type="text" name="ListSignupVOWis[<c:out value="${status.index}" />].phoneNumber3" value="${list.phoneNumber3}" /></td>';
        Cell8.innerHTML = ' <td><td><c:forEach var="gd"  items="${signupGender}"  varStatus="status3"><input  type="radio" id="gender${status3.index }"name="ListSignupVOWis[${status.index}].gender" value="${gd.dtlCd }"<c:if test="${list.gender eq gd.dtlCd }">checked="checked"</c:if> ><label for="gender${status3.index }" >${gd.dtlNm }</label></c:forEach></td> </td>';
        Cell9.innerHTML = ' <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].address1" value="${list.address1}"/></td>';
        Cell10.innerHTML = ' <td><input type="text" class="form-control" name="ListSignupVOWis[${status.index}].address2" value="${list.address2}"/></td>';
        Cell11.innerHTML = ' <td> <input type="checkbox" name="ListSignupVOWis[${status.index}].termsInfoYn" value="Y" <c:if test="${list.termsInfoYn eq 'Y'}"> checked="checked"</c:if>> </td>';
        Cell12.innerHTML =' <td> <input type="checkbox" name="ListSignupVOWis[${status.index}].termsBuyYn" value="Y" <c:if test="${list.termsBuyYn eq 'Y'}"> checked="checked"</c:if>> </td></td>';
        Cell13.innerHTML =' <td> <input type="checkbox" name="ListSignupVOWis[${status.index}].termsSellYn" value="Y" <c:if test="${list.termsSellYn eq 'Y'}"> checked="checked"</c:if>> </td>';

    }

    // 행과 열을 변경하는 로직입니다.
    $("#btnchange").click(function(){
        $("table").each(function() {
            var $this = $(this);
            var newrows = [];
            $this.find("tr").each(function(){
                var i = 0;
                $(this).find("td").each(function(){
                    i++;
                    if(newrows[i] == undefined) { newrows[i] = $("<tr></tr>"); }
                    newrows[i].append($(this));
                });
            });
            $this.find("tr").remove();
            $.each(newrows, function(){
                $this.append(this);
            });
        });

        return false;
    });


</script>