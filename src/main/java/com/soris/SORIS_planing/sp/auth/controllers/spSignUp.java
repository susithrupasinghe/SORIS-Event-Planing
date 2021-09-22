package com.soris.SORIS_planing.sp.auth.controllers;

import com.soris.SORIS_planing.sp.auth.models.signUpModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "spSignUp", value = "/spSignUp")
public class spSignUp extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String brand = request.getParameter("brand");
            String address = request.getParameter("address");
            String contact = request.getParameter("contact");
            String password = request.getParameter("pass");

            HttpSession session=request.getSession(false);

            if(session!=null && session.getAttribute("userid") != null && session.getAttribute("role") == "sp"){

                // User already logged in
                request.getRequestDispatcher("/sp-dashboard/home.jsp").forward(request, response);

            }
            else {
                signUpModel signUp = new signUpModel();
                signUp.setEmail(email);
                signUp.setBrand(brand);
                signUp.setAddress(address);
                signUp.setContact(contact);
                signUp.setPassword(password);

                if(signUp.checkEmailExists()){
                    request.setAttribute("error","This email already registered in SORIS  !");
                    request.getRequestDispatcher("/auth/service-provider-signup.jsp").forward(request, response);
                }
                else{
                    if(signUp.addUser()){

                        request.setAttribute("success","Successfully Registered. You will redirect to SignIn page within 5 seconds  !");
                        response.setHeader("Refresh","5;url="+request.getContextPath()+"/auth/service-provider-signin.jsp");
                        request.getRequestDispatcher("/auth/service-provider-signup.jsp").forward(request, response);

                    }
                    else {
                        request.setAttribute("error","Internal error occurred ");
                        request.getRequestDispatcher("/auth/service-provider-signup.jsp").forward(request, response);
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("error","Internal error occurred ");
            request.getRequestDispatcher("/auth/service-provider-signup.jsp").forward(request, response);
            System.out.println(ex);
        }
    }
}
