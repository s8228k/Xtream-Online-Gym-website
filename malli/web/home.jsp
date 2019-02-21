<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8">
    
    <link type="text/css" href="css/layout.css" rel="stylesheet"><!--layout css-->
    <link rel="shortcut icon" href="pics/x.png" alt="logo">
        <title>Home</title>
        
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
        <div class="content" >
            <br><br><br><br><br><br>
            
            <h2>Welcome to Xtream GYM</h2>

            <p>This is the place that's gonna change your life for an awesome adventure!</p>
            <p>Our Gym and our sport club will give you a total new experience form all the other you've tried so far</p>
            <p>there are many sports that you can join and participate in</p>
            <p>as well as fitness programs you could enroll including your BMI</p>
            <br><br><br><br><br><br>
        </div>
    
        
        <!--the pictures sliding -->

        <div>
            <img class="slides" src="pics/01.png"/>
            <img class="slides" src="pics/02.jpg"/>
            <img class="slides" src="pics/03.jpg"/>
            <img class="slides" src="pics/04.jpg"/>
            <img class="slides" src="pics/05.jpg"/>
            <img class="slides" src="pics/06.jfif"/>
            <img class="slides" src="pics/07.jpg"/>
            <img class="slides" src="pics/08.jpg"/>
            <img class="slides" src="pics/09.jpg"/>
            <img class="slides" src="pics/10.jpg"/>
            <img class="slides" src="pics/11.jfif"/>
        </div>

         <!--script for sliding Gallery-->
        <script>
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("slides");
                
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                
                myIndex++;
                if (myIndex > x.length) {myIndex = 1}
                x[myIndex-1].style.display = "block";
                setTimeout(carousel, 5000); // Change image every 5 seconds
            }
  </script>
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
