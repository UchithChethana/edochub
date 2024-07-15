<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
  
    <link rel="stylesheet" href="css/user.css">
    
</head>

<body>


    <header>
        <nav>

            <ul class="nav-bar">
                <li class ="logo">E-Doc<logo-1>HUB</logo-1></li>
                <li><a href="#">Home</a></li>
                <li><a href="register.jsp">Register</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <div class="email"><li><a href="#">eDocHUB0@gmail.com</a></li></div>
            </ul>

        </nav>
    </header>
    <!-- ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
    <section class="container">
        <h2>User Details</h2><br>
        
    <%
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String age = request.getParameter("age");
        String phone = request.getParameter("phone");
        String userName = request.getParameter("uname");
        String password = request.getParameter("pass");
        
        
       %> 
        
    <form action="update" method="post">
    
        id:<input type="text" id = "id" name="userid" value="<%= id %>" readonly><br>
        
        Name: <input type="text" id="name" name="name" value ="<%= name %>"><br>
        
        Email:<input type="text" id="email" name="email" value ="<%= email %>"><br>
        
        Age :<input type="text" id="age" name="age" value ="<%= age %>"><br>
        
        Phone Number:<input type="tel" id="phone" name="phone" value ="<%= phone %>"><br>
        
        User name:<input type="text" id="username" name="uname" value ="<%= userName %>" readonly>
        
        Password: <input type="password" id="pass" name="pass" value = "<%= password %>"><br>
        
        
        
        <form action="deletepatient.jsp">
        <input type="submit" id="cnfirmchngest" value="update my data" name="submit" class="btn"><br>
        </form>
    </form>
    
    </section>
    <!-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------     -->
    <br>
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
            document.getElementById("logoutBtn").addEventListener('click', function (){
            document.cookie = 'UID' +'=username; Path=/; Expires=Thu, 01 Jan 1970 00:00:01 GMT;';
            window.location='userdboard.php';});
    </script>
</body>

</html>