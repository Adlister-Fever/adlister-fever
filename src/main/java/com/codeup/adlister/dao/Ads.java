package com.codeup.adlister.dao;

import com.codeup.adlister.models.Ad;

import java.util.List;

public interface Ads {
    // get a list of all the ads
    List<Ad> all();
    // insert a new ad and return the new ad's id
    Long insert(Ad ad);

    List<Ad> userAll(long id);
    //find by id
//    Ad findByTitle(String title);
    List<Ad> randomAll();
    List<Ad> titleSearch(String searchTerm);
    List<Ad> descriptionSearch(String searchTerm);
}
