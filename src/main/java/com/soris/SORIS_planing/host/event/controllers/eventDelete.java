package com.soris.SORIS_planing.host.event.controllers;

import com.soris.SORIS_planing.host.event.model.eventDeleteModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "eventDelete", value = "/eventDelete")
public class eventDelete extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // get eid from parameters
            String eid = request.getParameter("eid");
            //pass to model and forward to the webpage after return
            eventDeleteModel deleteModel = new eventDeleteModel();
            if (deleteModel.eventDelete(eid)) {
                LOGGER.log(Level.INFO, "Event Deleted");
                //delete successful
            } else {
                //delete failed
                LOGGER.log(Level.INFO, "Delete Failed");
                request.setAttribute("error", "delete failed");
            }
            response.sendRedirect(request.getContextPath() + "/eventList");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }


}
