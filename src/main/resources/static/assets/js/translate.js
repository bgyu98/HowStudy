
$(document).ready(function() {




// 새 UI 선택 클릭 이벤트가 발생하면 감춤 처리한 구글 번역 콤보리스트에 선택한 언어를 적용해 변경 이벤트를 발생시키는 코드 
  document.querySelector('.translation-links').addEventListener('click',function(event) {
      let el = event.target;
      if(el != null){
          while(el.nodeName == 'FONT' || el.nodeName == 'SPAN'){el = el.parentElement;}//data-lang 속성이 있는 태그 찾기
          const tolang = el.dataset.lang; // 변경할 언어 코드 얻기
          const gtcombo = document.querySelector('.goog-te-combo');
          if (gtcombo == null) {
              alert("Error: Could not find Google translate Combolist.");
              return false;
          }
          gtcombo.value = tolang; // 변경할 언어 적용
          gtcombo.dispatchEvent(new Event('change')); // 변경 이벤트 트리거
      }
      return false;
  });
        

        
}); //end of function 