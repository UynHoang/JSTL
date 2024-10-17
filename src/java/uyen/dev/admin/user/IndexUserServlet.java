/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev.admin.user;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import uyen.dev.admin.BaseAdminServlet;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.model.User;

/**
 *
 * @author Thu Uyen
 */
public class IndexUserServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<User> userList = DatabaseDao.getInstance().getUserDao().findAll();
        request.setAttribute("userList", userList);
        request.getRequestDispatcher("admin/user/index.jsp").include(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
