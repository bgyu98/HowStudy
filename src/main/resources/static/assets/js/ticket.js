$(document).ready(function () {

      //결제수단으로 넘어갈때
   
        $("#nextModal").click(function(){
          var sN = $("#selectName").val()
          var sP = $("#selectPrice").val()

          $("#submitName").val(sN);
          $("#submitPrice").val(sP);

        })
     



      //구매하기 버튼 클릭시
      $(function(){
        $("a[name=ticketBuy]").click(function(){
          var name = $(this).parent().parent().find('.ticketName').text();
          var price = $(this).parent().parent().find('.ticketPrice').text();

          $("#selectName").val(name);
          $("#selectPrice").val(price);
        })
      })//end 구매하기버튼클릭시

      

      // 결제 관련 (카카오페이 / 토스 페이)
      $("#kakaoPay").click(function () {
          requestPaykakao();
        }); // end of click function

        $("#tossPay").click(function () {
          requestPaytoss();
        }); // end of click function

  


  
  // 결제시스템 스크립트 시작
  IMP.init("imp05370542"); // 예: imp00000000
  function requestPaykakao() {
    
    IMP.request_pay(
      {
        pg: "kakaopay",
        // pay_method: "card",
        merchant_uid: "HOWSTUDY_"+ new Date().getTime(),
        name: $("#selectName").val(),
        amount: $("#selectPrice").val(),
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
      },
      function (rsp) {
        if (rsp.success) {
          $("#paySuccess").submit();
        } else {
          Swal.fire({
            icon: 'error',
            text: '결제에 실패하셨습니다.',
          });
        }
      }
    );
  }
  function requestPaytoss() {
    IMP.request_pay(
      {
        pg: "tosspay",
        //pay_method: "card",
        merchant_uid: "HOWSTUDY_"+ new Date().getTime(),
        name: "노르웨이 회전 의자",
        amount: 64900,
        buyer_email: "gildong@gmail.com",
        buyer_name: "홍길동",
        buyer_tel: "010-4242-4242",
        buyer_addr: "서울특별시 강남구 신사동",
        buyer_postcode: "01181"
      },
      function (rsp) {
        if (rsp.success) {
          $("#paySuccess").submit();
        } else {
          Swal.fire({
            icon: 'error',
            text: '결제에 실패하셨습니다.',
          });
        }
      }
    );
  }
  //결제시스템 스크립트 끝


}); //end of function 