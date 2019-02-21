<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
        
            <table align="center">
                <tr>
                    <td align="center"><h2>History</h2></td>
                    <td align="center"><h2>Equipments</h2></td>
                    <td align="center"><h2>Rules and regulations</h2></td> 
                    <td align="center"><h2>Terms and Conditions</h2></td>
                      
                </tr>
                <tr>
                    <td><a href="history.jsp"><img src="pics/gymhistry.jpg" alt="gymhistry" height="250px" width="350px"/></a></td>
                    <td><a href="equipments.jsp"><img src="pics/equipments.jpg" alt="equipments" height="250px" width="350px"/></a></td>
                    <td><a href="rules.jsp"><img src="pics/rules.png" alt="rules" height="250px" width="350px"/></a></td>
                    <td><a href="terms.jsp"><img src="pics/Terms.jpg" alt="Terms" height="250px" width="350px"/></a></td>
                
                </tr>
            </table>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
