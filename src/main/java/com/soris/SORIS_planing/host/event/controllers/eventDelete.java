package com.soris.SORIS_planing.host.event.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

import com.soris.SORIS_planing.host.event.model.eventDeleteModel;

@WebServlet(name = "eventDelete", value = "/eventDelete")
public class eventDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String eid=request.getParameter("eid");
        try {
            eventDeleteModel deleteModel=new eventDeleteModel();
            if(deleteModel.eventDelete(eid)){
                //delete successful
                response.sendRedirect(request.getContextPath() + "/eventList");
            }else {
                //delete failed
                request.setAttribute("error","delete failed");
                // figure out how to send error msg to same page
                response.sendRedirect(request.getContextPath() + "/eventList");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
