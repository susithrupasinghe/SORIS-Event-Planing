package com.soris.SORIS_planing.host.services.controllers;

import com.soris.SORIS_planing.host.services.models.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "deleteService", value = "/deleteService")
public class deleteService extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        try{
            if (session.getAttribute("userid") != null && session.getAttribute("role") == "host") {
                String esId = request.getParameter("esid");

                boolean isTrue;
                serviceHandlerModel handler = new serviceHandlerModel();
                isTrue = handler.deleteService(esId);

                if (isTrue == true) {
                    response.sendRedirect(request.getContextPath() +"/selectedServices");
                }
                else {
                    request.setAttribute("error","Delete process failed");
                    response.sendRedirect(request.getContextPath() +"/selectedServices");
                }
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher(request.getContextPath() + "/auth/host-user-signin.jsp");
                dis2.forward(request, response);
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
