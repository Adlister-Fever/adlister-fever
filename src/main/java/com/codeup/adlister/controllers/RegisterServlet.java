package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");

        // validate input
        boolean inputHasErrors = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        if (inputHasErrors) {
            response.sendRedirect("/register");
            return;
        }

        boolean duplicate = DaoFactory.getUsersDao().findDuplicate(username);
        if(duplicate){
            //need to display error message
// On a failed login you generally forward back to the login.jsp,
// but add some form of error message/object/whatever attribute
// to the request. The login.jsp will have a bit of code somewhere
// that checks if this attribute exists on the request, if so it then
// displays it.
            String errorMessage = "Username already exists!";
            request.setAttribute("errorMessage", errorMessage);
            try {
                request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            } catch (ServletException e) {
                e.printStackTrace();
            }


        } else {
            // create and save a new user
            User user = new User(username, email, Password.hash(password));
            DaoFactory.getUsersDao().insert(user);
            response.sendRedirect("/login");
        }


    }
}
