package com.codeup.adlister.dao;

public interface UserMail {
    // send message to database by recipient ID
    Long send(UserMail mail);

    String userAll(long id);
    //find messages to user by their ID
}
