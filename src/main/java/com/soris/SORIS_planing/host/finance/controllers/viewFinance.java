package com.soris.SORIS_planing.host.finance.controllers;

import com.soris.SORIS_planing.host.finance.models.viewFinanceModel;
import com.soris.SORIS_planing.host.finance.models.finance;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "viewBudget", value = "/viewBudget")
public class viewFinance extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("userid") != null && session.getAttribute("role") == "host") {

            String hostId = (String) session.getAttribute("userid");

            try{
                viewFinanceModel finance = new viewFinanceModel();
                List<finance> financeDetails = finance.getFinanceDetails(hostId);
                request.setAttribute("financeDetails",financeDetails);

            }
            catch(Exception e){
                e.printStackTrace();
            }
            request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
