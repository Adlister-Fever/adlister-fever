package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.util.Randomizer;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class IndexServlet {
    @WebServlet(name = "controllers.Index", urlPatterns = "/index")
    public class ViewAdServlet extends HttpServlet {
        protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
            request.setAttribute("ads", DaoFactory.getAdsDao().all());
            List<Ad> ads = DaoFactory.getAdsDao().all();
            List<Ad> show = new ArrayList<>();
            int num;
            int i = 0;
            while (i < 3){
                num = Randomizer.getRandom();
                for (Ad ad : ads) {
                if (ad.getId() == num) {
                    i++;
                    show.add(ad);
                    System.out.println(num);
                    System.out.println(ad.getTitle());
                }
            }}
            request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
        }

    }


}
