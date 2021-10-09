package com.soris.SORIS_planing.host.event.controllers;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import com.soris.SORIS_planing.host.event.model.*;

@WebServlet(name = "eventList", value = "/eventList")
public class eventList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session= request.getSession(false);
        if(session.getAttribute("userid") !=null && session.getAttribute("role")=="host")
        {
            //user logged in
            String hid= (String) session.getAttribute("userid");
            int _hid= Integer.parseInt(hid);
            try {
                eventUpdateModel updateModel=new eventUpdateModel();
                List<event> eventList= updateModel.eventList(_hid);
                request.setAttribute("eventList",eventList);
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }


        }else {
            //user not logged in
            request.getRequestDispatcher("/auth/host-user-signin.jsp").forward(request,response);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}

