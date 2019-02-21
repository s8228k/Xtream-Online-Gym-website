
    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Admin</title>
        <link type="text/css" href="layout.css" rel="stylesheet"><!--layout css-->
        <jsp:include page="header.jsp"/>
    </head>
    <body>
         <%!
            Connection conn;
            PreparedStatement pstmt;
            ResultSet result;
            String qry;
            Integer AdminId;
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xgym","root","");
            if(request.getParameter("btnUpd")!= null){
                AdminId = Integer.parseInt(request.getParameter("hiddenId"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="UPDATE  admin SET adminUserName =? ,  adminId =? , adminDOB =?,adminAddress =? WHERE adminId =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setString(1, request.getParameter("adminUserName"));
                    pstmt.setString(2, request.getParameter("adminId"));
                    pstmt.setString(3, request.getParameter("adminDOB"));
                    pstmt.setString(4, request.getParameter("adminAddress"));
                    pstmt.setInt(5, AdminId);
                    pstmt.executeUpdate();
                    response.sendRedirect("./Admin.jsp");
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                AdminId = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="SELECT * FROM admin WHERE AdminId =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, AdminId);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }else{
                response.sendRedirect("./Admin.jsp");
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
        <h1>Edit Details of Admin</h1>
        <form id="editForm" action="" method="POST">
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr>
                        <td><b>Admin User Name :</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=AdminId%>"/>
                            <input type="text" name="adminUserName" id="adminUserName" value ='<%=result.getString("adminUserName")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Admin ID :</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=AdminId%>"/>
                            <input type="text" name="adminId" id="adminId" value ='<%=result.getString("adminId")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Date Of Birth:</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=AdminId%>"/>
                            <input type="text" name="adminDOB" id="adminDOB" value ='<%=result.getString("adminDOB")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Address:</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=AdminId%>"/>
                            <input type="text" name="adminAddress" id="adminAddress" value ='<%=result.getString("adminAddress")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="submit" name="btnUpd" value="Edit Admin" id="btnUpd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>

    <jsp:include page="footer.jsp"/>

    </body>
</html>