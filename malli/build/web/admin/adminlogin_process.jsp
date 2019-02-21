<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%  try {
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
        Statement st = (Statement) conn.createStatement();
        String query = "SELECT adminUserName, password FROM admin;";
        st.executeQuery(query);
        ResultSet rs = st.getResultSet();

        while(rs.next()){                                
            String username=request.getParameter("username");
            String password=request.getParameter("password");

            String dbuse = rs.getString("adminUserName");
            String dbpass = rs.getString("password");

            if(username.equals(dbuse) & password.equals(dbpass)){
                    session.setAttribute("username", username);
                   response.sendRedirect("./adminHome.jsp");
            }
            
            else if(username != dbuse | password!=dbpass){
               // System.out.print("invalid username or password");
                request.getRequestDispatcher("./adminLogin.jsp"); 
            }
        }
    } catch (Exception e) {
       //System.out.print(e.getMessage());
       request.getRequestDispatcher("./adminLogin.jsp");
    }

%>



<!DOCTYPE html>
<html>
    <head>
    <title>Login</title>
    <link type="text/css" href="css/forms.css" rel="stylesheet">   
    <script type="text/javascript" src="js/login.js"></script>

    <link type="text/css" href="../css/layout.css" rel="stylesheet"><!--layout css-->
    <link rel="shortcut icon" href="pics/x.png" alt="logo">
    
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
                  <h3></a></h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
         
        <!-- for the content-->
        <h2 align="center" style="font-size: 50px; margin-top:200px;">Login</h2><br>

        <div align="center" style="margin-bottom: 200px">
        <form name="loginForm" action="adminlogin_process.jsp" method="post" onsubmit="return loginValidate()">
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
                        <td style="font-size:30px;">Password :</td>
                        <td class="row" ><input type="password" name="password" style="font-size:30px;"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><input type="submit" value="Login" onsubmit="return loginValidate()" style="font-size:30px; width:40%; height:100%; border-radius:1%"></td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td></td>
                        <td><a href="adminforgot.jsp" style="text-decoration: none">Forgot Password?</a></td>
                    </tr>
                </table>
            </form>    
        </div>
    </div>

      <jsp:include page="footer.jsp"/>

  </body>
</html>