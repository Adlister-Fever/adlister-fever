package com.codeup.adlister.models;

public class UserExtras {
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
    private String picture_medium;
    private String picture_thumbnail;
    private String registered_date;
    private String registered_age;

    public UserExtras(String gender, String dob_date, String dob_age, String street, String city, String state, String zip_code, String phone, String cell, String picture_large, String picture_medium, String picture_thumbnail, String registered_date, String registered_age) {
        this.gender = gender;
        this.dob_date = dob_date;
        this.dob_age = dob_age;
        this.street = street;
        this.city = city;
        this.state = state;
        this.zip_code = zip_code;
        this.phone = phone;
        this.cell = cell;
        this.picture_large = picture_large;
        this.picture_medium = picture_medium;
        this.picture_thumbnail = picture_thumbnail;
        this.registered_date = registered_date;
        this.registered_age = registered_age;
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

    public String getPicture_medium() {
        return picture_medium;
    }

    public void setPicture_medium(String picture_medium) {
        this.picture_medium = picture_medium;
    }

    public String getPicture_thumbnail() {
        return picture_thumbnail;
    }

    public void setPicture_thumbnail(String picture_thumbnail) {
        this.picture_thumbnail = picture_thumbnail;
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
