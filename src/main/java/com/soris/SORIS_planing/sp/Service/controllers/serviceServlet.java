package com.soris.SORIS_planing.sp.Service.controllers;
import com.soris.SORIS_planing.admin.auth.models.signInModel;
import com.soris.SORIS_planing.sp.Service.models.service;
import com.soris.SORIS_planing.sp.Service.models.serviceModel;
import com.soris.SORIS_planing.sp.auth.controllers.spSignIn;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "serviceServlet", value = "/serviceServlet")
public class serviceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);


        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");


            try {
                serviceModel serviceMem = new serviceModel();
                List<service> servicesDetails = serviceMem.getServiceDetails(spID);
                request.setAttribute("servicesDetails", servicesDetails);
            } catch (Exception e) {
                e.printStackTrace();
            }
            // User already logged in
            request.getRequestDispatcher("/sp-dashboard/home.jsp").forward(request, response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);


        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");


            try {
                serviceModel serviceMem = new serviceModel();
                List<service> servicesDetails = serviceMem.getServiceDetails(spID);
                request.setAttribute("servicesDetails", servicesDetails);
            } catch (Exception e) {
                e.printStackTrace();
            }
            // User already logged in
            request.getRequestDispatcher("/admin-dashboard/home.jsp").forward(request, response);

        }
    }
}
