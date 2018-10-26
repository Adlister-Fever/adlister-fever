package com.codeup.adlister.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserMailDao implements UserMail {
    private Connection connection;

    @Override
    public Long send(UserMail mail) {
        return null;
    }

    @Override
    public String userAll(long id) {
        PreparedStatement stmt;
        try {
            stmt = connection.prepareStatement("SELECT * FROM messages WHERE user_id = ?");
            stmt.setLong(1, id);
            ResultSet rs = stmt.executeQuery();
            return extractUserMail(rs);
        } catch (SQLException e) {
            throw new RuntimeException("Error retrieving messages.", e);
        }
    }

    private String extractUserMail(ResultSet rs) throws SQLException {
        List<String> mail = new ArrayList<>();
        while (rs.next()) {
            mail.add(extractMail(rs));
        }
        return String.valueOf(mail);
    }

    private String extractMail(ResultSet rs) throws SQLException {
                return rs.getString("text");
    }
}

