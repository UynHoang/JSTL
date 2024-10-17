/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uyen.dev;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import uyen.dev.data.dao.Database;
import uyen.dev.data.dao.DatabaseDao;
import java.util.List;
import uyen.dev.data.dao.CategoryDao;
import uyen.dev.data.model.Category;
/**
 *
 * @author Thu Uyen
 */
public class BaseServlet extends HttpServlet{

    @Override
    public void init() throws ServletException {
              DatabaseDao.init(new Database());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();
        
        req.setAttribute("categoryList", categoryList);
    }
    
   
}
