<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%        try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
        Statement st = (Statement) conn.createStatement();
        String query = "SELECT adminUserName FROM admin;";
        st.executeQuery(query);
        ResultSet rs = st.getResultSet();

        while(rs.next()){
            String username=request.getParameter("username");
            
            String password=request.getParameter("password");

            String dbuse = rs.getString("adminUserName");
        

            if(username.equals(dbuse)){                    
                    int i=st.executeUpdate("update admin set password = '"+password+"' where adminUserName= '"+username+"'");
                    response.sendRedirect("./home.jsp");  
                    session.setAttribute("username",username);
            }
            
            else if(username != dbuse){
                //System.out.print("invalid username or password");
                request.getRequestDispatcher("./adminforgot.jsp"); 
            }
        }

        
        }
        catch(Exception e)
        { 
        request.getRequestDispatcher("./adminforgot.jsp"); 
        }
%>

<!DOCTYPE html>
<html>
    <head>
    <jsp:include page="header.html"/>
    <title>Forgot password</title>
    <link type="text/css" href="css/forms.css" rel="stylesheet">   
    <script type="text/javascript" src="js/forgot.js"></script>
    
  </head>

         
  <body>
    <div>
        <div>
      <nav class="nav">
        <ul>
          <li><img  src="pics/xgym.png" alt="logo" height="120px" width="200px"></li>
          <li><a class="a" href="index.html"><b>Home</a></li>
          <li class="dropdown"><a class="a" href="login.jsp">About the GYM</b></a>
                                  <div class="dropdown-content">
                                    <a href="login.jsp">History of the gym</a>
                                    <a href="login.jsp">Equipments</a>
                                    <a  href="login.jsp">Rules and regulations</a>
                                    <a href="login.jsp">Terms and Conditions</a>
                                  </div>
          </li>
          <li><a class="a" href="login.jsp"><b>Sports</a></li>
          <li><a class="a" href="login.jsp">Fitness</span></a></li>
          <li><a class="a" href="login.jsp">Schedule</a></li>
          
          <li  class="dropdown"><a class="a" href="login.jsp">Contact Us</b></a>
                                  <div class="dropdown-content">
                                    <a href="login.jsp">give feedback</a>
                                    <a href="contact.jsp">Contact details</a>
                                  </div>
          </li>
        </ul>
      
        
   <!-- part with logo and login-->
         <table class="part01">
            <tr>
                <td><img src="pics/user.png" alt="logo" height="80px" width="80px"></td>
                <td>
                  <h3><a href="adminLogin.jsp">Login</a></h3>
                  <h3></h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
         
        <!-- for the content-->
        <h2 align="center" style="font-size: 50px; margin-top:200px;">Forgot Password</h2><br>

        <div align="center" style="margin-bottom: 200px">
        <form name="forgotForm" action="adminforgotProcess.jsp" method="post" onsubmit="forgotValidate()">
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