package com.soris.SORIS_planing.host.event.controllers;

import com.soris.SORIS_planing.host.event.model.event;
import com.soris.SORIS_planing.host.event.model.eventUpdateModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "eventList", value = "/eventList")
public class eventList extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            //if a host user is logged in create host dashboard with details of events related to user
            HttpSession session = request.getSession(false);
            if (session.getAttribute("userid") != null && session.getAttribute("role") == "host") {
                LOGGER.log(Level.INFO, "User is logged as host");
                //user logged in
                String hid = (String) session.getAttribute("userid");
                int _hid = Integer.parseInt(hid);

                eventUpdateModel updateModel = new eventUpdateModel();
                List<event> eventList = updateModel.eventList(_hid);
                request.setAttribute("eventList", eventList);
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request, response);


            } else {
                LOGGER.log(Level.INFO, "User is not logged in");
                //user not logged in
                request.getRequestDispatcher("/auth/host-user-signin.jsp").forward(request, response);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }


}

