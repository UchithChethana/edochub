<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Account Delete</title>
<link rel="stylesheet" href="css/user.css">
<link rel="stylesheet" href="css/styles.css">


<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }

    h1 {
        text-align: center;
        color: #333333;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    table td {
        padding: 10px;
        border-bottom: 1px solid #dddddd;
    }

    input[type="text"],
    input[type="tel"] {
        width: calc(100% - 20px);
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #cccccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: #ffffff;
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>


</head>


<body>

<%
        
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String age = request.getParameter("age");
        String phone = request.getParameter("phone");
        String userName = request.getParameter("uname");
        String password = request.getParameter("pass");
        
        
        %> 

<div class="container">
    <h1>User Account Delete</h1>
    <form action="delete" method="post">
        <table>
            <tr>
                <td>User Id:</td>
                <td><input type="text" id="id" name="userid" value="<%= id %>" readonly></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" id="name" name="name" value="<%= name %>" readonly></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="text" id="email" name="email" value="<%= email %>" readonly></td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="text" id="age" name="age" value="<%= age %>" readonly></td>
            </tr>
            <tr>
                <td>Phone Number:</td>
                <td><input type="tel" id="phone" name="phone" value="<%= phone %>" readonly></td>
            </tr>
            <tr>
                <td>User name:</td>
                <td><input type="text" id="username" name="uname" value="<%= userName %>" readonly></td>
            </tr>
        </table>    
        <input type="submit" id="delete" value="Delete Account" name="submit">
    </form>
</div>

</body>
</html>
