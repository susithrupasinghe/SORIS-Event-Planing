package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet(name = "spDeleteService", value = "/spDeleteService")
public class spDeleteService extends HttpServlet {

    //Loggers
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession(false);

            if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp"){

            LOGGER.log(Level.INFO, "User is logged as service provider");

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
                response.sendRedirect(request.getContextPath() + "/servicesListDetails");
            }else{
                RequestDispatcher dis2 = request.getRequestDispatcher("/spServicesSummary");
                dis2.forward(request,response);
            }
        }

    }

}
