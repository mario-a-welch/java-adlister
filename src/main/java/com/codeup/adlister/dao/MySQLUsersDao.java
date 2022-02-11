package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;

import java.sql.*;

public class MySQLUsersDao implements Users{

    private Connection connection = null;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        PreparedStatement stmt = null;
        User searchedUser = new User();

        try{
            String sql = "SELECT * FROM users Where username = ?";
            stmt = connection.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.executeQuery();
            ResultSet rs = stmt.getResultSet();

            if(rs.next()){
//                searchedUser.setId(rs.getLong("id"));
                searchedUser.setUsername(rs.getString("username"));
                searchedUser.setEmail(rs.getString("email"));
                searchedUser.setPassword(rs.getString("password"));
            };
            return searchedUser;
        } catch (SQLException e){
            throw new RuntimeException("Error creating a new username ",e);
        }

    }

    @Override
    public Long insert(User user) {
        try{
            String sql = "INSERT INTO users(username, email, password) VALUES (?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e){
            throw new RuntimeException("Error inserting new user ", e);
        }
    }
}
