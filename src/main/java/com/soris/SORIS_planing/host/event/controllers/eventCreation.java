package com.soris.SORIS_planing.host.event.controllers;


import com.soris.SORIS_planing.host.event.model.eventCreationModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;


@WebServlet(name = "eventCreation", value = "/eventCreation")
public class eventCreation extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //if the user is logged in as host get parameters .
            HttpSession session = request.getSession(false);
            int hid = 0;
            if (session.getAttribute("userid") != null && session.getAttribute("role") == "host") {
                LOGGER.log(Level.INFO, "User is logged as host");
                String _hid = (String) session.getAttribute("userid");
                hid = Integer.parseInt(_hid);

            } else {
                LOGGER.log(Level.INFO, "User is not logged in");
                //user not logged in
                request.getRequestDispatcher("/auth/host-user-signin.jsp").forward(request, response);
            }


            String name = request.getParameter("name");
            String description = request.getParameter("description");
            double estimatedCost = Double.parseDouble(request.getParameter("estimatedCost"));
            String date = request.getParameter("date");

            // pass to relevant model and forward to the jsp after model returns
            eventCreationModel event = new eventCreationModel();
            if (event.addEvent(name, description, estimatedCost, hid, date)) {
                LOGGER.log(Level.INFO, "event created");
                response.sendRedirect(request.getContextPath() + "/eventList");
            } else {
                LOGGER.log(Level.INFO, "event creation failed");
                request.setAttribute("error", "event creation failed");
                request.getRequestDispatcher("/host-dashboard/event/eventCreation.jsp").forward(request, response);
            }


        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "internal error");
            request.getRequestDispatcher("/host-dashboard/event/eventCreation.jsp").include(request, response);

        }
    }
}
