<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%String username=(String)session.getAttribute("username");
session.setAttribute("username", username);%>

<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "xgym";
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <%--header--%>
        <jsp:include page="header.jsp"/>
        
        <title>Bill</title>
    </head>
    <body>
        <!-- navigation bar -->
     <div>
      <nav class="nav">
        <ul>
          <li><img  src="pics/xgym.png" alt="logo" height="120px" width="200px"></li>
          <li><a class="a" href="home.jsp"><b>Home</a></li>
          <li class="dropdown"><a class="a" href="aboutTheGym.jsp">About the GYM</b></a>
                                  <div class="dropdown-content">
                                    <a href="history.jsp">History of the gym</a>
                                    <a href="equipments.jsp">Equipments</a>
                                    <a  href="rules.jsp">Rules and regulations</a>
                                    <a href="terms.jsp">Terms and Conditions</a>
                                  </div>
          </li>
          <li><a class="a" href="sport.jsp"><b>Sports</a></li>
          <li><a class="a" href="fitness.jsp">Fitness</span></a></li>
          <li><a class="a" href="schedule.jsp">Schedule</a></li>
          <li><a href="Cart.jsp"><img  src="pics/cart.png" alt="logo" height="50px" width="50px"></a></li>
          <li  class="dropdown"><a class="a" href="ContactUs.jsp">Contact Us</b></a>
                                  <div class="dropdown-content">
                                    <a href="feedback.jsp">give feedback</a>
                                    <a href="contact.jsp">Contact details</a>
                                  </div>
          </li>
        </ul>
      
        
   <!-- part with logo and login-->
         <table class="part01">
            <tr>
                <td><a href="userProfile.jsp"><img src="pics/user.png" alt="logo" height="80px" width="80px"></a></td>
                <td>
                    
                    <h3>welcome <%=username%></h3>
                    <h3><a value="Logout" href="logout_process.jsp" name="logout" id="logout">Logout</a>
                        
                    </h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
        
      <div class="pic" >
    
    <table border="2" align="center">
        <tr><h1 >Bill</h1></tr>
        <tr>
            <td>Date</td>
            <td>username</td>
            <td>Total Payment</td>
        </tr>  
        <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select Date, username, sum(price) as totalPayment from testadd)";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
    %>
        <tr>
            <td><%=resultSet.getString("Date") %></td>
            <td><%=resultSet.getString("username") %></td>
            <td><%=resultSet.getString("totalPayment") %></td>
            <td>
            <form action="Test.jsp" method="POST">
                <input name="Date" type="date" value="<%=resultSet.getString("Date") %>" hidden>
                <input name="username" type="text" value="<%=resultSet.getString("username")%>" hidden>
                <input name="price" type="text" value="<%=resultSet.getString("totalPayment") %>" hidden>
                 <td><button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="edit" onclick="location.href='Test.jsp'">Pay</button></td>
            </form>
            </td>
        </tr>
<%
}
connection.close();
} catch (Exception e) {
        e.printStackTrace();
}
%>


    </table>
       
    </div>

                 <button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="edit" onclick="location.href='deletecart.jsp'" align="center">refreash</button>

        
        <%--Footer--%>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
