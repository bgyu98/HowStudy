<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie" xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US"> <![endif]-->
<html xmlns xmlns:th="http://www.thymeleaf.org">

<head>
  <meta charset="UTF-8">
  <title>wewe</title>
</head>

<body>
  <h1>Test page! dd</h1>
  <!-- The core Firebase JS SDK is always required and must be listed first -->
  <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase.js"></script>
  <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase-app.js"></script>
  <script src="https://www.gstatic.com/firebasejs/5.9.2/firebase-messaging.js"></script>
  <!-- TODO: Add SDKs for Firebase products that you want to use
     https://firebase.google.com/docs/web/setup#available-libraries -->

  <script th:inline="javascript">

    const firebaseConfig = {
      apiKey: "AIzaSyA0Kh5DYO5POLXCU-tomFHFzK5nnS4sgtQ",
      authDomain: "howstudy-a7c5d.firebaseapp.com",
      projectId: "howstudy-a7c5d",
      storageBucket: "howstudy-a7c5d.appspot.com",
      messagingSenderId: "885580296649",
      appId: "1:885580296649:web:caf8b23409e3285bf8f818",
      measurementId: "G-Z1DML5H6SQ"
    };
    // Initialize Firebase
    firebase.initializeApp(firebaseConfig);

    // Show Notification
    // 메시지 기능 활성화를 알림
    const messaging = firebase.messaging();
    // RequestPermission 첫 어플 시작 시 알림 허용 or 불허를 사용자에게 안내합니다.
    // 허용하지 않을 시 알람 메시지는 가지 않습니다.
    messaging.requestPermission()
      .then(function () {
        // 알람이 허용되었을 때 토큰을 반환합니다.
        // 해당 토큰을 통해 FCM 특정 사용자에게 메시지를 보낼 수 있습니다.
        return messaging.getToken();
      })
      .then(async function (token) {
        console.log(token);
        // 해당 onMessage는 데이터메시지로, 포그라운드인 상태에서
        // FCM 메시지를 전송하는 경우 콘솔에 표기하도록 작성된 코드입니다.

        messaging.onMessage(payload => {
          console.log(payload);

        })
      })

  </script>
</body>

</html>