<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%

    String username=(String)session.getAttribute("username");
    String bmi=request.getParameter("bmi");
    String description=request.getParameter("description");
    
//    out.println(username);
//    out.println(bmi);
//    out.println(description);

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://127.0.0.1/xgym", "root", "");
        Statement st=conn.createStatement();
        
        int i=st.executeUpdate("INSERT INTO `bmi` (`username`, `date`, `bmi`, `des`) VALUES ('"+username+"', CURRENT_TIMESTAMP, '"+bmi+"', '"+description+"')");
        response.sendRedirect("bmiHistory.jsp");
    }
    catch(Exception e)
    {
        System.out.print(e);
        e.printStackTrace();
    }
%>