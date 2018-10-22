package com.codeup.adlister.util;

public class Caps {
    public static String formatName(String name) {
        String upper = name.toUpperCase();
        String lower = name.toLowerCase();
        int l = lower.length();
        String result = upper.substring(0,1) + lower.substring(1,l);
        return result;
    }
}
