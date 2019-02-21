<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    
    <link type="text/css" href="css/layout.css" rel="stylesheet"><!--layout css-->
    <link rel="shortcut icon" href="pics/x.png" alt="logo">
    </head>
    <% if(session.getAttribute("username") == null){
        response.sendRedirect("login.jsp");
    } 
    %>
</html>