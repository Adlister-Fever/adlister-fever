package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.ViewAdServlet", urlPatterns = "/ads/view")
public class ViewAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String title = request.getParameter("title");
        long id = Long.parseLong(request.getParameter("id"));
        List<Ad> allAds = DaoFactory.getAdsDao().all();
        Long seller = null;
        for(Ad ad : allAds){
            if(ad.getId() == id && ad.getTitle().equals(title)){
                request.getSession().setAttribute("id", ad.getId());
                request.getSession().setAttribute("user_id", ad.getUserId());
                request.getSession().setAttribute("title", ad.getTitle());
                request.getSession().setAttribute("image", ad.getImage());
                request.getSession().setAttribute("price", ad.getValue());
                request.getSession().setAttribute("description", ad.getDescription());
                seller = ad.getUserId();
            }
        }

        User user = DaoFactory.getUsersDao().idFinder(seller);
        request.getSession().setAttribute("seller_image", user.getPicture_large());
        request.getSession().setAttribute("username", user.getUsername());
        request.getSession().setAttribute("home_phone", user.getPhone());
        request.getSession().setAttribute("cell", user.getCell());
        request.getSession().setAttribute("email", user.getEmail());
//        System.out.println(adtitle + " hello from the ads index servlet");
        request.getRequestDispatcher("/WEB-INF/ads/view.jsp").forward(request, response);
    }
}
