package com.soris.SORIS_planing.host.event.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

import com.soris.SORIS_planing.host.event.model.*;

@WebServlet(name = "eventUpdate", value = "/eventUpdate")
public class eventUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int eid= Integer.parseInt(request.getParameter("eid"));

        try {
            eventUpdateModel updateModel=new eventUpdateModel();
            event event=updateModel.eventDetails(eid);
            request.setAttribute("eid",eid);
            request.setAttribute("date",event.getDate());
            request.setAttribute("name",event.getName());
            request.setAttribute("description",event.getDescription());
            request.setAttribute("estimatedcost",event.getEstimatedCost());
            request.getRequestDispatcher("/host-dashboard/event/eventUpdate.jsp");

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
