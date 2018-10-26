package com.codeup.adlister.controllers;
import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Caps;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
        } else {
            User user = DaoFactory.getUsersDao().findByUsername("username");
//            request.getSession().setAttribute("message", DaoFactory.getUserMailDao().userAll(user.getId()));
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        User user = DaoFactory.getUsersDao().findByUsername(request.getParameter("username"));
//        User newInfo = new User();
        System.out.println(request.getParameter("username") + " " + request.getParameter("email"));
        user.setUsername(request.getParameter("username"));
        user.setLast_name(request.getParameter("last_name"));
        user.setEmail(request.getParameter("email"));
        user.setStreet(request.getParameter("address"));
        user.setCity(request.getParameter("city"));
        user.setState(request.getParameter("state"));
        user.setZip_code(request.getParameter("zip"));
        DaoFactory.getUsersDao().editUser(user);
        request.getSession().setAttribute("id", user.getId());
        request.getSession().setAttribute("user", Caps.formatName(user.getUsername()));
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


//        response.sendRedirect("/login");
        doGet(request, response);
    }
}
