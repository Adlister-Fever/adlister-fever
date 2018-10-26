package com.codeup.adlister.dao;

import com.codeup.adlister.models.Message;

import java.util.List;

public interface UserMail {
    // send message to database by recipient ID
    long send(Message message);

    List<Message> userAll(long id);
    //find messages to user by their ID
}
