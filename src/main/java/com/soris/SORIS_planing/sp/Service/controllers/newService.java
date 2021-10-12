package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "newService", value = "/newService")

@MultipartConfig(fileSizeThreshold = 1048576,
        maxFileSize = 5242880,
        maxRequestSize = 5242880)

public class newService extends HttpServlet {

    //Loggers
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //Check user log in as service provider
        HttpSession session = request.getSession(false);

        LOGGER.log(Level.INFO, "User is logged as service provider");

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");

            String serviceName = request.getParameter("servicetname");
            String category = request.getParameter("Category");
            String price = request.getParameter("price");
            String Discount = request.getParameter("Discount");
            String description = request.getParameter("servicedesc");
            Part img = request.getPart("image");

            boolean isTrue;

            double priceD = Double.parseDouble(price);
            double DiscountD = Double.parseDouble(Discount);
            int spIdConvert = Integer.parseInt(spID);

            try {
                serviceModel Newservice = new serviceModel();
                // pass to relevant model and forward to the jsp after model returns
                isTrue = Newservice.insertService(spIdConvert,serviceName, category, priceD, DiscountD, description, img);
                if (isTrue == true) {
                    request.setAttribute("error", "Service Creation Successfully");
                    response.sendRedirect(request.getContextPath() + "/servicesListDetails");
                } else {
                    request.setAttribute("error", "Service Creation Failed");
                    RequestDispatcher dis1 = request.getRequestDispatcher("/sp-dashboard/newService.jsp");
                    dis1.forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", "Internal Error");
                request.getRequestDispatcher("/sp-dashboard/home.jsp").include(request, response);
            }
        }
    }
}
