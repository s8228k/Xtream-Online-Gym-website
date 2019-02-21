<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
String username=(String)session.getAttribute("username");
session.setAttribute("username", username);
String scheduleId=request.getParameter("scheduleId");
String scheduleName=request.getParameter("scheduleName");
String price=request.getParameter("price");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO testadd(CartId, username, scheduleName, price, Date) VALUES('"+scheduleId+"', '"+username+"', '"+scheduleName+"', '"+price+"', CURDATE())");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>






<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Cart.css" rel="stylesheet" type="text/css"/>
        <title>Add To Cart</title>
        <jsp:include page="header.jsp"/>
    </head>
    <body>
        
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
                <td><img src="pics/user.png" alt="logo" height="80px" width="80px"></td>
               
                    <h3>welcome  <%=username%></h3>
                    
                    <h3><a value="Logout" onclick="location.href='index.html'" name="logout" id="logout">Logout</a>
                        <%/*  try{
                                //if (request.getParameter("logout") != null)
                                    session.setAttribute("user",null);

                                if (session.getAttribute("username") != null){                                                               
                                    logout l = new logout();
                                    l.logout();                               
                                }
                            }catch(Exception e){
                                System.out.println(e.getMessage());
                            }
                        */
                        %>
                    </h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
    
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
            
            <table border="2" align="center">
                <tr><h1 >Add To Cart</h1></tr>
                <tr>
                    <td>ID</td>   
                    <td>username</td>
                    <td>schedule Name</td>
                    <td>price</td>
                    <td>Date</td>
                </tr>  
                <%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from testadd)";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
    %>
        <tr>
            <td><%=resultSet.getString("CartId") %></td>
            <td><%=resultSet.getString("username") %></td>
            <td><%=resultSet.getString("scheduleName") %></td>
            <td><%=resultSet.getString("price") %></td>
            <td><%=resultSet.getString("Date") %></td>
            <td>
            <form action="CartEdit.jsp" method="POST">
                <input name="scheduleId" type="text" value="<%=resultSet.getString("CartId") %>" hidden>
                <input name="username" type="text" value="<%=resultSet.getString("username")%>" hidden>
                <input name="scheduleName" type="text" value="<%=resultSet.getString("scheduleName") %>" hidden>
                <input name="price" type="text" value="<%=resultSet.getString("price") %>" hidden>
                <input name="Date" type="text" value="<%=resultSet.getString("Date") %>" hidden>

                <button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="edit">Delete</button>
            </form>
            </td>
            
            <td>
            <form action="payment_2.jsp" method="POST">
                <input name="scheduleId" type="text" value="<%=resultSet.getString("CartId") %>" hidden>
                <input name="username" type="text" value="<%=resultSet.getString("username")%>" hidden>
                <input name="scheduleName" type="text" value="<%=resultSet.getString("scheduleName") %>" hidden>
                <input name="price" type="text" value="<%=resultSet.getString("price") %>" hidden>
                <input name="Date" type="text" value="<%=resultSet.getString("Date") %>" hidden>

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
 
 <div class="insert" align="center">
        <table>
            <tr>
                <td><button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="edit" onclick="location.href='Bill.jsp'">Confirm</button></td>
                <td><button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="edit" onclick="location.href='deletecart.jsp'">Cancel</button></td>
                <td><button style="width:100px;height: 50px;background-color: black;color: snow" type="submit" name="cart" onclick="location.href='Cart.jsp'">Cart ?</button></td>
            </tr>
        </table>
</div>
 
 <jsp:include page="footer.jsp"/>
    </body>
</html>
