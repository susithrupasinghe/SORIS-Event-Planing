package com.soris.SORIS_planing.host.event.controllers;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.soris.SORIS_planing.host.event.model.event;
import com.soris.SORIS_planing.host.event.model.eventCreationModel;
import com.soris.SORIS_planing.host.event.model.eventUpdateModel;


@WebServlet(name = "eventCreation", value = "/eventCreation")
public class eventCreation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession(false);
        int hid=0;

        try {

        if(session.getAttribute("userid") !=null && session.getAttribute("role")=="host")
        {
            String _hid= (String) session.getAttribute("userid");
            hid = Integer.parseInt(_hid);

        }else {
            //user not logged in
            request.getRequestDispatcher("/auth/host-user-signin.jsp").forward(request,response);
        }


            String name = request.getParameter("name");
            String description = request.getParameter("description");
            double estimatedCost = Double.parseDouble(request.getParameter("estimatedCost"));
            String date= request.getParameter("date");




            eventCreationModel event = new eventCreationModel();
            if (event.addEvent(name, description, estimatedCost,hid,date)) {
                response.sendRedirect(request.getContextPath() + "/eventList");
            } else {
                request.setAttribute("error", "event creation failed");
                request.getRequestDispatcher("/host-dashboard/event/eventCreation.jsp").forward(request,response);
            }


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "internal error");
            request.getRequestDispatcher("/host-dashboard/event/eventCreation.jsp").include(request,response);

        }
    }
}
