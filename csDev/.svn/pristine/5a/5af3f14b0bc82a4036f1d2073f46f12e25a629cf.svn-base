
function fn_callAjax(paramUrl, paramData, paramMethodType, cbFunc){
    $.ajax({
        url: paramUrl,
        type: paramMethodType,
        data: paramData,
        dataType: "json",
        // contentType:"application/json", 이거 쓰면 post로 갈때 파라미터가 안날라감 response payload
        success: function( data ){
            cbFunc(data);
        },
        error: function(xhr, status, error){
            alert(xhr.responseText);
        },
        complete: function(xhr, status){}
    });
}

function fn_formReset( frmID ){
    $('#' + frmID).find('input').val('');
    $('#' + frmID).find('select option').attr('selected',false);
    $('#' + frmID).find('select option:eq(0)').attr('selected',true);
}
