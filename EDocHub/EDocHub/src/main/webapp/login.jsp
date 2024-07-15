<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login - E-DocHUB</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>

<header>
    <nav>
        <ul class="nav-bar">
            <li class="logo">E-Doc<logo-1>HUB</logo-1></li>
            <li><a href="#">Home</a></li>
            <li><a href="userinsert.jsp">Register</a></li>
            <li><a href="#">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <div class="email"><li><a href="#">eDocHUB0@gmail.com</a></li></div>
        </ul>
    </nav>
</header>

<div class="container">
    <h2>Login to E-DocHUB</h2>
    <form id="loginForm" action="LoginServlet" method="post" onsubmit="return validateForm();">
        <div class="div1">
            <label for="username">User name :</label>
            <input type="text" id="username" name="uid" required>
        </div>
        <div class="div1">
            <label for="password">Password:</label>
            <input type="password" id="password" name="pass" required>
        </div>
        <input type="submit" name="submit" value="Login">
    </form>
    <p>Don't have an account? <a href="userinsert.jsp">Register here</a>.</p>
</div>

<!--footer-->
<footer>
    <div class="footer">
        <div class="row">
            <a href="#"><i class="Contact"><img src="img/contact.png"style="width:30px"></i></a>
            <!-- Other social media icons -->
        </div>
        <div class="row">
            <ul>
                <li><a href="contact.jsp">Contact</a></li>
                <!-- Other footer links -->
            </ul>
        </div>
        <div class="row">
            &copy; 2024 E-DocHUB. All rights reserved || Designed By: E-DocHUB Admin Panel 
        </div>
    </div>
</footer>

<script>
    function validateForm() {
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        if (username === '' || password === '') {
            alert('Please fill in all fields.');
            return false; 
        }
tion
        if (username === 'admin' && password === 'admin') {
            alert('Login successful!');
            return true; 
        } else {
            alert('Invalid username or password.');
            return false; 
        }
    }
</script>

</body>
</html>
