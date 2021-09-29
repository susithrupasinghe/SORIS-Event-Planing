package com.soris.SORIS_planing.admin.dashboard.controllers;


import com.soris.SORIS_planing.admin.dashboard.models.serviceUpdateModel;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "updateServices", value = "/updateServices")
public class updateServices extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session=request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "admin"){

            try{
                String id = request.getParameter("id");
                String status = request.getParameter("status");
                serviceUpdateModel serviceUpdate = new serviceUpdateModel();
                serviceUpdate.updateServiceStatus(id,status);
                //request.getRequestDispatcher(request.getContextPath()+"/adminServices").forward(request, response);
                response.sendRedirect(request.getContextPath() + "/adminServices");
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
