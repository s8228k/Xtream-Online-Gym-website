<%@page import="java.sql.*"%>
<%
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String gender=request.getParameter("gender");
String dob=request.getParameter("dob");
String email=request.getParameter("email");
String username=request.getParameter("username");
     session.setAttribute("username",username);
String password=request.getParameter("password");
String address=request.getParameter("address");
String phone=request.getParameter("phone");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO member(fname, lname,gender,dob,email,username,password,address,phone) VALUES('"+fname+"', '"+lname+"','"+gender+"','"+dob+"','"+email+"','"+username+"','"+password+"','"+address+"','"+phone+"')");
out.println("registered to the system Successfully!");
response.sendRedirect("./home.jsp");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
