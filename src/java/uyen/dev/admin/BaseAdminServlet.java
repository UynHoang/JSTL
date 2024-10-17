/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package uyen.dev.admin;

import uyen.dev.data.dao.Database;
import uyen.dev.data.dao.DatabaseDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.ServletConfig;

/**
 *
 * @author Thu Uyen
 */
public class BaseAdminServlet extends HttpServlet{

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/OverriddenMethodBody
        DatabaseDao.init(new Database());
    }
    
}
