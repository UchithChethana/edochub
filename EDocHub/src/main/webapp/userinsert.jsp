<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register - E-Channelling</title>
    <link rel="stylesheet" href="css/styles.css"> <!-- Link to your CSS file for styling -->
</head>
<body>

<header>
    <nav>
        <ul class="nav-bar">
            <li class="logo">E-Doc<logo-1>HUB</logo-1></li>
            <li><a href="index.jsp">Home</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="#">About</a></li>
            <li><a href="contact.jsp">Contact</a></li>
            <div class="email"><li><a href="#">eDocHUB0@gmail.com</a></li></div>
        </ul>
    </nav>
</header>

<div class="container">
    <h2>Register for E-DocHUB</h2>
    <form action="insert" method="post" onsubmit="return validateForm();">
        <div class="div1">
            <label for="fullname">Full Name:</label>
            <input type="text" id="fullname" name="name" required>
        </div>
        <div class="div1">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="div1">
            <label for="age">age:</label>
            <input type="text" id="age" name="age" required>
        </div>
        <div class="div1">
            <label for="phone">Phone number:</label>
            <input type="number" id="phone" name="phone" required>
        </div>
        <div class="div1">
            <label for="username">Username:</label>
            <input type="text" id="username" name="uid" required>
        </div>
        <div class="div1">
            <label for="password">Password:</label>
            <input type="password" id="password" name="psw" required>
        </div>
        <input type="submit" name="submit" value="Create user">
    </form>
    <p>Already have an account? <a href="login.jsp">Login here</a>.</p>
</div>

<footer>
        <div class="footer">
        <div class="row">
        <a href="#"><i class="Contact"><img src="img/contact.png"style="width:30px"></i></a>
        <a href="#"><i class="whatsapp"><img src="img/wp.png"style="width:30px"></i></a>
        <a href="#"><i class="facebook"><img src="img/fac.png"style="width:30px"></i></a>
        <a href="#"><i class="youtube"><img src="img/you.png"style="width:30px"></i></a>
        <a href="#"><i class="map"><img src="img/map.png"style="width:50px"></i></a>
        <a href="#"><i class="goo"><img src="img/goo.png"style="width:50px"></i></a>
        <a href="#"><i class="www"><img src="img/www.png"style="width:50px"></i></a>
        <a href="#"><i class="faq"><img src="img/faq.png"style="width:50px"></i></a>
        <a href="#"><i class="hub"><img src="img/hub.png"style="width:50px"></i></a>
        
        
        </div>
        
        <div class="row">
        <ul>
        <li><a href="#">Contact</a></li>
        <li><a href="#">Our Services</a></li>
        <li><a href="#">Privacy Policy</a></li>
        <li><a href="#">Terms & Conditions</a></li>
        <li><a href="#">Career</a></li>
        <li><a href="#">F A Q</a></li>
        </ul>
        </div>
        
        <div class="row">
            &copy; 2024 E-DocHUB. All rights reserved || Designed By: E-DocHUB Admin Panel 
        </div>
        </div>
        </footer>

<script>
    function validateForm() {
        var fullname = document.getElementById('fullname').value;
        var email = document.getElementById('email').value;
        var age = document.getElementById('age').value;
        var phone = document.getElementById('phone').value;
        var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        if (fullname === '' || email === '' || age === '' || phone === '' || username === '' || password === '') {
            alert('Please fill in all fields.');
            return false; // Prevent form submission
        }

        // You can add more complex validation rules here if needed

        alert('Registration successful!');
        return true; // Allow form submission
    }
</script>

</body>
</html>
