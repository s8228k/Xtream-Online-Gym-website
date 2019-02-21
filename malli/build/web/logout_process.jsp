<%@page import="java.sql.*"%>
<%
    session.removeAttribute("username");
    session.invalidate();
    response.sendRedirect("./login.jsp");            
%>
