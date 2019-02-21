<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf-8">
    
    <link type="text/css" href="css/layout.css" rel="stylesheet"><!--layout css-->
    <link rel="shortcut icon" href="pics/x.png" alt="logo">
    <title>Register</title>
    <link type="text/css" href="css/forms.css" rel="stylesheet">   
    <script type="text/javascript" src="js/register.js"></script>
    
  </head>  
  <body>
    <!--navigation bar -->
    <div>
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
                    <h3><a value="login" href="login.jsp" name="login" id="login">login</a>
                        
                    </h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
         
        <!-- for the content-->
        <h2 align="center" style="font-size: 50px; margin-top:200px;">Register</h2><br>

        <div align="center" style="margin-bottom: 200px">
        <form name="registerForm" method="post" action="register_process.jsp" onsubmit="return regValidate()">
            <table class="table">
                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">First Name :</td>
                    <td><input type="text" name="fname" id="fname" style="font-size:30px;" required/></td>
                </tr>
                
                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">Last Name :</td>
                    <td class="row"><input type="text" name="lname" id="lname" style="font-size:30px;"required/></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td style="font-size:30px;">Gender :</td>
                    <td class="row"><input type="radio" name="gender" value="Female"  />Female
                                    <input type="radio" name="gender" value="Male" required/>Male
                    </td>
                </tr>
                
                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td style="font-size:30px;">date of birth :</td>
                    <td class="row"><input type="date" name="dob" id="dob" required/>                                
                    </td>
                </tr>
                
                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">Email :</td>
                    <td class="row"><input type="email" name="email"  id="email" style="font-size:30px;"required /></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">Username :</td>
                    <td class="row"><input type="text" name="username" style="font-size:30px;"required/></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">Password :</td>
                    <td class="row"><input type="password" name="password" style="font-size:30px;"required/></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>
                
                <tr>
                    <td style="font-size:30px;">Confirm Password :</td>
                    <td class="row"><input type="password" name="confirmPassword" style="font-size:30px;"required/></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">Address :</td>
                    <td class="row"><input type="text" name="address"  style="font-size:30px;"required/></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td style="font-size:30px;">Contact Number :</td>
                    <td class="row"><input type="text" name="phone" style="font-size:30px;" placeholder="0112000000"reqired/></td>
                </tr>

                <tr>
                    <td height="20px"></td>
                    <td></td>
                </tr>

                <tr>
                    <td><input type="reset" value="Cancel" name="cancel" style="font-size:30px; width:45%; height:100%; border-radius:1%"></td>
                    <td><input type="submit" value="Submit" name="reg" onsubmit="return regValidate()" style="font-size:30px; width:40%; height:100%; border-radius:1%"></td>
                </tr>

            </table>
        </form>

        </div>
    </div>

      <jsp:include page="footer.jsp"/>

  </body>
</html>