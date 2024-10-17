/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.dao.ProductDao;
import uyen.dev.data.model.Product;

/**
 *
 * @author Thu Uyen
 */
public class DetailServlet extends BaseServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        super.doGet(request, response);
        int productId = Integer.parseInt(request.getParameter("productId"));
        
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        Product product = productDao.find(productId);
        
        List<Product> relatedProductList = productDao.relatedProductList(product);
        
        productDao.updateView(product);
        request.setAttribute("product", product);
        request.setAttribute("relatedProductList", relatedProductList);
        request.getRequestDispatcher("product-detail.jsp").include(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
