<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
<!-- CSS Styling -->

    <link rel="stylesheet" href="css/contactus.css">

</head>
<body>
    <header>
        <nav>

            <ul class="nav-bar">
                <li class ="logo">E-Doc<logo-1>HUB</logo-1></li>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="userinsert.jsp">Register</a></li>
                <li><a href="login.jsp">Login</a>
                <li><a href="#">About</a></li>
                <div class="email"><li><a href="#">eDocHUB0@gmail.com</a></li></div>
            </ul>

        </nav>
    </header>
    <br>
<!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
    <!-- Contact form section -->
    <div class="contact-form">
        <h2>Contact Us</h2>
        <form action="./contact.php" method="post">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" required></textarea>
            <!-- Submit button of form -->
            <input type="submit" value="Submit">
        </form>
    </div>
</div>
<!-- ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<footer>
    <div class="footer">
    <div class="row">
    <a href="#"><i class="Contact"><img src="footerimage/contact.png"style="width:30px"></i></a>
    <a href="#"><i class="whatsapp"><img src="footerimage/wp.png"style="width:30px"></i></a>
    <a href="#"><i class="facebook"><img src="footerimage/fac.png"style="width:30px"></i></a>
    <a href="#"><i class="youtube"><img src="footerimage/you.png"style="width:30px"></i></a>
    <a href="#"><i class="map"><img src="footerimage/map.png"style="width:50px"></i></a>
    <a href="#"><i class="goo"><img src="footerimage/goo.png"style="width:50px"></i></a>
    <a href="#"><i class="www"><img src="footerimage/www.png"style="width:50px"></i></a>
    <a href="#"><i class="faq"><img src="footerimage/faq.png"style="width:50px"></i></a>
    <a href="#"><i class="hub"><img src="footerimage/hub.png"style="width:50px"></i></a>
    
    
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

</body>
</html>

