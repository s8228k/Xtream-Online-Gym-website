<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
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

<%String username=(String)session.getAttribute("username");
session.setAttribute("username", username);%>

<!DOCTYPE html>
<head>
    <title>Shopping cart</title>
    <link href="css/Activity_Plan_Sporats.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="header.jsp"/>
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
        <tr><h1 >Shopping Cart</h1></tr>
        <tr>
            <td>ID</td>   
            <td>schedule Name</td>
            <td>price</td>
        </tr>  
        <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from schedule where scheduleName='Activities' or scheduleName='Yoga' or scheduleName='Aerobics' or scheduleName='Badminton' or scheduleName='Tennis' )";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
    %>
        <tr>
            <td><%=resultSet.getString("scheduleId") %></td>
            <td><%=resultSet.getString("scheduleName") %></td>
            <td><%=resultSet.getString("price") %></td>
            <td>
            <form action="CartInsert.jsp" method="POST">
                <input name="scheduleId" type="text" value="<%=resultSet.getString("scheduleId") %>" hidden>
                <input name="scheduleName" type="text" value="<%=resultSet.getString("scheduleName")%>" hidden>
                <input name="price" type="password" value="<%=resultSet.getString("price") %>" hidden>
                <button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name>ADD</button>
            </form>
            </td>
            <td>
            <form action="payment_1.jsp" method="POST">
               <input name="scheduleId" type="text" value="<%=resultSet.getString("scheduleId") %>" hidden>
                <input name="scheduleName" type="text" value="<%=resultSet.getString("scheduleName")%>" hidden>
                <input name="price" type="password" value="<%=resultSet.getString("price") %>" hidden>

                <button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="add">Bill</button>
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

<div class="insert" align="center">
        <table>
            <tr>
                <td><button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="check" onclick="location.href='CartInsert.jsp'">Check Out</button></td>
            </tr>
        </table>
</div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
