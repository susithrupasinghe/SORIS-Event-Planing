package com.soris.SORIS_planing.host.event.controllers;

import com.soris.SORIS_planing.host.event.model.event;
import com.soris.SORIS_planing.host.event.model.eventUpdateModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "eventUpdate", value = "/eventUpdate")
public class eventUpdate extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get eid of an event from view and create the update page relevant to event

        try {
            int eid = Integer.parseInt(request.getParameter("eid"));
            eventUpdateModel updateModel = new eventUpdateModel();
            event event = updateModel.eventDetails(eid);
            request.setAttribute("eid", eid);
            request.setAttribute("date", event.getDate());
            request.setAttribute("name", event.getName());
            request.setAttribute("description", event.getDescription());
            request.setAttribute("estimatedcost", event.getEstimatedCost());
            request.getRequestDispatcher("/host-dashboard/event/eventUpdate.jsp").forward(request, response);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get the updated event details from view and send them to model
        try {
            int eid = Integer.parseInt(request.getParameter("eid"));
            String name = request.getParameter("name");
            String date = request.getParameter("date");
            String description = request.getParameter("description");
            double estimatedCost = Double.parseDouble(request.getParameter("estimatedCost"));


            eventUpdateModel updateModel = new eventUpdateModel();
            if (updateModel.eventUpdate(eid, date, name, description, estimatedCost)) {
                response.sendRedirect(request.getContextPath() + "/eventList");
            } else {
                request.setAttribute("error", "event update failed");
                request.getRequestDispatcher("/host-dashboard/event/eventUpdate.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }
}
