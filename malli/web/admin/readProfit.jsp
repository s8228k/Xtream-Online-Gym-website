
    
<%@page import="Profit.*" %>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Profit</title>
        <link type="text/css" href="layout.css" rel="stylesheet"><!--layout css-->
        <jsp:include page="header.jsp"/>
    </head>
    
    <body>
<% Class.forName("com.mysql.jdbc.Driver");
%>

<%String url= "jdbc:mysql://localhost/";

    String username="root";
    String password="";
    String database="xgym";
    
    Connection connection=null;
    Statement statement=null;
    ResultSet resultSet=null;
    
    connection=DriverManager.getConnection(url+database,username,password);
    statement=connection.createStatement();
    
    
    
    String sql="SELECT SUM(Cost)FROM Equipment";
    ResultSet rs=statement.executeQuery(sql);
    String CountRow="";
    
    while(rs.next()){
        CountRow=rs.getString(1);
        }
    int ExpenseSum=Integer.parseInt(CountRow);  //ExpenseSum is the variable used to store the sum of the column COST
                                                //As CountRow is a string we need to convert it to an integer to pass it through 
                                                //parameters


    
    String sql1="SELECT SUM(TotalPayment)FROM payment";
    ResultSet rs1=statement.executeQuery(sql1);
    String CountRow1="";
                                             //PaymentSum is the variable used to store the sum of the payment 
                                           //column details
    while(rs1.next()){
        CountRow1=rs1.getString(1);       //As CountRow1 is a string we need to convert it to an integer to pass it through 
                                        //parameters

}
    int PaymentSum=Integer.parseInt(CountRow1); 
 
    
//your result is stored here now, totalpayment variable, use that to display the output
    float totalpayment = profit_new.CalculateProfit(PaymentSum,ExpenseSum);
    %>                                          
            

    <!-- since you can't display random outputs inside the page, assign the output to a variable and then use the variable -->
    
    <p hidden><%= profit_new.CalculateProfit(PaymentSum,ExpenseSum)%></p>
    
    
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
                    <% username=(String)session.getAttribute("username");%>
                    <h3>welcome  <%=username%></h3>
                  <h3><a href="index.html">Logout</a></h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>         
    
    
    <br><br><br><br>
     <table class="table" align="center"  style="background-color: whitesmoke; border:1px solid black" >
                    <tr>
                        <td></td>
                    </tr>
                    
                     <tr>
                        <td style="font-size:30px;">Income:</td>
                        <td class="row"><input type="text" value="<% out.print(PaymentSum); %>"  style="font-size:30px;"></td>
                    </tr>
                    
                     <tr>
                        <td style="font-size:30px;">Expenditure on Machine:</td>
                        <td class="row"><input type="text" value="<% out.print(ExpenseSum); %>" name="username" style="font-size:30px;"></td>
                    </tr>
                    
                    <tr>
                        <td style="font-size:40px;">Net Profit:</td>
                        <td class="row"><input type="text" value="<% out.print(totalpayment); %>" style="font-size:30px;"></td>
                    </tr>
                     <tr>
                         <td></td>
                    </tr>
     </table>
     <br><br><br><br>

    </body>
 </html>
        
        
        
      
        