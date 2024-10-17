package uyen.dev.data.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import uyen.dev.data.dao.OrderDao;
import uyen.dev.data.model.Order;
import uyen.dev.data.driver.MySQLDriver;
import java.util.logging.Logger;
import java.util.logging.Level;

public class OrderImpl implements OrderDao {
	Connection con = MySQLDriver.getInstance().getConnection();

    @Override
    public void insert(Order order) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Order findByCode(String code) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
