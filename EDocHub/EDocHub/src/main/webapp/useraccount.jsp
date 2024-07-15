<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Details</title>
<link rel="stylesheet" href="css/user.css">
<link href="assets/css/style.css" rel="stylesheet">


<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-image: url('img/b1.jpg');
        background-size: cover;
    }
    .container {
        width: 80%;
        margin: 0 auto;
        background-color: rgba(255, 255, 255, 0.7); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 10px;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    input[type="button"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        border: none;
        color: white;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 16px;
        margin-top: 20px;
        cursor: pointer;
        border-radius: 5px;
    }
    input[type="button"]:hover {
        background-color: #45a049;
    }
    .button {
    display: inline-block;
    padding: 10px 20px;
    background-color: #4CAF50;
    color: white;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    border-radius: 10px;
}

.button:hover {
    background-color: #45a049;
}

.button:active {
    background-color: #3e8e41;
}
    
</style>
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
    </header><br>
    

<div class="container">



<table border="1">

<c:forEach var="pat" items="${patDetails}">


<c:set var="id" value="${pat.id}"/>
<c:set var="name" value="${pat.name}"/>
<c:set var="email" value="${pat.email}"/>
<c:set var="age" value="${pat.age}"/>
<c:set var="phone" value="${pat.phone}"/>
<c:set var="username" value="${pat.username}"/>
<c:set var="password" value="${pat.password}"/>



<tr>
    <th>User ID</th>
    <td>${pat.id}</td>
</tr>

<tr>
    <th>Name</th>
    <td>${pat.name}</td>
</tr>

<tr>
    <th>Email</th>
    <td>${pat.email}</td>
</tr>

<tr>
    <th>Age</th>
    <td>${pat.age}</td>
</tr>

<tr>
    <th>Phone Number</th>
    <td>${pat.phone}</td>
</tr>


<tr>
    <th>User Name</th>
    <td>${pat.username}</td>
</tr>


</c:forEach>

</table>

<c:url value="updateuser.jsp" var="userupdate">

<c:param name="id" value="${id}"></c:param>
<c:param name="name" value="${name}"></c:param>
<c:param name="email" value="${email}"></c:param>
<c:param name="age" value="${age}"></c:param>
<c:param name="phone" value="${phone}"></c:param>
<c:param name="uname" value="${username}"></c:param>
<c:param name="pass" value="${password}"></c:param>

</c:url>

<a href="${userupdate}">
<input type="button" name="update" value="Update my data">
</a>

<c:url value="deletepatient.jsp" var="userdelete">
    <c:param name="id" value="${id}"/>
    <c:param name="name" value="${name}"/>
    <c:param name="email" value="${email}"/>
    <c:param name="age" value="${age}"/>
    <c:param name="phone" value="${phone}"/>
    <c:param name="uname" value="${username}"/>
    <c:param name="pass" value="${password}"/>
</c:url>
<a href="${userdelete}">
<input type="button" name="delete" value="Delete my Account">
</a>

 <a href="homepage.jsp" class="button">Get Started</a>

</div>

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

</body>
</html>
