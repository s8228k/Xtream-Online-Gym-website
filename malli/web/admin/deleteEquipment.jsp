<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Equipment</title>
    </head>
    <body>
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;
            Integer equipmentId;

        %>
        <%
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                equipmentId = Integer.parseInt(request.getParameter("id"));
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xgym","root","");
                qry="DELETE FROM equipment WHERE equipmentId =?";
                pstmt= conn.prepareStatement(qry);
                pstmt.setInt(1, equipmentId);
                pstmt.executeUpdate();
                response.sendRedirect("./Equipment.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
    </body>
</html>
