<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%
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
%>
<!DOCTYPE html>
<head>
    <title>Xtream Gym</title>
    <link href="css/Activity_Plan_Sporats.css" rel="stylesheet" type="text/css"/>
    <jsp:include page="header.jsp"/>
    </head> 
    <body>
        <!-- navigation bar -->
      <div>
      <nav class="nav">
        <ul>
          <li><img  src="pics/xgym.png" alt="logo" height="120px" width="200px"></li>
          <li><a class="a" href="home.jsp"><b>Home</a></li>
          <li class="dropdown"><a class="a" href="aboutTheGym.jsp">About the GYM</b></a>
                                  <div class="dropdown-content">
                                    <a href="history.jsp">History of the gym</a>
                                    <a href="equipments.jsp">Equipments</a>
                                    <a  href="rules.jsp">Rules and regulations</a>
                                    <a href="terms.jsp">Terms and Conditions</a>
                                  </div>
          </li>
          <li><a class="a" href="sport.jsp"><b>Sports</a></li>
          <li><a class="a" href="fitness.jsp">Fitness</span></a></li>
          <li><a class="a" href="schedule.jsp">Schedule</a></li>
           <li><a href="Cart.jsp"><img  src="pics/cart.png" alt="logo" height="50px" width="50px"></a></li>
          <li  class="dropdown"><a class="a" href="ContactUs.jsp">Contact Us</b></a>
                                  <div class="dropdown-content">
                                    <a href="feedback.jsp">give feedback</a>
                                    <a href="contact.jsp">Contact details</a>
                                  </div>
          </li>
        </ul>
      
        
   <!-- part with logo and login-->
         <table class="part01">
            <tr>
                <td><img src="pics/user.png" alt="logo" height="80px" width="80px"></td>
                <td><%  String username=(String)session.getAttribute("username");%>
                    <h3>welcome  <%=username%></h3>
                    
                    <h3><a value="Logout" onclick="location.href='index.html'" name="logout" id="logout">Logout</a>
                        <%/*  try{
                                //if (request.getParameter("logout") != null)
                                    session.setAttribute("user",null);

                                if (session.getAttribute("username") != null){                                                               
                                    logout l = new logout();
                                    l.logout();                               
                                }
                            }catch(Exception e){
                                System.out.println(e.getMessage());
                            }
                        */
                        %>
                    </h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>  
    <div>
        <h3>The Club</h3>
        <p>All reference to the &lsquo;Club&rsquo; refers to Goldstone Gym &amp; Fitness, its staff, employees, sub contractors, agents and representatives. Facilities refer to the gymnasium, showers, saunas, changing rooms and fitness studios where applicable.</p>

        <p>Members of the club are bound, as a condition&nbsp;of membership, to comply with the rules set out below. This is to ensure that&nbsp;the facilities are properly and safely used and that all members have full advantage of them without interfering with the enjoyment of others.</p>
    </div>
    
    <div>
      <h3>Membership</h3>
      <p>All memberships are Non-Transferable &amp; Non-Refundable.</p>

      <p>All members must be over 16 to avail of facilities and services provided at Goldstone Gym &amp; Fitness.</p>

      <p>Goldstone Gym &amp; Fitness is a private members club and the management reserve the right to refuse membership to any individual without cause. Refrences may be required on a case by case basis and Garda checks will also be run on a case by case basis. Failure to pass a Garda check will result in membership termination and the refusal of entry again.</p>

      <p>Membership may be renewed on payment of the prevailing fee and in accordance with the terms and conditions then in force.</p>

      <p>By joining the club, members automatically accept and agree to be bound by these conditions of membership.</p>

      <p>The club may withdraw use of all or part of the club for the purpose of undertaking maintenance work or any other work considered necessary for a maximum period of seven working days.</p>

        <p>All members must scan their finger for access to the building on each visit to the club.</p>

        <p>Entry will only be permitted to those with a valid membership, in date and in credit. If you have an amount due to be paid on your account you won&rsquo;t be able to enter the building.</p>

        <p>As a member you agree to comply with the rules of the club with regards to use of the facilities, opening hours and your conduct. The club may make reasonable changes to these rules, from time to time, provided the club gives advance notice of these changes.</p>

        <p>You may, at&nbsp;your own discretion and expense, obtain personal insurance for loss, injury or damage that you might sustain arising from use of the club. You exercise at your own discretion and accept any injury or illness brought on by exercise is your own responsibility.</p>

        <p>Members wishing to report on accidents, incidents, or problems with services at the club should contact the Duty Manager (simply ask at reception desk upstairs) or can email join@goldstonefitness.ie in confidence.</p>

        <p>In the event of a breach of membership rules and regulations the Club reserves the right of admission and may reserve the right to require any member or guest to leave the premises. Any member found in breach of rules or commiting an illegal act, including theft, will be asked to permanently leave the club and be barred from ever entering the club again.&nbsp;</p>
    </div>
    
    <div >
      <h3>Bank Card Direct Debit Payments</h3>
      <p>On selecting the Pay Monthly membership option, members will be required to pay the associated registration fee and the 1st month membership fee in advance. Members are required to agree to the normal terms and conditions of payment.</p>

        <p>This is a recurring monthly charge. Membership Fees will be&nbsp;debited from&nbsp;the members account, using their given bank debit/credit card, on or around their join date each month, for the minimum 1 month term from the term start date. Members can cancel their agreement and stop payments at any time, by simply logging in to their Member Area online and pressing the "Cancel" button.&nbsp;</p>

        <p>Members are required to keep their account in funds to meet these payments.&nbsp; In the event of the failure to pay the monthly membership fee, missed payments will be re-submitted for payment by Goldstone Fitness Limited. Goldstone Fitness Limited reserves the right to cancel membership if payment is not received. Access to the facility will be denied until said payment is received and if payment is not received, and cancellation occurs, the registration fee becomes applicable again on re-joining.</p>

        <p>These arrears of fees must be paid by Credit or Debit card online using the Member Area.</p>

        <p>Failure to meet direct debit fee &ndash; In the&nbsp;event of the failure to pay the monthly direct debit fee you will firstly be notified that your membership has been temporarily stopped until the balance is paid.</p>
    </div>
    
    <div >
      <h3>Lockers</h3>
      <p>Lockers are provided for the use of members and their guests.</p>

        <p>Lockers may not be used overnight. Members who do so are liable to find that the lockers are opened and locker contents removed. Removal of such items is strictly at the&nbsp;members own risk.</p>

        <p>Padlocks may be purchased at reception.</p>

        <p>In the interest of safety and security please use the lockers provided. The club will have no liability for goods taken&nbsp;from the changing rooms or lockers.</p>
    </div>
    
    <div>
      <h3>Opening Hours</h3>
      <p>The club reserves the right to vary the opening hours as considered necessary for the proper operation of the centre.</p>
    </div>
    
    <div >
      <h3>Guests</h3>
      <p>Guests of members are welcome to use the facilities &amp; services of the club, by purchasing a 1 day gym pass online. Guest Day Passes can also be purchased using cash from the vending machine at reception for a fee of &euro;10. There is no limit to the number of day passes a person can purchase/use.</p>
    </div>
    
    <div>
      <h3>Safety & Hygiene</h3>
      <p>Throughout the course of your membership with the club, regular health and medical screening should be sought from your General Practitioner.</p>

        <p>Before using the fitness facilities, you should go through a basic introductory session with one of the fitness staff, followed by further sessions (as necessary) to ensure that you understand the equipment and adopt a safe training regime that suits your needs. The booking of this is your responsibility.</p>

        <p>It is necessary that all members and guests of the club wear appropriate, clean attire and foot wear when using the studio and gym.</p>

        <p>If you feel&nbsp;dizzy, faint, unwell or feel any unusual pain then you must stop exercising&nbsp;and inform a member of staff immediately.</p>

        <p>Members cannot train in the club without a hand towel. In the interest of hygiene members must wipe down each piece of equipment after use.</p>

        <p>Studio users are advised to inform the instructor of any injuries, pains or concerns prior to the class starting.</p>
    </div>
    </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
