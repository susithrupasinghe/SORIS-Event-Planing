package com.soris.SORIS_planing.host.auth.controllers;
import com.soris.SORIS_planing.host.auth.models.signUpModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "hostSignUp", value = "/hostSignUp")
public class hostSignUp extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("pass");

            HttpSession session=request.getSession(false);

            if(session!=null && session.getAttribute("userid") != null && session.getAttribute("role") == "host"){

                // User already logged in
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request, response);

            }
            else {
                signUpModel signUp = new signUpModel();
                signUp.setFirstName(firstName);
                signUp.setLastName(lastName);
                signUp.setEmail(email);
                signUp.setPassword(password);

                if(signUp.checkEmailExists()){
                    request.setAttribute("error","This email already registered in SORIS  !");
                    request.getRequestDispatcher("/auth/host-user-signup.jsp").forward(request, response);
                }
                else{
                    if(signUp.addUser()){

                        request.setAttribute("success","Successfully Registered. You will redirect to SignIn page within 5 seconds  !");
                        response.setHeader("Refresh","5;url="+request.getContextPath()+"/auth/host-user-signin.jsp");
                        request.getRequestDispatcher("/auth/host-user-signup.jsp").forward(request, response);

                    }
                    else {
                        request.setAttribute("error","Internal error occurred ");
                        request.getRequestDispatcher("/auth/host-user-signup.jsp").forward(request, response);
                    }
                }
            }
        } catch (Exception ex) {
            request.setAttribute("error","Internal error occurred ");
            request.getRequestDispatcher("/auth/host-user-signup.jsp").forward(request, response);
           System.out.println(ex);
        }
    }

}
