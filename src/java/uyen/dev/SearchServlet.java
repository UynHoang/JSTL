/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
//import java.util.ArrayList;
import java.util.List;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.dao.ProductDao;
import uyen.dev.data.model.Product;

/**
 *
 * @author Thu Uyen
 */
public class SearchServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        super.doGet(request, response);
        String keyword = request.getParameter("keyword");
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.findByName(keyword);
//        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
//        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        // Tránh trường hợp rỗng-- báo lỗi 
//        List<Product> productList = new ArrayList<Product>();
//        if (categoryId == 0) {
//            productList = productDao.findByName(key);
//        } else {
//            productList = productDao.findByCategoryOfName(categoryId, key);
//        }
        request.setAttribute("keyword", keyword);
        request.setAttribute("productList", productList);
        request.getRequestDispatcher("search.jsp").include(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}