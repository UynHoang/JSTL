package uyen.dev.data.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;
import uyen.dev.data.dao.UserDao;
import uyen.dev.data.driver.MySQLDriver;
import uyen.dev.data.model.User;

public class UserImpl implements UserDao {
    Connection con = MySQLDriver.getInstance().getConnection();
    @Override
    public boolean insert(User user) {
    String sql = "INSERT INTO USERS(ID, EMAIL, PASSWORD, ROLE) VALUES(null, ?, ?, ?)";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
	}


    @Override
    public boolean update(User user) {
        String sql = "UPDATE USERS SET email = ? ,password = ?, role = ? WHERE id = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getEmail());
            stmt.setString(2, user.getPassword());
            stmt.setString(3, user.getRole());
            stmt.setInt(4, user.getId());
            return stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return false;
	}
    

    @Override
    public boolean delete(int userId) {
        String sql = "DELETE FROM USERS WHERE id = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, userId);
            return stmt.execute();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return false;
}


    @Override
    public User find(int userId) {
        String sql = "SELECT * FROM USERS WHERE ID = ?";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, userId);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                return new User(userId, email, password, role);
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return null;
	
    }

    @Override
    public List<User> findAll() {
     List<User> users = new ArrayList<>();
        String sql = "SELECT * FROM Users WHERE ID > ? ";
        try {
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setInt(1, 0);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String email = rs.getString("email");
                String password = rs.getString("password");
                String role = rs.getString("role");
                users.add(new User(id, email, password, role));
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return users;
	}  
    
    

    @Override
    public User find(String email, String password) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public User find(String email) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
