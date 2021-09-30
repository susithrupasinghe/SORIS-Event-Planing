package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.serviceModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "newServiceServlet", value = "/newServiceServlet")
public class newServiceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "sp") {
            String spID = (String) session.getAttribute("userid");

            String serviceName = request.getParameter("servicetname");
            String category = request.getParameter("Category");
            String price = request.getParameter("price");
            String Discount = request.getParameter("Discount");
            String description = request.getParameter("servicedesc");

            boolean isTrue;

            double priceD = Double.parseDouble(price);
            double DiscountD = Double.parseDouble(Discount);
            int spIdConvert = Integer.parseInt(spID);

            try {
                serviceModel Newservice = new serviceModel();
                isTrue = Newservice.insertService(spIdConvert,serviceName, category, priceD, DiscountD, description);
                if (isTrue == true) {
                    request.setAttribute("error", "Service Creation Successfully");
                    RequestDispatcher dis = request.getRequestDispatcher("/sp-dashboard/home.jsp");
                    dis.forward(request, response);
                } else {
                    request.setAttribute("error", "Service Creation Failed");
                    RequestDispatcher dis1 = request.getRequestDispatcher("/sp-dashboard/newService.jsp");
                    dis1.forward(request, response);
                }
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("error", "Internal Error");
                request.getRequestDispatcher("/sp-dashboard/home.jsp").include(request, response);
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       /* String serviceName = request.getParameter("servicetname");
        String category = request.getParameter("Category");
        String price = request.getParameter("price");
        String Discount = request.getParameter("Discount");
        String description = request.getParameter("servicedesc");

        boolean isTrue;

        double priceD = Double.parseDouble(price);
        double DiscountD = Double.parseDouble(Discount);

        try{
            serviceModel Newservice = new serviceModel();
            isTrue = Newservice.insertService(spIdConvert,serviceName,category,priceD,DiscountD,description);
            if(isTrue == true){
                RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
                dis.forward(request,response);
            }else {
                RequestDispatcher dis1 = request.getRequestDispatcher("/home.jsp");
                dis1.forward(request,response);
            }
        }catch (Exception e){
            System.out.println(e);
        }*/
    }
}
