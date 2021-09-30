package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "deleteServiceServlet", value = "/deleteServiceServlet")
public class deleteServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sID = request.getParameter("sID");

        boolean isTrue;

        serviceModel delSer = new serviceModel();

        isTrue = delSer.deleteService(sID);

        if(isTrue == true){
            RequestDispatcher dis1 = request.getRequestDispatcher("/home.jsp");
            dis1.forward(request,response);
        }else{
            RequestDispatcher dis2 = request.getRequestDispatcher("/home.jsp");
            dis2.forward(request,response);
        }
    }
}
