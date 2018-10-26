package com.codeup.adlister.dao;

import com.codeup.adlister.models.Message;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserMailDao implements UserMail {
    private Connection connection;

    @Override
    public List<Message> send(Message message){
        String insertQuery = "INSERT INTO messages(text, user_id) VALUES (?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(insertQuery, Statement.RETURN_GENERATED_KEYS);
                    stmt.setString(1, message.getText()),
                    stmt.setLong(2, message.getUser_id();
            stmt.executeUpdate();
            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    @Override
    public List<Message> userAll(long id){
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

    private List<Message> extractUserMail(ResultSet rs) throws SQLException {
        List<Message> mail = new ArrayList<>();
        while (rs.next()) {
            mail.add(extractMail(rs));
        }
        return mail;
    }

    private Message extractMail(ResultSet rs) throws SQLException {
        return new Message(
                rs.getLong("user_id"),
                rs.getString("text")
        );
    }
}
