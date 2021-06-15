<%-- 
    Document   : login
    Created on : Jun 13, 2021, 1:32:13 PM
    Author     : emily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <h1>Login</h1>
        <form method="post" action="login">
            <label>Username: </label>
            <input type="text" name="user" value="">
            <br>
            <label>Password: </label>
            <input type="text" name="password" value="">
            <input type="submit" value="Login in">
        </form>
    </body>
</html>
