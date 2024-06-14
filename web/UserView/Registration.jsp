<%-- 
    Document   : Registration
    Created on : 27-Nov-2023, 9:00:26 pm
    Author     : Mohan_Maali
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Signup Shashwat</title>
        <link rel="stylesheet" href="css/Registration.css">
    </head>


    <div class="form-wrapper">
        <div class="form-side">

            <form action="../Registration" method="POST" class="my-form">
                <div class="login-welcome-row">
                    <a href="../Registration">click here</a>
                    <h1>Create your account &#x1F44F;</h1>
                </div>
                <div class="socials-row">
                    <a href="#" title="Use Google">
                        <img src="assets/google.png" alt="Google">
                        Sign up with Google
                    </a>
                    <a href="#" title="Use Apple">
                        <img src="assets/apple.png" alt="Apple">
                        Sign up with Apple
                    </a>
                </div>
                <div class="divider">
                    <span class="divider-line"></span>
                    Or
                    <span class="divider-line"></span>
                </div>


                <div class="text-field">
                    <label for="email">Fullname:
                        <input type="text" id="fullname" name="fullname" autocomplete="off" placeholder="Fullname"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-field">
                    <label for="email">Username:
                        <input type="text" id="username" name="username" autocomplete="off" placeholder="Username"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-field">
                    <label for="dob">Date of birth:
                        <input type="date" id="dob" name="dob" autocomplete="off" placeholder="Date of birth"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-field">
                    <label for="phon-no">Phon no:
                        <input type="tel" maxlength="10" id="mobile" name="mobile" autocomplete="off" placeholder="Phone - no"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>

                <div class="text-filed">
                    <label for="gendar" class="gendar" >Gendar:
                        <label>
                            <input type="radio" name="gender" id="gendar" value="Male"> Male
                        </label>
                        <label>
                            <input type="radio" name="gender" id="gendar" value="Female"> Female
                        </label>
                        <label>
                            <input type="radio" name="gender" id="gendar" value="Other"> Other
                        </label>
                    </label>
                </div>

                <div class="text-field">
                    <label for="email">Email:
                        <input type="email" id="email" name="email" autocomplete="off" placeholder="Your Email"
                               required>
                        <!-- svg icon -->
                    </label>
                </div>
                <div class="text-field">
                    <label for="password">Password:
                        <input id="password" type="password" name="password" placeholder="Your Password" 
                                required>
                        <!-- svg icon -->
                    </label>
                </div>
                <div class="text-field">
                    <label for="confirm-password">Repeat Password:
                        <input id="confirm-password" type="password" name="password" placeholder="Repeat Password"
                              
                                required>
                        <!-- svg icon -->
                    </label>
                </div>
                <button class="my-form__button" type="submit">
                    Sign up
                </button>
                <div class="my-form__actions">
                    <div class="my-form__row">
                        <span>Did you forget your password?</span>

                    </div>
                    <div class="my-form__signup">
                        <a href="../index.jsp" title="Login">
                            Back
                        </a>
                    </div>
                </div>
            </form>
        </div>

        <script src="../js/Registartion.js"></script>


</html>