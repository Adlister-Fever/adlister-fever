package com.codeup.adlister.models;

public class Ad {
    private long id;
    private long userId;
    private String title;
    private String description;
    private int value;
    private String image;

    public Ad(long id, long userId, String title, String description, int value, String image) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.value = value;
        this.image = image;
    }

    public Ad(long userId, String title, String description) {
        this.userId = userId;
        this.title = title;
        this.description = description;
    }

    public long getId() {

        return id;
    }

    public void setId(long id) {

        this.id = id;
    }

    public long getUserId() {

        return userId;
    }

    public void setUserId(long userId) {

        this.userId = userId;
    }

    public String getTitle() {

        return title;
    }

    public void setTitle(String title) {

        this.title = title;
    }

    public String getDescription() {

        return description;
    }

    public void setDescription(String description) {

        this.description = description;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
