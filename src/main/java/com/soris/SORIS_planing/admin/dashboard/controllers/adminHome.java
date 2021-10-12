package com.soris.SORIS_planing.admin.dashboard.controllers;

import com.soris.SORIS_planing.admin.dashboard.models.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.*;

@WebServlet(name = "adminHome", value = "/adminHome")
public class adminHome extends HttpServlet {

    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "admin"){
            LOGGER.log(Level.INFO, "User is logged as admin");
            try{
                homeModel homeDataModel = new homeModel();
                int serviceProvidersCount = homeDataModel.getServiceProviderCount();
                int hostUserCount = homeDataModel.getHostUsersCount();
                int servicesCount = homeDataModel.getServicesCount();
                int eventCount = homeDataModel.getEventCount();
                HashMap<String,Integer> summeryOfServices= homeDataModel.getSummeryOfServices();

                List<topServiceProviderModel> _topserviceproviders = homeDataModel.getTopServiceProviders();
                List<topServiceModel> _topservices = homeDataModel.getTopServices();


                request.setAttribute("spCount", serviceProvidersCount);
                request.setAttribute("hostCount",hostUserCount);
                request.setAttribute("serviceCount",servicesCount);
                request.setAttribute("eventCount",eventCount);
                request.setAttribute("serviceSummery",summeryOfServices);
                request.setAttribute("topSpList",_topserviceproviders);
                request.setAttribute("topServices",_topservices);

                request.getRequestDispatcher("/admin-dashboard/home.jsp").forward(request, response);
            }
            catch (Exception ex){

                System.out.println(ex);
            }


        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        HttpSession session=request.getSession(false);
//
//        if(session.getAttribute("userid") != null && session.getAttribute("role") == "admin"){
//
//            try{
//                homeModel homeDataModel = new homeModel();
//                int serviceProvidersCount = homeDataModel.getServiceProviderCount();
//                int hostUserCount = homeDataModel.getHostUsersCount();
//                int servicesCount = homeDataModel.getServicesCount();
//                int eventCount = homeDataModel.getEventCount();
//
//                List<topServiceProviderModel> _topserviceproviders = homeDataModel.getTopServiceProviders();
//                List<topServiceModel> _topservices = homeDataModel.getTopServices();
//
//                request.setAttribute("spCount", serviceProvidersCount);
//                request.setAttribute("hostCount",hostUserCount);
//                request.setAttribute("serviceCount",servicesCount);
//                request.setAttribute("eventCount",eventCount);
//                request.setAttribute("topSpList",_topserviceproviders);
//                request.setAttribute("topServices",_topservices);
//
//                request.getRequestDispatcher("/admin-dashboard/home.jsp").forward(request, response);
//            }
//            catch (Exception ex){
//
//                System.out.println(ex);
//            }
//
//
//        }
    }
}
