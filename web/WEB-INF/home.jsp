<%-- 
    Document   : home
    Created on : Jun 13, 2021, 1:32:05 PM
    Author     : emily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <h1>Home Page</h1>
        <form method="post" action="home">
            <label><b>Hello ${user}.</b></label>
            <br><br>
            <a href="login?logout">Log out</a>
        </form>
    </body>
</html>
