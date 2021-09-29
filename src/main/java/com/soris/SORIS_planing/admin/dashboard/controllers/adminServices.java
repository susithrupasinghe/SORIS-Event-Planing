package com.soris.SORIS_planing.admin.dashboard.controllers;

import com.soris.SORIS_planing.admin.dashboard.models.*;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "adminServices", value = "/adminServices")
public class adminServices extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "admin"){

            try{
                servicePageModel servicePage = new servicePageModel();

                List<serviceModel> _allServices = servicePage.getAllServices();
                request.setAttribute("services", _allServices);
                request.getRequestDispatcher("/admin-dashboard/services.jsp").forward(request, response);
            }
            catch (Exception ex){

                System.out.println(ex);
            }


        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
