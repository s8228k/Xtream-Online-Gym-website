<%-- 
    Document   : addToCart
    Created on : May 11, 2018, 6:24:02 AM
    Author     : Erandi
--%>

<%@page import="java.sql.*"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "xtremegym";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="header.jsp"/>
    </head>
    <body>
        
        
        <% String[] Sport;

Sport = request.getParameterValues("add");
if (Sport != null) 
{
  for (int i = 0; i < Sport.length; i++) 
  {
     //if(Sport[i] == resultSet.getString("sportId"))
        //Item item = new Sport(resultSet.getString("sportId"), resultSet.getString("id"), resultSet.getString("name"), resultSet.getString("price"), resultSet.getString("adminId")); 
         
         
  }
}
else out.println ("<b>none<b>");
%>
        
 
        <%

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from trainee";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
%>






<%
}


connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
    </body>
</html>
