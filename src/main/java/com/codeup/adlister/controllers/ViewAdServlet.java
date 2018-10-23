package com.codeup.adlister.controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewAdServlet", urlPatterns = "/ads/view")
public class ViewAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


//        System.out.println(adtitle + " hello from the ads index servlet");
        request.getRequestDispatcher("/WEB-INF/ads/view.jsp").forward(request, response);
    }
}



