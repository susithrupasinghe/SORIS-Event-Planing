package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.updateServiceModel;
import com.soris.SORIS_planing.sp.Service.models.service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "spUpdateService", value = "/spUpdateService")
@MultipartConfig(fileSizeThreshold = 1048576,
        maxFileSize = 5242880,
        maxRequestSize = 5242880)
public class spUpdateService extends HttpServlet {

    //Loggers
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        //Check user log in as service provider
        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");
            String sID = request.getParameter("sID");

            LOGGER.log(Level.INFO, "User is logged as service provider");

            int sIdConvert = Integer.parseInt(sID);

            try {
                updateServiceModel update = new updateServiceModel();
                service ser = update.getUpdateDetails(sIdConvert);
                request.setAttribute("sID",sID);
                request.setAttribute("name",ser.getName());
                request.setAttribute("category",ser.getCategory());
                request.setAttribute("price",Double.toString(ser.getPrice()));
                request.setAttribute("discount",Double.toString(ser.getDiscount()));
                request.setAttribute("description",ser.getDescription());
                request.setAttribute("images",ser.getImage());

                RequestDispatcher dis2 = request.getRequestDispatcher("/sp-dashboard/updateService.jsp");
                dis2.forward(request,response);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String sID = request.getParameter("sID");
            String name = request.getParameter("name");
            String category = request.getParameter("category");
            String price = request.getParameter("price");
            String discount = request.getParameter("Discount");
            String description = request.getParameter("servicedesc");
            Part img = request.getPart("image");

            boolean isTrue;

            int sIdConvert = Integer.parseInt(sID);

            double priceD = Double.parseDouble(price);
            double DiscountD = Double.parseDouble(discount);

            updateServiceModel updService = new updateServiceModel();

            isTrue = updService.updateService(sIdConvert, name, priceD, DiscountD, category, description,img);

            if(isTrue == true){

                response.sendRedirect(request.getContextPath() + "/servicesListDetails");
            }else{

                RequestDispatcher dis2 = request.getRequestDispatcher("/sp-dashboard/updateService.jsp");
                dis2.forward(request,response);
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }

    }
}
