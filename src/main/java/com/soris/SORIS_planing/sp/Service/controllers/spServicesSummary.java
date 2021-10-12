package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;
import com.soris.SORIS_planing.sp.Service.models.servicesSummaryModel;
import com.soris.SORIS_planing.sp.Service.models.topServicesModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "spServicesSummary", value = "/spServicesSummary")
public class spServicesSummary extends HttpServlet {

    //Loggers
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    //Start get method
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession(false);

        //Check user log in as service provider
        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp"){
            String spID = (String) session.getAttribute("userid");

            LOGGER.log(Level.INFO, "User is logged as service provider");

            try{
                servicesSummaryModel summarySer = new servicesSummaryModel();
                int servicesCount = summarySer.getServiceCount(spID);
                HashMap<String,Integer> summeryOfServices= summarySer.getSummeryOfServices(spID);
                HashMap<String,Integer> catSumOfServices= summarySer.getcatSumOfServices(spID);
                List<topServicesModel> _topservices = summarySer.getTopServices(spID);
                String address = summarySer.getAddress(spID);
                String contactno = summarySer.getPhoneNum(spID);
                String email = summarySer.getMail(spID);

                request.setAttribute("serviceCount",servicesCount);
                request.setAttribute("serviceSummery",summeryOfServices);
                request.setAttribute("catSumOfServices",catSumOfServices);
                request.setAttribute("topServices",_topservices);
                request.setAttribute("address", address);
                request.setAttribute("contactno", contactno);
                request.setAttribute("email",email);

                request.getRequestDispatcher("/sp-dashboard/servicesSummary.jsp").forward(request, response);

            }catch (Exception e){
                e.printStackTrace();
            }
        }
    }

}
