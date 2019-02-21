package Xtream_Gym;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class logout{
    HttpServletRequest request;
    HttpServletResponse response;
    
    public void logout() throws ServletException, IOException{
        HttpSession session = request.getSession();
        session.invalidate();
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.html");
        dispatcher.forward(request, response);                      
    }
}
