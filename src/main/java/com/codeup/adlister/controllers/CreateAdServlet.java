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

@WebServlet(name = "controllers.CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            System.out.println(request.getSession().getAttribute("user")== null);
            response.sendRedirect("/login");
        } else {
            request.getRequestDispatcher("/WEB-INF/ads/create.jsp")
                    .forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String imageUrl;
        if (request.getParameter("image").equals("")){
            imageUrl = "<img src='https://i.pinimg.com/originals/87/e2/03/87e20377c9c37d0b07dcc10504c636a8.png' width='50' height='50'>";
        }else{
            imageUrl = request.getParameter("image");
        }

        Ad ad = new Ad(
                (long) request.getSession().getAttribute("id"),
                request.getParameter("title"),
                request.getParameter("description"),
                Long.parseLong(request.getParameter("price")),
                imageUrl
        );
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads/view?id=");
    }
}
