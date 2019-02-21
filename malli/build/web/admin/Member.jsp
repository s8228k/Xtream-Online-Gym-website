

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Members</title>
        <link type="text/css" href="layout.css" rel="stylesheet"><!--layout css-->
            <jsp:include page="header.jsp"/>
    
    
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
                <td><%  String username=(String)session.getAttribute("username");%>
                    <h3>welcome  <%=username%></h3>

                  <h3><a href="index.html">Logout</a></h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>
        <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            String username;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xgym","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM member";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    <center>
        <h1>Members</h1>
        
       
        
        </br>
        </br>
        <table border="1" cellspacing="5" cellpadding="4" style="border-style:solid;">
            <thead>
                <tr>
                    <th><b>First Name</b></th>
                    <th><b>Last Name</b></th>
                    <th><b>Gender</b></th>
                    <th><b>Date Of Birth</b></th>
                    <th><b>Email Address</b></th>
                    <th><b>Username</b></th>
                    <th><b>Password</b></th>
                    <th><b>Address</b></th>
                    <th><b>Phone</b></th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (result.next()){
                        username=result.getString("username");
                %>
                <tr>
                    
                    <td><%=result.getString("fname")%></td>
                    <td><%=result.getString("lname")%></td>
                    <td><%=result.getString("gender")%></td>
                    <td><%=result.getString("dob")%></td>
                    <td><%=result.getString("email")%></td>
                   <td><%=result.getString("username")%></td>
                   <td><%=result.getString("password")%></td>
                   <td><%=result.getString("address")%></td>
                   <td><%=result.getString("phone")%></td>
                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>
                
    </center>
    <jsp:include page="footer.jsp"/>
    
    </body>
</html>