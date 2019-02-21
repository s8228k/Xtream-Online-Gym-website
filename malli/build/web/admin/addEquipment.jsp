<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add equipment</title>
        <link type="text/css" href="layout.css" rel="stylesheet"><!--layout css-->
        <jsp:include page="header.jsp"/>               
        <script type="text/javascript" src="js/equipment.js"></script>

    
    
    </head>
    <body>
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;           
        %>
        <%
            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xgym","root","");
                qry="INSERT INTO equipment(equipmentId,equipmentName,dateOfPurchase,Cost) VALUES (?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                pstmt.setString(1, request.getParameter("equipmentId"));
                pstmt.setString(2, request.getParameter("equipmentName"));
                pstmt.setString(3, request.getParameter("dateOfPurchase"));
                pstmt.setString(4, request.getParameter("Cost"));
                pstmt.executeUpdate();
                response.sendRedirect("./Equipment.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
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
          <li><a class="a" href="Schedule.jsp"><b>Schedule</b></a></li>
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

    <center>
        <h1>Add Details of Equipment</h1>
        <form id="addForm" action="" method="POST"  name="EquipmentForm" onsubmit="return EquipmentValidate()">
            
            
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr>
                        <td><b>Equipment ID : </b></td>
                        <td><input type="text" name="equipmentId" id="equipmentId" required ></td>
                    </tr>
                    <tr>
                        <td><b>Equipment Name:</b> </td>
                        <td><input type="text" name="equipmentName" id="equipmentName" required /></td>
                    </tr>
                    <tr>
                        <td><b>Date Of Purchase : </b></td>
                        <td><input type="date" name="dateOfPurchase" id="dateOfPurchase" required /></td>
                    </tr>
                    <tr>
                        <td><b>Cost: </b></td>
                        <td><input type="text" name="Cost" id="Cost" required/></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" name="btnAdd" value="Add Equipment" id="btnAdd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>
    
    <jsp:include page="footer.jsp"/>
   
    </body>
</html>