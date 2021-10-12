package com.soris.SORIS_planing.admin.dashboard.controllers;


import com.soris.SORIS_planing.admin.dashboard.models.*;



import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "deleteServices", value = "/deleteServices")
public class deleteServices extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "admin"){
            LOGGER.log(Level.INFO, "User is admin");
            try{
                String id = request.getParameter("id");
                serviceUpdateModel serviceUpdate = new serviceUpdateModel();
                serviceUpdate.deteleServiceById(id);
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
