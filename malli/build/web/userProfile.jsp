<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>

<!DOCTYPE html>
<head>
    <title>User Profile</title>
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
    
        
        <table align="center">
            <%    
            Class.forName("com.mysql.jdbc.Driver");
            ResultSet i = null;
            Connection conn = null;
            
            try{                
                conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
                Statement st=conn.createStatement();
                i = st.executeQuery("select * from member where username = '"+username+"'");
            }
            catch(Exception e){
                System.out.print(e.getMessage());                
            }
            
            try{
                while(i.next()){
        %>
         
            <tr>
                <td><img src="pics/user.png" alt="logo" height="500px" width="500px"></td> 
                <td></td>
            </tr>           
            <tr>
                <td>First Name</td>
                <td><%=i.getString("fname") %></td>
                
            </tr>
            <tr>
                <td>Last Name</td>
                <td><%=i.getString("lname") %></td>
            </tr> 
            <tr>
                <td>Gender</td>
                <td><%=i.getString("gender") %></td>
            </tr>
            <tr>
                <td>Date of birth</td>
                <td><%=i.getString("dob") %></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%=i.getString("email") %></td>
            </tr>
            <tr>
                <td>User name</td>
                <td><%=i.getString("username") %></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><%=i.getString("address") %></td>
            </tr>
            <tr>
                <td>Phone no</td>
                <td><%=i.getString("phone") %></td>
            </tr>           
        <%
            }


                conn.close();
            }catch (Exception e) {
                System.out.println(e.getMessage());
            }
        %>
        </table>
        
    </dic>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
