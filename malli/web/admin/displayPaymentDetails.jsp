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
<!DOCTYPE html>
<html>

    <head>
        <title>Display Members</title>
            <jsp:include page="header.jsp"/>
    
    </head>
    
  <body>
   <jsp:include page="navAdmin.jsp"/>
    <article>  
	  <div class="container" align="center">
      
<table border="1">
<tr>


<td>Payment Id</td>
<td>Schedule Id</td>
<td>Amount</td>
<td>Payment Date</td>





</tr>
          </div>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from Payment";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("") %></td>
<td><%=resultSet.getString("") %></td>
<td><%=resultSet.getString("") %></td>
<td><%=resultSet.getString("") %></td>
<td><%=resultSet.getString("") %></td>
<td><%=resultSet.getString("") %></td>
<td><%=resultSet.getString("") %></td>

</tr>
<%
}


connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>