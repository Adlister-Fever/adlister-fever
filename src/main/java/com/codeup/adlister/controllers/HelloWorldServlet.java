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
import java.util.List;

@WebServlet(name = "controllers.HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        List<Ad> ads = DaoFactory.getAdsDao().all();
        List<Ad> show = null;
        int num = Randomizer.getRandom();
        int i = 0;
        for (Ad ad:ads){
            if(ad.getId() == num){
                i++;
                show.add(ad);
                System.out.println(ad.getTitle());
            }
        } while (i<3)


//        request.getSession().setAttribute("first", show.(0));
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response);
    }


}
