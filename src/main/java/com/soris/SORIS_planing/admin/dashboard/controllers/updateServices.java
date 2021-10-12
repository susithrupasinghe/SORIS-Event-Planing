package com.soris.SORIS_planing.admin.dashboard.controllers;


import com.soris.SORIS_planing.admin.dashboard.models.serviceUpdateModel;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "updateServices", value = "/updateServices")
public class updateServices extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "admin"){

            try{
                String id = request.getParameter("id");
                String status = request.getParameter("status");
                serviceUpdateModel serviceUpdate = new serviceUpdateModel();
                serviceUpdate.updateServiceStatus(id,status);
                response.sendRedirect(request.getContextPath() + "/adminServices");
            }
            catch (Exception ex){
                LOGGER.log(Level.INFO, ex.getMessage());
            }


        }



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
