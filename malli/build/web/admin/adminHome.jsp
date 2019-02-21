

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>    
        <title>Admin Home</title>    
        <link type="text/css" href="../css/layout.css" rel="stylesheet"><!--layout css-->
    </head>
  
    <body>
        <div>
      <nav class="nav">
        <ul>
          <li><img  src="../pics/xgym.png" alt="logo" height="120px" width="200px"></li>
          <li><a class="a" href="adminHome.jsp"><b>Home</b></a></li>
          <li><a class="a" href="Member.jsp"><b>Members</b></a></li>
          <li><a class="a" href="Admin.jsp"><b>Admins</b></a></li>
          <li><a class="a" href="Trainee.jsp"><b>Trainees</b></a></li>
          <li><a class="a" href="sports.jsp"><b>Sports</b></a></li>
          <li><a class="a" href="fitness.jsp"><b>Fitness</b></a></li>
          <li><a class="a" href="Schedule.jsp"><b>Member Details</b></a></li>
          <li><a class="a" href="Equipment.jsp"><b>Equipment</b></a></li>
          <li><a class="a" href="PaymentDetails.jsp"><b>Payment Details</b></a></li>
          
          <li><a class="a" href="readProfit.jsp"><b>Profit Report</b></a></li>
          
          </ul>
      
        
   <!-- part with logo and login-->
         <table class="part01">
            <tr>
                <td><img src="../pics/user.png" alt="logo" height="80px" width="80px"></td>
                <td>
                     <%  String username=(String)session.getAttribute("username");%>
                    <h3>welcome  <%=username%></h3>                 
                    <h3><a href="index.html">Logout</a></h3>
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

            <br><br><br><br><br><br>
           
        </div>
    
        <jsp:include page="footer.jsp"/>
    </body>
</html>
