
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Trainee</title>
        <link type="text/css" href="layout.css" rel="stylesheet"><!--layout css-->
         <jsp:include page="header.jsp"/>
    </head>
    <body>
         <%!
            Connection conn;
            PreparedStatement pstmt;
            ResultSet result;
            String qry;
            Integer TraineeId;
          
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xgym","root","");
            if(request.getParameter("btnUpd")!= null){
                TraineeId = Integer.parseInt(request.getParameter("hiddenId"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="UPDATE  trainee SET traineename =? ,  traineeid =? , traineetype =? ,message =? WHERE TraineeId =?" ;
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setString(1, request.getParameter("traineename"));
                    pstmt.setString(2, request.getParameter("traineeid"));
                    pstmt.setString(3, request.getParameter("traineetype"));
                    pstmt.setString(4, request.getParameter("message"));
                    pstmt.setInt(5, TraineeId);
                    pstmt.executeUpdate();
                    response.sendRedirect("./Trainee.jsp");
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                TraineeId = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="SELECT * FROM trainee WHERE TraineeId =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, TraineeId);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }else{
                response.sendRedirect("./Trainee.jsp");
            }
            
        %>

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
    

        <center>
        <h1>Edit Details of Trainees</h1>
        <form id="editForm" action="" method="POST">
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr>
                        <td><b>Trainee Name : </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=TraineeId%>"/>
                            <input type="text" name="traineename" id="traineename" value ='<%=result.getString("traineename")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Trainee Id : </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=TraineeId%>"/>
                            <input type="text" name="traineeid" id="traineeid" value ='<%=result.getString("traineeid")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Trainee Type:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=TraineeId%>"/>
                            <input type="text" name="traineetype" id="traineetype" value ='<%=result.getString("traineetype")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Details:</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=TraineeId%>"/>
                            <input type="text" name="message" id="message" value ='<%=result.getString("message")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" name="btnUpd" value="Edit Trainee" id="btnUpd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>
        
    <jsp:include page="footer.jsp"/>

    </body>
</html>