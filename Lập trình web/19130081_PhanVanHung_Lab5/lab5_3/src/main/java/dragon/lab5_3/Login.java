package dragon.lab5_3;

import dragon.lab5_3.services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "dragon.lab5_3.Login", value = "/doLogin")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

//    response.getWriter().println("User Name: "+ username + "- Password: " + password);
        if (UserServices.getInstance().checkLogin(username,password)) {
            response.sendRedirect("/lab5_3/index.jsp");
        }
        else {
            request.setAttribute("error" , "Username or password is incorrect!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
