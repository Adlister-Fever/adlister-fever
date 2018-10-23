package com.codeup.adlister.util;
import java.util.Random;

public class Randomizer {

    public static int getRandom(){
        Random rand = new Random();
        int num = rand.nextInt(14);
        return num;
    }
}
