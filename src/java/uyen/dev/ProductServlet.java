/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package uyen.dev;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import uyen.dev.data.dao.CategoryDao;
import uyen.dev.data.dao.DatabaseDao;
import uyen.dev.data.dao.ProductDao;
import uyen.dev.data.model.Category;
import uyen.dev.data.model.Product;
import uyen.dev.util.Constants;


/**
 *
 * @author Thu Uyen
 */
public class ProductServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int productId = Integer.parseInt(request.getParameter("productId"));
       ProductDao productDao = DatabaseDao.getInstance().getProductDao();
       Product product = productDao.find(productId);
       List<Product> newProductList = productDao.hot(Constants.RELATER_LIMIT);
        
       request.setAttribute("newsProductList", newProductList);
       request.setAttribute("product", product);
       request.getRequestDispatcher("product.jsp").include(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

}
