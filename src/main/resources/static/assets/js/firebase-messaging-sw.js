 // Import the functions you need from the SDKs you need
  import { initializeApp } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-app.js";
  import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.15.0/firebase-analytics.js";
  // TODO: Add SDKs for Firebase products that you want to use
  // https://firebase.google.com/docs/web/setup#available-libraries

  // Your web app's Firebase configuration
  // For Firebase JS SDK v7.20.0 and later, measurementId is optional
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
  const app = initializeApp(firebaseConfig);
  const analytics = getAnalytics(app);