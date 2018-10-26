package com.codeup.adlister.models;

public class Message {
    private long id;
    private long user_id;
    private String text;
    private String title;

    public Message(long id, long user_id, String text) {
        this.id = id;
        this.user_id = user_id;
        this.text = text;
    }

    public Message(long user_id, String text) {
        this.user_id = user_id;
        this.text = text;
    }

    public Message(long user_id, String text, String title) {
        this.user_id = user_id;
        this.text = text;
        this.title = title;
    }

    public Message() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getUser_id() {
        return user_id;
    }

    public void setUser_id(long user_id) {
        this.user_id = user_id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
