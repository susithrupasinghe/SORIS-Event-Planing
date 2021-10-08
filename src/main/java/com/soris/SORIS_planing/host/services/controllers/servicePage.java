package com.soris.SORIS_planing.host.services.controllers;

import com.soris.SORIS_planing.host.services.models.serviceHandlerModel;
import com.soris.SORIS_planing.host.services.models.serviceModel;
import com.soris.SORIS_planing.host.services.models.spModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "servicePage", value = "/servicePage")
public class servicePage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            HttpSession session=request.getSession(false);
            String sid = request.getParameter("sid");
            serviceHandlerModel handler = new serviceHandlerModel();
            serviceModel service = handler.getServiceById(sid);
            spModel serviceprovider = handler.getServiceProviderById(service.getSpid());
            HashMap<String, String> events = handler.getEvents((String) session.getAttribute("userid"));
            request.setAttribute("service", service);
            request.setAttribute("events", events);
            request.setAttribute("sp", serviceprovider);

            request.getRequestDispatcher("/host-dashboard/services/singleService.jsp").forward(request, response);
        }
        catch (Exception ex)
        {
            System.out.println(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
