<%-- 
    Document   : Login
    Created on : 05-Nov-2023, 10:41:44 am
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <head>
        <meta charset="UTF-8">
        <title>Login Example</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/login.css"> 
        <!--<link rel="stylesheet" href="login.css">-->
    </head>

    <body>
        <div class="login-wrapper">
            <div class="login-side">

                <div class="my-form__wrapper">
                    <div class="login-welcome-row">
                        <h1>Welcome back &#x1F44F;</h1>
                        <p>Please enter your details!</p>
                    </div>
                    <form action="/SHASHWAT/Login" method="POST" class="my-form" onsubmit="validation()">
                        <div class="socials-row">
                            <a href="#" title="Use Google">

                                Log in with Google
                            </a>
                            <a href="#" title="Use Apple">

                                Log in with Apple
                            </a>
                        </div>
                        <div class="divider">
                            <div class="divider-line"></div>
                            Or
                            <div class="divider-line"></div>
                        </div>
                        <div class="text-field">
                            <label for="username">username:</label>
                            <input onkeyup="unamevalidation()" type="text" id="username" name="username"
                                   placeholder="Your username" required>

                            <span id="errorusername">&nbsp;</span>
                        </div>
                        <div class="text-field">
                            <label for="password">Password:</label>
                            <input onkeyup="passwordvalidation()" id="password" type="password" name="password"
                                   placeholder="Your Password" required>

                            <span id="errorpassword">&nbsp;</span>
                        </div>
                        <input type="submit" class="my-form__button" value="Login">
                        <span style="color: red" id="mainerror">&nbsp;<%="text"%></span>
                        <div class="my-form__actions">
                            <div class="my-form__row">
                                <span>Did you forget your password?</span>
                                <a href="#" title="Reset Password">
                                    Reset Password
                                </a>
                            </div>
                            <div class="my-form__signup">
                                <a href="Registration.jsp" title="Create Account">
                                    Create Account
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="info-side">
                <img src="assets/mock.png" alt="Mock" class="mockup">
                <div class="welcome-message">
                    <h2>Shoes-shop! 👋</h2>
                    <p>
                        Your ultimate guide to navigating the world
                        and discovering new places with ease.
                    </p>
                </div>
            </div>
        </div>
        <!-- <script src="js/login.js"></script> -->
        <script>

            function validation() {


                var unamestatus = unamevalidation();
                var passwordstatus = passwordvalidation();
                var addressstatus = advalidation();

                return unamestatus && passwordstatus
            }

            function unamevalidation() {

                var usernameInput = document.getElementById('username');
                var usernameMsg = document.getElementById('errorusername');
                var username = usernameInput.value;

                if (username == "" || username == null) {
                    usernameMsg.textContent = "username requird";
                    return false;
                } else {
                    usernameMsg.textContent = ""; // Clear the message if it's valid.
                    return true;
                }

            }


            function passwordvalidation() {

                var passwordInput = document.getElementById('password');
                var passwordMsg = document.getElementById('errorpassword');
                var password = passwordInput.value;

                if (password == "" || password == null) {
                    passwordMsg.textContent = "password requird";
                    return false;
                } else {
                    passwordMsg.textContent = "";
                    return true;
                }
            }
        </script>




    </body>

</html>