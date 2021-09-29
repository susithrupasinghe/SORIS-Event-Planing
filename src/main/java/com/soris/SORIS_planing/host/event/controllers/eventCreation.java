package com.soris.SORIS_planing.host.event.controllers;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;

import com.soris.SORIS_planing.host.event.model.eventCreationModel;


@WebServlet(name = "eventCreation", value = "/eventCreation")
public class eventCreation extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            int estimatedCost = Integer.parseInt(request.getParameter("estimatedCost"));
            String d= request.getParameter("date");
            Date date = (Date) new SimpleDateFormat("yyyy-MM-dd").parse(d);


            eventCreationModel event = new eventCreationModel();
            if (event.addEvent(name, description, estimatedCost,0,date)) {
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);
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
//get  name,description,estimatedCost from form
//check session for hid
// insert into database
// return boolean
// redirect to host dashboard
