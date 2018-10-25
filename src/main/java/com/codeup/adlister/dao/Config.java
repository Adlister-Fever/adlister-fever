package com.codeup.adlister.dao;

public class Config {

    public Config() {
    }

    public String getUrl() {
        return "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    }


    public String getUser() {

        return "user1";

    }


    public String getPassword() {


        return "111";

    }


}
