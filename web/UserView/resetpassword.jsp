<%-- 
    Document   : resetpassword
    Created on : 28-Nov-2023, 12:00:36 pm
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Password Reset</title>
    <link rel="stylesheet" href="css/forgotpass.css" />
    <style>
   
      .container {
        height: 500px;
        width: 80%;
        margin: 5%;
        box-shadow: rgba(0, 0, 0, 0.19) 0px 10px 20px,
          rgba(0, 0, 0, 0.23) 0px 6px 6px;
      }
      .text-center {
        color: orange;
      }
      input {
        width: 300px !important;
      }
    </style>
    <!-- Add Bootstrap CSS link -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
    />
  </head>
  <body>
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-md-6">
          <h3 class="text-center">Reset Password</h3>

          <form action="" method="post">
            <div class="mb-3">
              <input
                type="email"
                class="form-control"
                id="email"
                name="email"
                placeholder="enter you email"
                required
              />
            </div>

            <button type="submit" id="getOTP" class="btn btn-primary">
              Get OTP
            </button>
          </form>
          <br /><br />
          <form action="" method="post">
            <div id="otpSection" style="display: none">
              <div class="mb-3">
                <!-- <label for="otp" class="form-label">Enter OTP:</label> -->
                <input
                  type="text"
                  class="form-control"
                  id="otp"
                  name="otp"
                  required
                  placeholder="enter your code"
                />
              </div>
            </div>

            <button
              type="submit"
              id="resetPassword"
              class="btn btn-success"
              style="display: none"
            >
              Reset Password
            </button>
          </form>
        </div>
      </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
      document.getElementById("getOTP").addEventListener("click", function () {
        document.getElementById("otpSection").style.display = "block";
        document.getElementById("resetPassword").style.display = "block";
      });
    </script>
  </body>
</html>
