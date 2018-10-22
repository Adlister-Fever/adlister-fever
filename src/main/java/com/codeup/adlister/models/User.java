package com.codeup.adlister.models;

import com.codeup.adlister.util.Password;

public class User {
    private long id;
    private String username;
    private String email;
    private String password;
    private String gender;
    private String dob_date;
    private String dob_age;
    private String street;
    private String city;
    private String state;
    private String zip_code;
    private String phone;
    private String cell;
    private String picture_large;
    private String registered_date;
    private String registered_age;

    public User() {}

    public User(String username, String email, String password) {
        this.username = username;
        this.email = email;
        this.password = password;
        
    }


    public User(long id, String username, String email, String password, String gender, String dob_date, String street, String city, String state, String zip_code, String phone, String cell, String picture_large, String registered_date, String registered_age) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.dob_date = dob_date;
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip_code = zip_code;
        this.phone = phone;
        this.cell = cell;
        this.picture_large = picture_large;
        this.registered_date = registered_date;
        this.registered_age = registered_age;

    }

    public long getId() {

        return id;
    }

    public void setId(long id) {

        this.id = id;
    }

    public String getUsername() {

        return username;
    }

    public void setUsername(String username) {

        this.username = username;
    }

    public String getEmail() {

        return email;
    }

    public void setEmail(String email) {

        this.email = email;
    }

    public String getPassword() {

        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob_date() {
        return dob_date;
    }

    public void setDob_date(String dob_date) {
        this.dob_date = dob_date;
    }

    public String getDob_age() {
        return dob_age;
    }

    public void setDob_age(String dob_age) {
        this.dob_age = dob_age;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getZip_code() {
        return zip_code;
    }

    public void setZip_code(String zip_code) {
        this.zip_code = zip_code;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCell() {
        return cell;
    }

    public void setCell(String cell) {
        this.cell = cell;
    }

    public String getPicture_large() {
        return picture_large;
    }

    public void setPicture_large(String picture_large) {
        this.picture_large = picture_large;
    }

    public String getRegistered_date() {
        return registered_date;
    }

    public void setRegistered_date(String registered_date) {
        this.registered_date = registered_date;
    }

    public String getRegistered_age() {
        return registered_age;
    }

    public void setRegistered_age(String registered_age) {
        this.registered_age = registered_age;
    }
}
