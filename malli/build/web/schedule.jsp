<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.*" %>
<%@page import="design.pattern.command.Client" %>
<% 
        String name=request.getParameter("username");
        session.setAttribute("user",name);
        name = (String)session.getAttribute("user");                        
%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="utf-8">
    <title>Schedule</title>
   <jsp:include page="header.jsp"/>
    <link href="css/schedule.css" rel="stylesheet" type="text/css"/><!--schedule css-->
    <link rel="shortcut icon" href="x.png" alt="logo">
    <script src="js/visible.js" type="text/javascript"></script>
    
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
      <!--schedule start block-->
    
      <div class="schedule">
      <table border="10" width="1200" align="center" id="table" >
          <thead>
              <tr>
                  <th class="empty" colspan="13" ><h1>Schedule</h1></th>
              </tr>
          </thead>
          <tbody>
              <tr>
                  <td class="empty"><h4></h4></td>
                  <td class="empty"><h4 align=" center ">8.00AM - 9.00AM</h4></td>
                  <td class="empty"><h4 align=" center ">9.00AM - 10.00AM</h4></td>
                  <td class="empty"><h4 align=" center ">10.00AM - 11.00AM</h4></td>
                  <td class="empty"><h4 align=" center ">11.00AM - 12.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">12.00PM - 1.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">1.00PM - 2.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">2.00PM - 3.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">3.00PM - 4.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">4.00PM - 5.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">5.00PM - 6.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">6.00PM - 7.00PM</h4></td>
                  <td class="empty"><h4 align=" center ">7.00PM - 8.00PM</h4></td>
              </tr>
              <tr>
                  <td class="empty"><h4 align=" center ">MONDAY</h4></td>
                  <td class="empty" colspan="2" ><a class="BodyTone" id="BodyTone" disable="disable" href="BodyTone.jsp"  >Body Tone</a></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="FitnessPilates" id="FitnessPilates" href="FitnessPilates.jsp">Fitness pilates</a></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="LegsBumsAndTums" id="LegsBumsAndTums" href="LegsBumsTums.jsp">Legs,Bums,Tums</a></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
              </tr>
                       <tr>
                  <td class="empty"><h4 align=" center ">TUESDAY</h4></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2" ><a class="BodyTone" id="BodyTone" href="BodyTone.jsp" >Body Tone</a></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="LegsBumsAndTums" id="LegsBumsAndTums" href="LegsBumsTums.jsp">Legs,Bums,Tums</a></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Cycling" id="Cycling" href="cycling.jsp">Cycling</a></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
              </tr>
              <tr>
                  <td class="empty"><h4 align=" center ">WEDNESDAY</h4></td>                  
                  <td class="empty"colspan="2"><a class="Cardio" id="Cardio" href="Cardio.jsp">Cardio</a></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="FitnessPilates" id="FitnessPilates" href="FitnessPilates.jsp">Fitness Pilates</td>
                  <td class="empty" ></td>
                  <td class="empty" colspan="2"><a class="LegsBumsAndTums" id="LegsBumsAndTums" href="LegsBumsTums.jsp">Legs,Bums,Tums</a></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Cycling" id="Cycling" href="cycling.jsp">Cycling</td>
                  <td class="empty"></td>
              </tr>
              <tr>
                  <td class="empty"><h4 align=" center ">THURSDAY</h4></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2" ><a class="BodyTone"id="BodyTone" href="BodyTone.jsp" >Body Tone</a></td> 
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="FitnessPilates" id="FitnessPilates" href="FitnessPilates.jsp">Fitness Pilates</a></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="LegsBumsAndTums" id="LegsBumsAndTums" href="LegsBumsTums.jsp">Legs,Bums,Tums</a></td>                  
                  <td class="empty"></td>
                  <td class="empty"></td>
              </tr>
              <tr>
                  <td class="empty"><h4 align=" center ">FRIDAY</h4></td>                                  
                  <td class="empty"><a class="Cardio" id="Cardio" href="Cardio.jsp">Cardio</a></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="FitnessPilates" id="FitnessPilates" href="FitnessPilates.jsp">Fitness Pilates</td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="LegsBumsAndTums" id="LegsBumsAndTums" href="LegsBumsTums.jsp">Legs,Bums,Tums</a></td>
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Cycling" id="Cycling" href="cycling.jsp">Cycling</td>
                  <td class="empty"></td>
              </tr>
              <tr>
                  <td class="empty"><h4 align=" center ">SATURDAY</h4></td>
                  <td class="empty" colspan="2"><a class="Yoga" id="Yoga" href="Yoga.jsp">Yoga</a></td>                  
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Aerobics" id="Aerobics" href="Aerobics.jsp">Aerobics</a></td>                  
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Badminton" id="Badminton" href="badminton.jsp">Badminton</a></td>                  
                  <td class="empty" colspan="2"><a class="Tennis" id="Tennis" href="tennis.jsp">Tennis</a></td>                  
                  <td class="empty" colspan="2"><a class="Yoga" id="Yoga" href="Yoga.jsp">Yoga</a></td>
                  
              </tr>
              <tr>
                  <td class="empty"><h4 align=" center ">SATURDAY</h4></td>
                  <td class="empty" colspan="2"><a class="Yoga" id="Yoga" href="Yoga.jsp">Yoga</a></td>                  
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Aerobics" id="Aerobics" href="Aerobics.jsp">Aerobics</a></td>                  
                  <td class="empty"></td>
                  <td class="empty" colspan="2"><a class="Tennis" id="Tennis" href="tennis.jsp">Tennis</td>                  
                  <td class="empty" colspan="2"><a class="Badminton" id="Badminton" href="badminton.jsp">Badminton</a></td>                  
                  <td class="empty" colspan="2"><a class="Yoga" id="Yoga" href="Yoga.jsp">Yoga</a></td>
              </tr>
          </tbody>
      </table>
      </div>
      <!-- END Schedule block -->
      <div>
          <table align="center" >
              <tbody>  
                  <tr>
                      <td><h2 id="vi">Please pay for gym activities and click show schedule </h2></td>
                  </tr>
                  <tr>
                      <td><input type="submit" value="Show Schedule" id="" onclick="myFunction();" class="button"/></td>
                  </tr>
                  <tr height="30px"></tr>
                  <tr>
                      <td><input type="submit" value="Gym Activities" id="Activities" onclick="location.href='Cart.jsp'" class="button"/></td>
                  </tr>
                  <tr height="30px"></tr>
                  <tr>
                      <td ><input type="submit" value="Plans" id="Plans" onclick="location.href='fitness.jsp'" class="button"/></td>
                  </tr>
                  <tr height="30px"></tr>
                  <tr>
                      <td ><input type="submit" value="Sports" id="Sports" onclick="location.href='sport.jsp'" class="button"/></td>
                  </tr>
                  <tr height="30px"></tr>
                  
                 
              </tbody>
          </table>
                     
        </div>
      
        <jsp:include page="footer.jsp"/>
  </body>
</html>
<!--stackedit_data:
eyJoaXN0b3J5IjpbLTI2Mzc1NjE3MV19
-->

