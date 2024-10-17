package uyen.dev.data.impl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import uyen.dev.data.dao.CategoryDao;
import uyen.dev.data.driver.MySQLDriver;
import uyen.dev.data.model.Category;

public class CategoryImpl implements CategoryDao{
	Connection con = MySQLDriver.getInstance().getConnection();

	@Override
	public boolean insert(Category category) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO CATEGORIES VALUES(NULL, ?, ?)";
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, category.getName());
			stmt.setString(2, category.getDescription());
			stmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		return true;
	}

	@Override
	public boolean update(Category category) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean delete(int categoryId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Category find(int categoryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Category> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

}
