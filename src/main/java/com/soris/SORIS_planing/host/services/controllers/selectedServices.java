package com.soris.SORIS_planing.host.services.controllers;

import com.soris.SORIS_planing.host.services.models.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "selectedServices", value = "/selectedServices")
public class selectedServices extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("userid") != null && session.getAttribute("role") == "host") {


            try{
                String hid = (String) session.getAttribute("userid");
                serviceHandlerModel handler = new serviceHandlerModel();
                HashMap<String,String> eventList = handler.getEventList(hid);
                request.setAttribute("list",eventList);
                request.getRequestDispatcher("/host-dashboard/services/addedServicesList.jsp").forward(request,response);

            }
            catch(Exception e){
                e.printStackTrace();
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);
            }


        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("userid") != null && session.getAttribute("role") == "host") {



            try{
                String eventId =  request.getParameter("eid");
                session.setAttribute("eid",eventId);
                String hid = (String) session.getAttribute("userid");
                serviceHandlerModel handler = new serviceHandlerModel();
                HashMap<String,String> eventList = handler.getEventList(hid);
                List<selectedServicesModel> selectedServices = handler.getSelectedServices(eventId);

                request.setAttribute("list",eventList);
                request.setAttribute("servicelist",selectedServices);
                request.getRequestDispatcher("/host-dashboard/services/addedServicesList.jsp").forward(request,response);

            }
            catch(Exception e){
                e.printStackTrace();
                System.out.println(e);
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);
            }


        }
    }
}
