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
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "servicesListDetails", value = "/servicesListDetails")
public class servicesListDetails extends HttpServlet {
    //Loggers
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    //Start get method
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        //Check Session
        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");

            LOGGER.log(Level.INFO, "User is logged as service provider");

            try {
                serviceModel serviceMem = new serviceModel();
                List<com.soris.SORIS_planing.sp.Service.models.service> servicesDetails = serviceMem.getServiceDetails(spID);
                request.setAttribute("servicesDetails", servicesDetails);
            } catch (Exception e) {
                e.printStackTrace();
            }
            //Re-direct to home page
            request.getRequestDispatcher("/sp-dashboard/home.jsp").forward(request, response);
        }
    }

}
