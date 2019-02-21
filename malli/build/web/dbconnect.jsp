<%@page import ="java.sql.*" %>

<%!
    Connection conn;
 %>
 
 
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym","root","");
   
    } catch(Exception e){
               System.out.println(e.getMessage());
%>
