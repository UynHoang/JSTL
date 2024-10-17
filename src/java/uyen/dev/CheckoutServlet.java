            /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.dao.OrderDao;
import uyen.dev.data.dao.OrderItemDao;
import uyen.dev.data.model.Order;
import uyen.dev.data.model.OrderItem;
import uyen.dev.data.model.User;
import uyen.dev.util.StringHelper;

/**
 *
 * @author Thu Uyen
 */
public class CheckoutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        if (user == null) {
            response.sendRedirect("LoginServlet");
        } else {
            processCheckout(request, user);
            response.sendRedirect("CartServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void processCheckout(HttpServletRequest request, User user) {
        OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
        String code = StringHelper.randomString(10);
        Order order = new Order(code, "pending", user.getId());
        orderDao.insert(order);

        order = orderDao.findByCode(code);
        HttpSession session = request.getSession();
        List<OrderItem> cart = (List<OrderItem>) session.getAttribute("cart");

        OrderItemDao orderItemDao = DatabaseDao.getInstance().getOrderItemDao();

        if (cart != null) {
            for (OrderItem orderItem : cart) {
                orderItem.setOrderId(order.getId());
                orderItemDao.insert(orderItem);
            }
        }

        session.setAttribute("message", "Checkout Success");
        session.removeAttribute("cart");
            }

}
