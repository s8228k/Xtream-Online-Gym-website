<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
        Statement st = (Statement) conn.createStatement();
        String query = "SELECT username, email FROM member;";
        st.executeQuery(query);
        ResultSet rs = st.getResultSet();

        while(rs.next()){
            String username=request.getParameter("username");
            String email=request.getParameter("email");
            String password=request.getParameter("password");

            String dbuse = rs.getString("username");
            String dbemail = rs.getString("email");

            if(username.equals(dbuse) & email.equals(dbemail)){                    
                    int i=st.executeUpdate("update member set password = '"+password+"' where username = '"+username+"'");
                    response.sendRedirect("./home.jsp");  
                    session.setAttribute("username",username);
            }
            
            else if(username != dbuse | email!=dbemail){
                //System.out.print("invalid username or password");
                request.getRequestDispatcher("./forgot.jsp"); 
            }
        }

        
        }
        catch(Exception e)
        { 
        request.getRequestDispatcher("./forgot.jsp"); 
        }
%>

<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8">
    
    <link type="text/css" href="css/layout.css" rel="stylesheet"><!--layout css-->
    <link rel="shortcut icon" href="pics/x.png" alt="logo">
    <title>Forgot password</title>
    <link type="text/css" href="css/forms.css" rel="stylesheet">   
    <script type="text/javascript" src="js/forgot.js"></script>
    
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
         
        <!-- for the content-->
        <h2 align="center" style="font-size: 50px; margin-top:200px;">Forgot Password</h2><br>

        <div align="center" style="margin-bottom: 200px">
        <form name="forgotForm" action="forgot_process.jsp" method="post" onsubmit="forgotValidate()">
                <table class="table">
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:30px;">Username :</td>
                        <td class="row"><input type="text" name="username" style="font-size:30px;"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td style="font-size:30px;">email :</td>
                        <td class="row" ><input type="text" name="email" style="font-size:30px;"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td style="font-size:30px;">New Password :</td>
                        <td class="row" ><input type="password" name="password" style="font-size:30px;"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:30px;">Confirm Password :</td>
                        <td class="row" ><input type="password" name="confirmPassword" style="font-size:30px;"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td><input type="reset" value="Reset" style="font-size:30px; width:40%; height:100%; border-radius:1%"></td>
                        <td><input type="submit" value="OK" name="forgot" id="forgot" onsubmit="return forgotValidate()" style="font-size:30px; width:40%; height:100%; border-radius:1%"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                 
                </table>
            </form>
            
            
            
        </div>
    </div>

      <jsp:include page="footer.jsp"/>

  </body>
</html>
