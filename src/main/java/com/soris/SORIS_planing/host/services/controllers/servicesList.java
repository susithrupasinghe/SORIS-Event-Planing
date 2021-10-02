package com.soris.SORIS_planing.host.services.controllers;
import com.soris.SORIS_planing.host.services.models.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "servicesList", value = "/servicesList")
public class servicesList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String category = request.getParameter("category");
            serviceHandlerModel handler = new serviceHandlerModel();
            List<serviceModel> serviceList = handler.serviceListByCategory(category);
            System.out.println(serviceList.size());
            request.setAttribute("serviceList", serviceList);

            request.getRequestDispatcher("/host-dashboard/services/serviceList.jsp").forward(request, response);

        }
        catch (Exception ex)
        {
            System.out.println(ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
