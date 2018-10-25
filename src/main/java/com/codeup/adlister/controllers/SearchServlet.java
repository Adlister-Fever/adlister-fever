package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.dao.MySQLAdsDao;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

@WebServlet(name = "controllers.SearchServlet", urlPatterns = "/ads/search")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/WEB-INF/ads/index.jsp");

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> titles = DaoFactory.getAdsDao().titleSearch(request.getParameter("searchTerm"));
        List<Ad> descriptions = DaoFactory.getAdsDao().descriptionSearch(request.getParameter("searchTerm"));
        System.out.println(titles.toString());
        System.out.println(descriptions.toString());
        for (Ad adT : titles) {
            String currentTitle = adT.getTitle().toLowerCase();
            for (Ad adD : descriptions) {
                if (currentTitle.equals(adD.getTitle().toLowerCase())) {
                    descriptions.remove(adD);
                }
            }
            titles.addAll(descriptions);
        }
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }

}


// String searchTerm = request.getParameter("adSearch");
//        List<Ad> allAds = DaoFactory.getAdsDao().all();
//        Long seller = null;
//        for (Ad ad : allAds) {
//            if (ad.getTitle().equals(searchTerm) || ad.getDescription().equals(searchTerm)) {
//                request.getSession().setAttribute("id", ad.getId());
//                request.getSession().setAttribute("user_id", ad.getUserId());
//                request.getSession().setAttribute("title", ad.getTitle());
//                request.getSession().setAttribute("image", ad.getImage());
//                request.getSession().setAttribute("price", ad.getValue());
//                request.getSession().setAttribute("description", ad.getDescription());
//                seller = ad.getUserId();
//            }
//        }

