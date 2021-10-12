package com.soris.SORIS_planing.host.event.controllers;

import com.soris.SORIS_planing.host.event.model.eventDeleteModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "eventDelete", value = "/eventDelete")
public class eventDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // get eid from a view and delete the event.
        String eid = request.getParameter("eid");
        try {
            eventDeleteModel deleteModel = new eventDeleteModel();
            if (deleteModel.eventDelete(eid)) {
                //delete successful
            } else {
                //delete failed
                request.setAttribute("error", "delete failed");
            }
            response.sendRedirect(request.getContextPath() + "/eventList");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
