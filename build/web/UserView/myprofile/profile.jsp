<%-- 
    Document   : profile.jsp
    Created on : 29-Nov-2023, 1:26:02 am
    Author     : NexGen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - codingnepalweb.com -->
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <title>Sidebar Menu | Side Navigation Bar</title>
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style>
    
    .container {
      max-width: 500px;
      margin: 50px auto;
    }
  </style>
    <!-- CSS -->
    <link rel="stylesheet" href="../css/sidebar.css" />
    <!-- Boxicons CSS -->
    <link
      href="https://unpkg.com/boxicons@2.1.2/css/boxicons.min.css"
      rel="stylesheet"
    />
  </head>
  <body>
    <nav class="navbar">
      <div class="logo">
        <i class="bx bx-menu menu-icon"></i>
        <a href="../Home.jsp"><span class="logo-name">SHASHWAT</span></a>
        <div>
            <i class="bx bx-bell"></i>
        </div>
      </div>
      <div class="sidebar">
        

        <div class="sidebar-content">
          <ul class="lists">
            <li class="list">
              <a href="newpost.jsp" class="nav-link">
                <i class="bx bx-pointer icon"></i>
                <span class="link">+ New Post</span>
              </a>
            </li>
            <li class="list">
                <a href="profile.jsp" class="nav-link">
                  <i class="bx bx-user-pin icon"></i>
                  <span class="link">My Profile</span>
                </a>
              </li>
            <li class="list">
                <a href="myblog.jsp" class="nav-link">
                <i class="bx bx-book-alt icon"></i>
                <span class="link">My Blog</span>
              </a>
            </li>
            <li class="list">
                <a href="notification.jsp" class="nav-link">
                <i class="bx bx-bell icon"></i>
                <span class="link">Notifications</span>
              </a>
            </li>
            
            <li class="list">
                <a href="subscription.jsp" class="nav-link">
                <i class="bx bxs-user-badge icon"></i>
                <span class="link">Get Premium</span>
              </a>
            </li>
            <li class="list">
                <a href="likes.jsp" class="nav-link">
                <i class="bx bx-heart icon"></i>
                <span class="link">Likes</span>
              </a>
            </li>
            <li class="list">
              <a href="#" class="nav-link">
                <i class="bx bx-list-check icon"></i>
                <span class="link">My Reading List</span>
              </a>
            </li>
            <li class="list">
                <a href="#" class="nav-link">
                  <i class="bx bx-cog icon"></i>
                  <span class="link">Settings</span>
                </a>
              </li>
              <li class="list">
                <a href="#" class="nav-link">
                  <i class="bx bx-log-out icon"></i>
                  <span class="link">Logout</span>
                </a>
              </li>
          </ul>

         
        </div>
      </div>
    </nav>

    <section class="overlay"></section>

    <script src="../js/sidebar.js"></script>
    
    
    
<div class="container">
<!--  <h2 class="text-center mb-4">User Profile</h2>-->
  <form id="userProfileForm">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" class="form-control" id="username" required>
    </div>
    <div class="form-group">
      <label for="fullName">Full Name:</label>
      <input type="text" class="form-control" id="fullName" required>
    </div>
    <div class="form-group">
      <label for="dob">Date of Birth:</label>
      <input type="date" class="form-control" id="dob" required>
    </div>
    <div class="form-group">
      <label for="mobileNo">Mobile Number:</label>
      <input type="tel" class="form-control" id="mobileNo" pattern="[0-9]{10}" required>
      <small class="form-text text-muted">Please enter a 10-digit mobile number.</small>
    </div>
    <div class="form-group">
      <label for="email">Email Address:</label>
      <input type="email" class="form-control" id="email" required>
    </div>
      
    <div class="form-group">
      <label for="email">Gander:</label>
      <input type="text" class="form-control" id="gander" value="male" required>
    </div>
    <!--<button type="button" class="btn btn-primary" onclick="submitForm()">Submit</button>-->
  </form>
</div>

<script>
  function submitForm() {
    // Retrieve form data
    var username = document.getElementById('username').value;
    var fullName = document.getElementById('fullName').value;
    var dob = document.getElementById('dob').value;
    var mobileNo = document.getElementById('mobileNo').value;
    var email = document.getElementById('email').value;

    // Display the data (you can customize this part)
    alert('Username: ' + username + '\nFull Name: ' + fullName + '\nDate of Birth: ' + dob +
          '\nMobile Number: ' + mobileNo + '\nEmail: ' + email);
  }
</script>


  </body>
</html>
