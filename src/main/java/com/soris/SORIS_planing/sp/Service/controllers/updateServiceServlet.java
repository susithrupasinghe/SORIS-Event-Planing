package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;
import com.soris.SORIS_planing.sp.Service.models.service;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "updateServiceServlet", value = "/updateServiceServlet")
public class updateServiceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");
            String sID = request.getParameter("sID");

            int sIdConvert = Integer.parseInt(sID);

            try {
                serviceModel update = new serviceModel();
                service ser = update.getUpdateDetails(sIdConvert);
                request.setAttribute("sID",sID);
                request.setAttribute("name",ser.getName());
                request.setAttribute("category",ser.getCategory());
                request.setAttribute("price",Double.toString(ser.getPrice()));
                request.setAttribute("discount",Double.toString(ser.getDiscount()));
                request.setAttribute("description",ser.getDescription());
                /*System.out.println(ser.getName());*/
                System.out.println(ser.getPrice());
                System.out.println(ser.getDiscount());
                /*service ser = new service();*/

                /*service service = new service(sIdConvert,name,category,priceD,DiscountD,description,status);*/
                RequestDispatcher dis2 = request.getRequestDispatcher("/sp-dashboard/updateService.jsp");
                dis2.forward(request,response);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sID = request.getParameter("sID");
        String name = request.getParameter("name");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String discount = request.getParameter("Discount");
        String description = request.getParameter("servicedesc");

        boolean isTrue;

        int sIdConvert = Integer.parseInt(sID);
     /*   sIDi = 1;*/
        double priceD = Double.parseDouble(price);
        double DiscountD = Double.parseDouble(discount);

        serviceModel updService = new serviceModel();

        isTrue = updService.updateService(sIdConvert, name, priceD, DiscountD, category, description);
/*       */
        if(isTrue == true){

              /*List<service> servicesDetails = updService.getServiceDetails(sID);
            request.setAttribute("servicesDetails", servicesDetails);*/

            /*RequestDispatcher dis1 = request.getRequestDispatcher("/index.jsp");
            dis1.forward(request,response);*/
            response.sendRedirect(request.getContextPath() + "/serviceServlet");
        }else{
           /* List<service> servicesDetails = updService.getServiceDetails(sID);
            request.setAttribute("servicesDetails", servicesDetails);*/

            RequestDispatcher dis2 = request.getRequestDispatcher("/index.jsp");
            dis2.forward(request,response);
        }
    }
}
