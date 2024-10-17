/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.dao.UserDao;
import uyen.dev.data.model.User;


/**
 *
 * @author Thu Uyen
 */
public class LoginServlet extends BaseServlet {
    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        HttpSession session = request.getSession();
    if (session.getAttribute("user") != null) {
        response.sendRedirect("HomeServlet");
    } else {
        request.getRequestDispatcher("login.jsp").include(request, response);
    }
}
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        UserDao userDAO = DatabaseDao.getInstance().getUserDao();
        User user = userDAO.find(email, password);

        if (user == null) {
            session.setAttribute("error", "Login Failed!");
            response.sendRedirect("LoginServlet");
        } else {
            session.setAttribute("user", user);
            if (user.getRole().equals("admin")) {
                response.sendRedirect("DashboardServlet");
            } else {
                response.sendRedirect("HomeServlet");
            }
        }
    }
}
