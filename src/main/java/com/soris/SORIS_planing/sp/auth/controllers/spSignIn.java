package com.soris.SORIS_planing.sp.auth.controllers;


import com.soris.SORIS_planing.sp.auth.models.signInModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "spSignIn", value = "/spSignIn")
public class spSignIn extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String username = request.getParameter("uname");
            String password = request.getParameter("pass");

            HttpSession session=request.getSession(false);

            if(session!=null && session.getAttribute("userid") != null && session.getAttribute("role") == "sp"){

                // User already logged in
                request.getRequestDispatcher("/sp-dashboard/home.jsp").forward(request, response);

            }
            else {
                // Create model Object
                signInModel signIn = new signInModel();
                signIn.setEmail(username);
                signIn.setPassword(password);

                // Check validity
                if(signIn.validate()){
                    // Password is correct
                    // Set session
                    session.setAttribute("userid", signIn.getuserId());
                    session.setAttribute("username", signIn.getName());
                    session.setAttribute("role", "sp");
                    request.getRequestDispatcher("/sp-dashboard/home.jsp").forward(request, response);

                }
                else if(! signIn.checkEmailExists(username)){
                    // Entered email is not exist in database
                    request.setAttribute("error","Entered email is incorrect !");
                    request.getRequestDispatcher("/auth/service-provider-signin.jsp").forward(request, response);
                }
                else {
                    // Other  errors
                    request.setAttribute("error","Password is incorrect for given email !");
                    request.getRequestDispatcher("/auth/service-provider-signin.jsp").forward(request, response);
                }
            }

        }
        catch (Exception ex){
            // Send internal error status to jsp
            request.setAttribute("error","Internal Error");
            request.getRequestDispatcher("/auth/service-provider-signin.jsp").include(request, response);

        }



    }
}
