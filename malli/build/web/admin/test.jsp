<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Connection" %>
<% Class.forName("com.mysql.jdbc.Driver"); %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% String url = "jdbc:mysql://localhost/xtremegym";
       String user = "root";
       String pass = "";
       
       try{
           Connection con = DriverManager.getConnection(url, user, pass);
           if(con != null){
               out.println("Connected");
           }
           else out.println("Not connected");
       }
       
       catch(Exception e){
           out.println(e.getMessage());
       }
       %>
    </body>
</html>
