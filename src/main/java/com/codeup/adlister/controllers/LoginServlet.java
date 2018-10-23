package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;
import com.codeup.adlister.util.Caps;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);
        List<Ad> userads = DaoFactory.getAdsDao().userAll(user.getId());

        if (user == null) {
            response.sendRedirect("/login");
            return;
        }
        if (Password.check(password, user.getPassword())) {
            request.getSession().setAttribute("id", user.getId());
            request.getSession().setAttribute("user", Caps.formatName(username));
            request.getSession().setAttribute("last_name", Caps.formatName(user.getLast_name()));
            request.getSession().setAttribute("profile", user.getPicture_large());
            request.getSession().setAttribute("street", user.getStreet());
            request.getSession().setAttribute("city", user.getCity());
            request.getSession().setAttribute("state", user.getState());
            request.getSession().setAttribute("registered_date", user.getRegistered_date());
            request.getSession().setAttribute("registered_age", user.getRegistered_age());
            request.getSession().setAttribute("phone", user.getPhone());
            request.getSession().setAttribute("cell", user.getCell());
            request.getSession().setAttribute("zip", user.getZip_code());
            request.getSession().setAttribute("email", user.getEmail());
            request.getSession().setAttribute("gender", user.getGender());
            request.getSession().setAttribute("userads", userads);

            response.sendRedirect("/profile");
        } else {
            response.sendRedirect("/login");
        }
    }
}
