package com.soris.SORIS_planing.host.services.controllers;

import com.soris.SORIS_planing.host.services.models.serviceHandlerModel;
import com.soris.SORIS_planing.host.services.models.serviceModel;
import com.soris.SORIS_planing.host.services.models.spModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "addToBudget", value = "/addToBudget")
public class addToBudget extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sid = request.getParameter("sid");
        try{
            String eid = request.getParameter("eid");

            int count = Integer.parseInt(request.getParameter("count"));
            serviceHandlerModel handler = new serviceHandlerModel();

            boolean isSuccuss =  handler.addServiceToBudget(eid,sid,count);
            if(isSuccuss){

                response.sendRedirect(request.getContextPath() +"/eventList");
            }
            else {
                request.setAttribute("error", "Service not added successfully !");
                request.getRequestDispatcher(request.getContextPath() +"/servicePage?sid=" + sid).forward(request, response);
            }


        }
        catch (Exception ex)
        {
            System.out.println(ex);
            request.setAttribute("error", "Service not added successfully !");
            request.getRequestDispatcher(request.getContextPath() +"/servicePage?sid=" + sid).forward(request, response);
        }
    }
}
