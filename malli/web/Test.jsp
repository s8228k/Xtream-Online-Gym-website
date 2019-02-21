
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<%
String username=request.getParameter("username");

String Date=request.getParameter("Date");

String price=request.getParameter("price");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/xgym", "root", "");
Statement st=conn.createStatement();

int i=st.executeUpdate("INSERT INTO payment( username, date, TotalPayment) VALUES('"+username+"', '"+Date+"', '"+price+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="header.jsp"/>
        
        <script type="text/javascript">
            function payValidate(){

            
            var username = document.forms["paymentForm"]["username"].value;
            var number = document.forms["paymentForm"]["Cnumber"].value;

                        if(userValidation(username))
                            if(cardNumber(number, 16))
                                return true;
                            else
                                return false;
                        else
                            return false;
                        
                                        
        }
        
        function isEmpty(elemValue, field){
            if(elemValue =="" || elemValue == null){
                alert("You cannot have " + field + " field empty");
                return true;
            }
            else
                return false;
        }

        
        function userValidation(elemValue){
            if (!isEmpty(elemValue, "username")) {
                return true;
            }
            else {
                alert("Username can't be empty");
                return false;
             }
        }
            
            function cardNumber(elemValue){
            var exp = /^\d{16}$/;
            if(!isEmpty(elemValue, "Card Number")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid Card Number");
                    return false;
                }
            }
            else
                return false;
        }
        
        

        </script>
    </head>
    <body>
        <div class="pay">
            <form name="paymentForm" method="post" action="home.jsp" onsubmit="return payValidate()">
                <table   align="center" class="ppp">
                    <tr><h1 >Let's Pay</h1></tr>
                    <tr>
                        
                        <td>Username: </td>
                        <td><input type="text" name="username" value="<%=username%>"></td>
                        
                    </tr> 
          
                    <tr>
                        <td>Card Number: </td>
                        <td><input type="text" name="Cnumber" ></td>
                    </tr>
        
                    <tr>
                        <td>Expiry Date: </td>
                        <td><input type="date" name="date" required></td>
                    </tr>
                    
                    <tr>
                        <td></td>
                        <td><input type="cancel" value="Cancel" style="width:100px;height: 50px;background-color: black;color: snow">
                        <input type="submit" value="Submit" style="width:100px;height: 50px;background-color: black;color: snow" onclick="return payValidate();" ></td>
                    </tr>
                </table>
            </form>
        </div>

    </body>
</html>