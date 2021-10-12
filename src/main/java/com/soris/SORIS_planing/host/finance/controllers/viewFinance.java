package com.soris.SORIS_planing.host.finance.controllers;

import com.soris.SORIS_planing.host.finance.models.addFinanceModel;
import com.soris.SORIS_planing.host.finance.models.viewFinanceModel;
import com.soris.SORIS_planing.host.finance.models.finance;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.*;

@WebServlet(name = "viewBudget", value = "/viewBudget")
public class viewFinance extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("userid") != null && session.getAttribute("role") == "host") {
            LOGGER.log(Level.INFO, "User is logged as host");
            //user logged in
            try{
                String hid = (String) session.getAttribute("userid");
                addFinanceModel host = new addFinanceModel();
                HashMap<String,String> eventList = host.getEventList(hid);
                System.out.println(eventList.size());
                request.setAttribute("list",eventList);
                request.getRequestDispatcher("/host-dashboard/finance/viewFinance.jsp").forward(request,response);

            }
            catch(Exception e){
                e.printStackTrace();
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if (session != null && session.getAttribute("userid") != null && session.getAttribute("role") == "host") {

            try{
                String eventId =  request.getParameter("eid");
                session.setAttribute("eid",eventId);
                String hid = (String) session.getAttribute("userid");
                addFinanceModel host = new addFinanceModel();
                viewFinanceModel finance = new viewFinanceModel();
                List<finance> financeDetails = finance.getFinanceDetails(eventId);
                HashMap<String,String> eventList = host.getEventList(hid);
                request.setAttribute("list",eventList);
                request.setAttribute("financeDetails",financeDetails);
                request.getRequestDispatcher("/host-dashboard/finance/viewFinance.jsp").forward(request,response);

            }
            catch(Exception e){
                e.printStackTrace();
                System.out.println(e);
                request.getRequestDispatcher("/host-dashboard/home.jsp").forward(request,response);
            }


        }

    }
}
