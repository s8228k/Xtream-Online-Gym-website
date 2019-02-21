<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
    <jsp:include page="header.jsp"/>
    <title>Fitness</title>
    <link type="text/css" href="css/forms.css" rel="stylesheet">   
    <script type="text/javascript" src="js/fitness.js"></script>
    
  </head>
  
  <body>
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
          <li><img  src="pics/cart.png" alt="logo" height="50px" width="50px"></li>
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
                <td><%String username = (String)session.getAttribute("username");%>
                    <h3>welcome <%=username%></h3>
                    
                    <h3><a value="Logout" onclick="location.href='index.html'" name="logout" id="logout">Logout</a></h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>  
         
<!-- for the content-->
        <h2 align="center" style="font-size: 50px; margin-top:200px;">Calculate your BMI</h2><br>

        <div align="center" style="margin-bottom: 200px">
            <form name="bmiForm" action="fitnessClass.jsp" method="post" onsubmit="return calculate()">
                <table class="table">
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:30px;">enter height :</td>
                        <td class="row"><input type="text" name="height" id="height" placeholder="enter in meters" style="font-size:30px;" >m</td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td style="font-size:30px;">enter weight :</td>
                        <td class="row" ><input type="text" name="weight" id="weight" placeholder="enter in kilograms" style="font-size:30px;" >kg</td>
                    </tr>
                    
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td><input type="reset" value="Reset" style="font-size:30px; width:70%; height:100%; border-radius:1%"></td>
                        <td><input type="submit" value="Submit" name="fitbtn" id="fitbtn" onsubmit="return calculate()" style="font-size:30px; width:40%; height:100%; border-radius:1%"></td>
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