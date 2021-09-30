package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;
import com.soris.SORIS_planing.sp.Service.models.service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "updateServiceServlet", value = "/updateServiceServlet")
public class updateServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sID = request.getParameter("sid");
        String name = request.getParameter("serviceName");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String discount = request.getParameter("discount");
        String description = request.getParameter("serviceDesc");

        boolean isTrue;

        int sIdConvert = Integer.parseInt(sID);
     /*   sIDi = 1;*/
        double priceD = Double.parseDouble(price);
        double DiscountD = Double.parseDouble(discount);

        serviceModel updService = new serviceModel();

        isTrue = updService.updateService(sIdConvert, name, priceD, DiscountD, description);
/*        category,*/
        if(isTrue == true){

              List<service> servicesDetails = updService.getServiceDetails(sID);
            request.setAttribute("servicesDetails", servicesDetails);

            RequestDispatcher dis1 = request.getRequestDispatcher("/index.jsp");
            dis1.forward(request,response);
        }else{
            List<service> servicesDetails = updService.getServiceDetails(sID);
            request.setAttribute("servicesDetails", servicesDetails);

            RequestDispatcher dis2 = request.getRequestDispatcher("");
            dis2.forward(request,response);
        }
    }
}
