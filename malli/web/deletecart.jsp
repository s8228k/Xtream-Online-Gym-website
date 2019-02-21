<%-- 
    Document   : deletecart
    Created on : May 19, 2018, 7:37:07 PM
    Author     : Erandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
                           <%

String username = (String)session.getAttribute( "username");
String CartId=request.getParameter("CartId");
String scheduleName=request.getParameter("scheduleName");
String price=request.getParameter("price");
String date = request.getParameter("Date");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("DELETE FROM testadd WHERE username='"+username+"'");
out.println("Deleted from Cart!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


    </body>
</html>
