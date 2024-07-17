package com.usermanagement.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.usermanagementNew.model.User;

public class UserDataBase {

	private String jdbcURL="jdbc:oracle:thin:@localhost:1521:xe";

	private String jdbcUserName="hr";
	private String jdbcPassword="hr";
	
	

    protected Connection getConnection() {
		Connection connection = null;
		try {

			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUserName, jdbcPassword);
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		return connection;
	}
    
    public void insertUser(User user) throws SQLException {
		System.out.println("INSERT_USER_SQL");
			try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO user1 (ID,NAME,EMAIL,COUNTRY) VALUES(?,?,?,?)")) {
				preparedStatement.setInt(1, user.getId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getEmail());
			preparedStatement.setString(4, user.getCountry());
			
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
//			printSQLException(e);
		}
	}
    
    public boolean updateUser(User user) throws SQLException {
		boolean rowUpdated;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement("update user1 set name=?,email=?,country=? where id=?");) {
			statement.setString(1, user.getName());
			statement.setString(2, user.getEmail());
			statement.setString(3, user.getCountry());
			statement.setInt(4, user.getId());

			rowUpdated = statement.executeUpdate() > 0;
                  
		}
		return rowUpdated;
	}
    
    
    public List<User> selectAllUsers() {

		
		List<User> users = new ArrayList<>();

		try (Connection connection = getConnection();

				
			PreparedStatement preparedStatement = connection.prepareStatement("select * from user1");) {
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();

			
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String country = rs.getString("country");
				users.add(new User(id, name, email, country));
			}
		} catch (SQLException e) {
			e.printStackTrace();
//			printSQLException(e);
		}
		return users;
	}
    
    public User selectUser(int id) {
		User user = null;
		
		try (Connection connection = getConnection();
				
				PreparedStatement preparedStatement = connection.prepareStatement("select id ,name,email,country from user1 where id=?");) {
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			
			ResultSet rs = preparedStatement.executeQuery();

			
			while (rs.next()) {
				int id1 = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String country = rs.getString("country");
				user = new User(id1, name, email, country);
			}
		} catch (SQLException e) {
			e.printStackTrace();
//			printSQLException(e);
		}
		return user;
	}
    public boolean deleteUser(int id) throws SQLException {
		boolean rowDeleted;
		try (Connection connection = getConnection();
				PreparedStatement statement = connection.prepareStatement("delete from user1 where id=?");) {
			statement.setInt(1, id);
			rowDeleted = statement.executeUpdate() > 0;
		}
		return rowDeleted;
	}

    

}
