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
<!DOCTYPE html>
<head>
    <title>Xtream Gym</title>
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
                <td><img src="pics/user.png" alt="logo" height="80px" width="80px"></td>
                <td><%  String username=(String)session.getAttribute("username");%>
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
<div class="pic" >
     <center>
        <h1>Conform Booking</h1>
        <form id="addForm" action="sql.jsp" method="POST">
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr>
                        <td>scheduleId : </td>
                        <td><input type="text" name="scheduleId" id="scheduleId" value="A005"/></td>
                    </tr>
                    <tr>
                        <td>scheduleName : </td>
                        <td><input type="text" name="scheduleName" id="scheduleName" value="Cardio" /></td>
                    </tr>
                    <tr>
                        <td>UserName : </td>
                        <td><input type="text" name="username" id="username" value="<%=username%>"></td>
                    </tr>
                  
                    
                </tbody>
            </table>
<input type="submit" value="Confirm" onclick="return display(); return true;" style="width:100px;height: 50px;background-color: black;color: snow" name="btnAdd" id="btnAdd">
        </form>
    </center>
    
    
    <table align ="center">
    
    <script>
        function display(){
            alert("booking confirmed!");
        }
    </script>
    
   </table>
</div>
    
        <jsp:include page="footer.jsp"/>
    </body>
</html>

