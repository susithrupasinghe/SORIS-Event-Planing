package com.soris.SORIS_planing.sp.Service.controllers;
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

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String sID = request.getParameter("3");
//        spSignIn userId = new spSignIn();

        serviceModel service = new serviceModel();

        try{
            List<service> servicesDetails = service.getServiceDetails(sID);
            request.setAttribute("servicesDetails", servicesDetails);
        }catch (Exception e){
            e.printStackTrace();
        }

    }
}
