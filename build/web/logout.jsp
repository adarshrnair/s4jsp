<%-- 
    Document   : logout
    Created on : 19 May, 2015, 3:13:11 PM
    Author     : bhishma
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGOUT</title>
    </head>
    <body>
        <% session.invalidate(); %>
        <h1>LOGGED OUT SUCCESSFULLY... </h1>
        <p><a href="index.html">Click here to Log in / Register</a></p>
    </body>
</html>
