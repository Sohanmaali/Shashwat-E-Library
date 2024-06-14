<%-- 
    Document   : ManagerLogin
    Created on : 29-Nov-2023, 10:17:02 am
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Manager Login form</title>
  <link rel="stylesheet" href="./style.css">

</head>
<body>
<!-- partial:index.partial.html -->
<section>
  <div class="form-box">
    <div class="form-value">
      <form action="">
        <h2>Login</h2>
        <div class="inputbox">
          <ion-icon name="mail-outline"></ion-icon>
          <input type="email" required>
          <label for="">Email</label>
        </div>
        <div class="inputbox">
          <ion-icon name="lock-closed-outline"></ion-icon>
          <input type="password" required>
          <label for="">Password</label>
        </div>
        <div class="forget">
          <label>
            <input type="checkbox"> Remember me
          </label>
          <label>
            <a href="#">Forgot password?</a>
          </label>
        </div>
        <button herf="index.html">Log in</button>
        <div class="register">
          <p>Don't have a account ? <a href="#">Register</a></p>
        </div>
      </form>
    </div>
  </div>
</section>
<!-- partial -->
  <script src='https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js'></script>
<script src='https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js'></script>
</body>
</html>

