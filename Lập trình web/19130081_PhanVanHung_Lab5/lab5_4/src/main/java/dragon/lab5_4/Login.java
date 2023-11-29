package dragon.lab5_4;

import dragon.lab5_4.services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Login", value = "/doLogin")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");

        if (UserServices.getInstance().checkLogin(username,email)) {
            response.sendRedirect("/lab5_4/index.jsp");
        }
        else {
            request.setAttribute("error" , "Username or email is incorrect!");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
