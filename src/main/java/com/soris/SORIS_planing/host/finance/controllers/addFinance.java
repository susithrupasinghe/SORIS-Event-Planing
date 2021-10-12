package com.soris.SORIS_planing.host.finance.controllers;

import com.mysql.cj.util.SaslPrep;
import com.soris.SORIS_planing.host.finance.models.addFinanceModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.*;

@WebServlet(name = "addFinance", value = "/addFinance")
public class addFinance extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    try{
        HttpSession session = request.getSession(false);

        if(session!=null && session.getAttribute("userid") != null && session.getAttribute("role") == "host"){
            LOGGER.log(Level.INFO, "User is logged as addFinance");//used logger
            String hid = (String) session.getAttribute("userid");
            addFinanceModel host = new addFinanceModel();
            HashMap<String,String> eventList = host.getEventList(hid);//used hashmap
            System.out.println(eventList.size());
            request.setAttribute("list",eventList);//get event name list from event table
            request.getRequestDispatcher("/host-dashboard/finance/addFinance.jsp").forward(request,response);

        }

    } catch (SQLException | ClassNotFoundException ex) {
        ex.printStackTrace();
    }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       try{

        String eId = request.getParameter("eid");
        String description = request.getParameter("description");
        String amount = request.getParameter("amount");
        String  type = request.getParameter("type");

        boolean isTrue;
        int convertEid = Integer.parseInt(eId);
        double convertAmount = Double.parseDouble(amount);
        boolean Expense = false;
        boolean Income = false;

        if(type.equals("expense") ) {
            Expense = true;
            Income = false;
        } else if(type.equals("income") ) {
            Income = true;
            Expense = false;
        }
        addFinanceModel finance = new addFinanceModel();

            isTrue = finance.addFinance(convertEid,description,convertAmount,Income,Expense);
            if(isTrue ){
                response.sendRedirect(request.getContextPath() + "/viewBudget");

            } else {
                request.setAttribute("error","fail");
                request.getRequestDispatcher(request.getContextPath() + "/addFinance").forward(request,response);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}
