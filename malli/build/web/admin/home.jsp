<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>    
        <title>Home</title>
        <meta charset="utf-8">
    
    <link type="text/css" href="css/layout.css" rel="stylesheet"><!--layout css-->
    <link rel="shortcut icon" href="pics/x.png" alt="logo">
    </head>
  
    <body>
        <jsp:include page="navAdmin.jsp"/>
    
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
            <img class="slides" src="../pics/01.png"/>
            <img class="slides" src="../pics/02.jpg"/>
            <img class="slides" src="../pics/03.jpg"/>
            <img class="slides" src="../pics/04.jpg"/>
            <img class="slides" src="../pics/05.jpg"/>
            <img class="slides" src="../pics/06.jfif"/>
            <img class="slides" src="../pics/07.jpg"/>
            <img class="slides" src="../pics/08.jpg"/>
            <img class="slides" src="../pics/09.jpg"/>
            <img class="slides" src="../pics/10.jpg"/>
            <img class="slides" src="../pics/11.jfif"/>
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
