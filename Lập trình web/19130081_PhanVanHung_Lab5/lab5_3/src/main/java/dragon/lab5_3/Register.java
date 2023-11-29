package dragon.lab5_3;

import dragon.lab5_3.services.UserServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Register", value = "/doRegister")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm = request.getParameter("confirm");
        String phone = request.getParameter("phone");
        if(UserServices.getInstance().register(username,password,confirm,phone)) {
            response.sendRedirect("/lab5_3/login.jsp");
        }
        else {
            request.setAttribute("error" , "Username exist!");
            request.getRequestDispatcher("register.jsp").forward(request,response);
        }
    }
}
