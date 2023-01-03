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
        },error:function () {
            alert('실패');
        }

    })

}