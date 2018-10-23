package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads/index")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
//        String adtitle = request.getParameter("title");
//        String adid = request.getParameter("id");
//        System.out.println("hello from the ads index servlet!!!!! " + adtitle + " " + adid);
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {


//        List<Ad> ads = DaoFactory.getAdsDao().all();
////        for (Ad ad: ads){
////            if(ad.getTitle() == adtitle && ad.getId() == Long.parseLong(adid)){
////                request.getSession().setAttribute("id", ad.getId());
////                request.getSession().setAttribute("user_id", ad.getUserId());
////                request.getSession().setAttribute("title", ad.getTitle());
////                request.getSession().setAttribute("image", ad.getImage());
////                request.getSession().setAttribute("price", ad.getValue());
////                request.getSession().setAttribute("description", ad.getDescription());
//            }
//        }


//

    }
}
