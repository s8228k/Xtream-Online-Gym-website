package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");

String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "xgym";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;



      out.write('\n');
      out.write('\n');
String username=(String)session.getAttribute("username");
session.setAttribute("username", username);
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<head>\n");
      out.write("    <title>Shopping cart</title>\n");
      out.write("    <link href=\"css/Activity_Plan_Sporats.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("    </head> \n");
      out.write("    <body>\n");
      out.write("        <!-- navigation bar -->\n");
      out.write("     <div>\n");
      out.write("      <nav class=\"nav\">\n");
      out.write("        <ul>\n");
      out.write("          <li><img  src=\"pics/xgym.png\" alt=\"logo\" height=\"120px\" width=\"200px\"></li>\n");
      out.write("          <li><a class=\"a\" href=\"home.jsp\"><b>Home</a></li>\n");
      out.write("          <li class=\"dropdown\"><a class=\"a\" href=\"aboutTheGym.jsp\">About the GYM</b></a>\n");
      out.write("                                  <div class=\"dropdown-content\">\n");
      out.write("                                    <a href=\"history.jsp\">History of the gym</a>\n");
      out.write("                                    <a href=\"equipments.jsp\">Equipments</a>\n");
      out.write("                                    <a  href=\"rules.jsp\">Rules and regulations</a>\n");
      out.write("                                    <a href=\"terms.jsp\">Terms and Conditions</a>\n");
      out.write("                                  </div>\n");
      out.write("          </li>\n");
      out.write("          <li><a class=\"a\" href=\"sport.jsp\"><b>Sports</a></li>\n");
      out.write("          <li><a class=\"a\" href=\"fitness.jsp\">Fitness</span></a></li>\n");
      out.write("          <li><a class=\"a\" href=\"schedule.jsp\">Schedule</a></li>\n");
      out.write("          <li><a href=\"Cart.jsp\"><img  src=\"pics/cart.png\" alt=\"logo\" height=\"50px\" width=\"50px\"></a></li>\n");
      out.write("          <li  class=\"dropdown\"><a class=\"a\" href=\"ContactUs.jsp\">Contact Us</b></a>\n");
      out.write("                                  <div class=\"dropdown-content\">\n");
      out.write("                                    <a href=\"feedback.jsp\">give feedback</a>\n");
      out.write("                                    <a href=\"contact.jsp\">Contact details</a>\n");
      out.write("                                  </div>\n");
      out.write("          </li>\n");
      out.write("        </ul>\n");
      out.write("      \n");
      out.write("        \n");
      out.write("   <!-- part with logo and login-->\n");
      out.write("         <table class=\"part01\">\n");
      out.write("            <tr>\n");
      out.write("                <td><a href=\"userProfile.jsp\"><img src=\"pics/user.png\" alt=\"logo\" height=\"80px\" width=\"80px\"></a></td>\n");
      out.write("                <td>\n");
      out.write("                    \n");
      out.write("                    <h3>welcome ");
      out.print(username);
      out.write("</h3>\n");
      out.write("                    <h3><a value=\"Logout\" href=\"logout_process.jsp\" name=\"logout\" id=\"logout\">Logout</a>\n");
      out.write("                        \n");
      out.write("                    </h3>\n");
      out.write("                </td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write(" \n");
      out.write("        </nav>\n");
      out.write("    </div>\n");
      out.write("<div class=\"pic\" >\n");
      out.write("    \n");
      out.write("    <table border=\"2\" align=\"center\">\n");
      out.write("        <tr><h1 >Shopping Cart</h1></tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>ID</td>   \n");
      out.write("            <td>schedule Name</td>\n");
      out.write("            <td>price</td>\n");
      out.write("        </tr>  \n");
      out.write("        ");

try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="(select * from schedule where scheduleName='Activities' or scheduleName='Yoga' or scheduleName='Aerobics' or scheduleName='Badminton' or scheduleName='Tennis' )";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
    
    
      out.write("\n");
      out.write("        <tr>\n");
      out.write("            <td>");
      out.print(resultSet.getString("scheduleId") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(resultSet.getString("scheduleName") );
      out.write("</td>\n");
      out.write("            <td>");
      out.print(resultSet.getString("price") );
      out.write("</td>\n");
      out.write("            <td>\n");
      out.write("            <form action=\"CartInsert.jsp\" method=\"POST\">\n");
      out.write("                <input name=\"scheduleId\" type=\"text\" value=\"");
      out.print(resultSet.getString("scheduleId") );
      out.write("\" hidden>\n");
      out.write("                <input name=\"scheduleName\" type=\"text\" value=\"");
      out.print(resultSet.getString("scheduleName"));
      out.write("\" hidden>\n");
      out.write("                <input name=\"price\" type=\"password\" value=\"");
      out.print(resultSet.getString("price") );
      out.write("\" hidden>\n");
      out.write("                <button style=\"width:100px;height: 50px;background-color: black;color: snow\" type=\"submit\" name>ADD</button>\n");
      out.write("            </form>\n");
      out.write("            </td>\n");
      out.write("            <td>\n");
      out.write("            <form action=\"payment_1.jsp\" method=\"POST\">\n");
      out.write("               <input name=\"scheduleId\" type=\"text\" value=\"");
      out.print(resultSet.getString("scheduleId") );
      out.write("\" hidden>\n");
      out.write("                <input name=\"scheduleName\" type=\"text\" value=\"");
      out.print(resultSet.getString("scheduleName"));
      out.write("\" hidden>\n");
      out.write("                <input name=\"price\" type=\"password\" value=\"");
      out.print(resultSet.getString("price") );
      out.write("\" hidden>\n");
      out.write("\n");
      out.write("                <button style=\"width:100px;height: 50px;background-color: black;color: snow\" type=\"submit\" name=\"add\">Bill</button>\n");
      out.write("            </form>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");

}


connection.close();
} catch (Exception e) {
        e.printStackTrace();
}

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </table>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("<div class=\"insert\" align=\"center\">\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <td><button style=\"width:100px;height: 50px;background-color: black;color: snow\" type=\"submit\" name=\"check\" onclick=\"location.href='CartInsert.jsp'\">Check Out</button></td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("</div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
