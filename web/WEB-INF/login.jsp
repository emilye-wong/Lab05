<%-- 
    Document   : login
    Created on : Jun 13, 2021, 1:32:13 PM
    Author     : emily
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
            <input type="text" name="user" value="${user}">
            <br>
            <label>Password: </label>
            <input type="password" name="password" value="${password}">
            <br>
            <input type="submit" value="Log in">

            <c:if test="${logoutMess}">
                <div>You have successfully logged out.</div>
            </c:if>

            <c:if test="${nullMess}">
                <div>Invalid login</div>
            </c:if>
                
                <c:if test="${invalidMess}">
                    <div>Username or password is incorrect.</div>
                </c:if>
        </form>
    </body>
</html>
