package com.codeup.adlister.models;

public class Config {
    private String url;
    private String user;
    private String password;

    public Config() {
    }

    public String getUrl() {
        return "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUser() {
        return "adlister_admin";
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return "sqlpass";
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
