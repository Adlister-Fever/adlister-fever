package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.Ads;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(name = "controllers.SearchServlet", urlPatterns = "/ads/search")
public class SearchServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("/WEB-INF/ads/index.jsp");

    }


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Ad> titles = DaoFactory.getAdsDao().titleSearch(request.getParameter("searchTerm"));
//        List<Ad> descriptions = DaoFactory.getAdsDao().descriptionSearch(request.getParameter("searchTerm"));
//        titles.addAll(descriptions);
//        Iterator<Ad> iterator = titles.iterator();
//        int i=0;
//        while (iterator.hasNext()) {
//            if (titles.get(i).getTitle().equals(iterator.next().getTitle())) {
//                iterator.remove();
//                if (i < titles.size() - 1) {
//                    i++;
//                }
//            }
//        }

        request.setAttribute("ads", titles);
        request.getRequestDispatcher("/WEB-INF/ads/search.jsp").forward(request, response);
    }

}

//        HashSet<Ad> converter = new HashSet<>(titles);



