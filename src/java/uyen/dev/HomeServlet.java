/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.dao.ProductDao;
import uyen.dev.data.model.Product;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import uyen.dev.data.dao.CategoryDao;
import uyen.dev.data.model.Category;
import uyen.dev.util.Constants;

/**
 *
 * @author Thu Uyen
 */
public class HomeServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> hotProductList = productDao.hot(Constants.RELATER_LIMIT);
        List<Product> newsProductList = productDao.news(Constants.RELATER_LIMIT);
        
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();
        
        request.setAttribute("hotProductList", hotProductList);
        request.setAttribute("newsProductList", newsProductList);
        request.setAttribute("categoryList", categoryList);
        
        request.getRequestDispatcher("home.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

}
