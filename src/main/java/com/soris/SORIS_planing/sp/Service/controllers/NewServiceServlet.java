package com.soris.SORIS_planing.sp.Service.controllers;

import com.soris.SORIS_planing.sp.Service.models.NewServiceUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NewServiceServlet", value = "/NewServiceServlet")
public class NewServiceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String serviceName = request.getParameter("servicetname");
        String category = request.getParameter("Category");
        String price = request.getParameter("price");
        String Discount = request.getParameter("Discount");
        String description = request.getParameter("servicedesc");

        boolean isTrue;

        double priceD = Double.parseDouble(price);
        double DiscountD = Double.parseDouble(Discount);

        isTrue = NewServiceUtil.insertService(serviceName, category, priceD, DiscountD, description);

        if(isTrue == true){
            RequestDispatcher dis = request.getRequestDispatcher("/index.jsp");
            dis.forward(request,response);
        }else {
            RequestDispatcher dis1 = request.getRequestDispatcher("home.jsp");
            dis1.forward(request,response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
