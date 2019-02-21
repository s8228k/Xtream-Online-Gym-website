<%@page import ="java.util.*" %>
<%@page import="java.sql.*"%>
<%
String scheduleId=request.getParameter("scheduleId");
String scheduleName=request.getParameter("scheduleName");
String username=request.getParameter("username");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
Statement st=conn.createStatement();
 response.sendRedirect("./schedule.jsp");
int i=st.executeUpdate("INSERT INTO scheduleactivity(scheduleId,scheduleName,username)values('"+scheduleId+"', '"+scheduleName+"', '"+username+"')");


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
