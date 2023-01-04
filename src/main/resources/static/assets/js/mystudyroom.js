function checkD(e) {
    var d = e.value;
    // alert(d);
    var day = {
        date: d
    };

    $.ajax({
        type: 'get',
        url: 'checkdate',
        data: day,
        dataType: 'json',
        success: function (checkdate) {
            alert('성공');
           
            for (var i = 0; i < checkdate.length; i++){
                alert(checkdate[i].sNum);
            }
        },error:function () {
            alert('실패');
        }

    })

}