package com.codeup.adlister.dao;

import com.mysql.cj.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Search {

    private String name, cat, ad, email;
    Connection connection;

    public Search(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
//    public String getPostByName(String str) {
//
//        String search = "SELECT title FROM ads WHERE user_id IN (SELECT id FROM user WHERE name = ?";
//        try {
//            PreparedStatement stmt = connection.prepareStatement(search);
//            stmt.setString(1, str);
//            return (stmt.executeQuery());
//
//        } catch (SQLException e) {
//
//            e.printStackTrace();
//        }
//
//
//        return null;
//    }
}
