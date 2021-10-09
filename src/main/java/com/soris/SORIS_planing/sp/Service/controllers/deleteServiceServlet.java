package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "deleteServiceServlet", value = "/deleteServiceServlet")
public class deleteServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession(false);

            if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp"){
            String sId = request.getParameter("sID");
            System.out.println(sId);

            boolean isTrue;

                serviceModel delSer = null;
                try {
                    delSer = new serviceModel();
                } catch (SQLException e) {
                    e.printStackTrace();
                } catch (ClassNotFoundException e) {
                    e.printStackTrace();
                }

                isTrue = delSer.deleteService(sId);

            if(isTrue == true){
               /* RequestDispatcher dis1 = request.getRequestDispatcher("/index.jsp");
                dis1.forward(request,response);*/
                response.sendRedirect(request.getContextPath() + "/serviceServlet");
            }else{
                RequestDispatcher dis2 = request.getRequestDispatcher("/index.jsp");
                dis2.forward(request,response);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        /*String sID = request.getParameter("sID");

        boolean isTrue;

        serviceModel delSer = new serviceModel();

        isTrue = delSer.deleteService(sID);

        if(isTrue == true){
            RequestDispatcher dis1 = request.getRequestDispatcher("/index.jsp");
            dis1.forward(request,response);
        }else{
            RequestDispatcher dis2 = request.getRequestDispatcher("/home.jsp");
            dis2.forward(request,response);
        }*/
    }
}
