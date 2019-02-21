<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<head>
    <title>BMI Histroy</title>
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
                    <%String username = (String)session.getAttribute("username");%>
                    <h3>welcome <%=username%></h3>
                    <h3><a value="Logout" href="logout_process.jsp" name="logout" id="logout">Logout</a>
                        
                    </h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
                    
<div class="pic" >
    <td><img src="pics/history.png" alt="history"/></td>   
    <table border="2" align="center">
        <tr><h1 >BMI History</h1></tr>
        <tr>
                 
            <td>username</td>

            <td>BMI</td>
            <td>description</td>
        </tr>  
<%
     username=(String)session.getAttribute("username");
    
    
            Class.forName("com.mysql.jdbc.Driver");
            ResultSet i = null;
            Connection conn = null;
            
            try{                
                conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
                Statement st=conn.createStatement();
                i = st.executeQuery("select * from bmi where username = '"+username+"'");
            }
            catch(Exception e){
                System.out.print(e.getMessage());                
            }
            
            try{
                while(i.next()){
        %>
        <tr>
        
            <td><%=i.getString("username") %></td>

            <td><%=i.getString("bmi") %></td>
            <td><%=i.getString("des") %></td>

            </tr>
        <%
            }


                conn.close();
            }catch (Exception e) {
                System.out.println(e.getMessage());
            }
        %>
    </table>
    
    </div>
    <br/><br/>
    
        <jsp:include page="footer.jsp"/>
    </body>
</html>
