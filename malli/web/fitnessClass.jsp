<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="BMI.BMI" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Fitness Classes</title>
        <link type="text/css" href="css/forms.css" rel="stylesheet"><!--form css-->
        <link type="text/css" href="css/fitness.css" rel="stylesheet"><!--fitness css-->
        <jsp:include page="header.jsp"/>
    </head>
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
                    
                    <h3><a value="Logout" onclick="location.href='index.html'" name="logout" id="logout">Logout</a>
                        
                    </h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
         
<!-- for the content-->
        <h2 align="center" style="font-size: 50px; margin-top:200px;">Your BMI</h2><br>

        <div align="center" style="margin-bottom: 200px">
            
            <%
                String height = request.getParameter("height");
                String weight = request.getParameter("weight");
                            
                BMI b = new BMI();
                String ebmi = b.calcBMI(height, weight);
                
                double bmi = Double.parseDouble(b.calcBMI(height, weight));
            %>

            <table class="fit">
                    <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:30px;">height :</td>
                        <td style="font-size:30px;"><%= height%>m</td>
                    </tr>
                    
                     <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>

                    <tr>
                        <td style="font-size:30px;"> weight :</td>
                        <td style="font-size:30px;"><%= weight%>kg</td>
                    </tr>
                    
                     <tr>
                        <td height="20px"></td>
                        <td></td>
                    </tr>
                    
                     <tr>
                        <td style="font-size:50px;">Your Calculated BMI is:</td>
                        <td style="font-size:50px;"><%=bmi%></td>
                        
                    </tr>
                    
                </table>            
        </div>
                    
    <form action="fitness_process.jsp" method="post">
        <input type="text" name="bmi" id="bmi" value="<%=bmi%>" hidden>
                <%if(bmi>12 & bmi<18){ %>
                    <p class="class" align="center">to maintain a health weight follow yoga and the provided diet chart joining to the fitness plan</p>
                    <p class="class" align="center"><button type="submit">check BMI history</button></p>
                    <br/><br />
                    <input type="text" name="description" id="description" value="under weight" hidden>
                    <p class="class" align="center"><button type="submit">check BMI history</button></p>
                    
                <% }
                else if(bmi>=18 & bmi<=25){ %>
                    <p class="class" align="center"> congratulations you have a healthy weight maintain the same exercises you do</p>
                    <br/><br />
                    <input type="text" name="description" id="description" value="healthy weight" hidden>
                    <p class="class" align="center"><button type="submit">check BMI history</button></p>
                    
                <%}
                    else if(bmi>25 & bmi <70){ %>
                    <p class="class" align="center">to maintain a health weight follow aerobics and the provided diet chart joining to the fitness plan</p>
                    <p class="class" align="center"><a class="class" href="Aerobics.jsp" align="center">click here to join aerobics</a></p>
                    <br/><br />
                    <input type="text" name="description" id="description" value="over weight" hidden>
                    <p class="class" align="center"><button type="submit">check BMI history</button></p>
                    
                <% } else{ %>    
                <p class="class" align="center">wrong enter!!!!! try again
                    <a class="class" href="fitness.jsp" align="center">click here to try again</a></p>
                <%}%>
                
    </form>
                
                
      <jsp:include page="footer.jsp"/>      
</html>