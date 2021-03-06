package com.soris.SORIS_planing.host.finance.controllers;

import com.soris.SORIS_planing.host.finance.models.finance;
import com.soris.SORIS_planing.host.finance.models.updateFinanceModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.*;

@WebServlet(name = "updateFinance", value = "/updateFinance")
public class updateFinance extends HttpServlet {
    private final static Logger LOGGER =
            Logger.getLogger(Logger.GLOBAL_LOGGER_NAME);

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession(false);

        if(session.getAttribute("userid") != null && session.getAttribute("role") == "host") {
            LOGGER.log(Level.INFO, "User is logged as host");
            String fid = request.getParameter("fid");
            int convertfid = Integer.parseInt(fid);

            try {
                updateFinanceModel updatemodel = new updateFinanceModel();
                finance finance = updatemodel.financeDetails(convertfid);
                request.setAttribute("fid",fid);
                request.setAttribute("description", finance.getDescription());
                request.setAttribute("expense", finance.isExpense());
                request.setAttribute("income", finance.isIncome());
                request.setAttribute("amount", Double.toString(finance.getAmount()));
                request.getRequestDispatcher("/host-dashboard/finance/updateFinance.jsp").forward(request, response);

            } catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // get the updated finance details from parameters
            String fId = request.getParameter("fid");
            String description = request.getParameter("description");
            String amount = request.getParameter("amount");
            String type = request.getParameter("type");


            boolean isTrue;
            int convertfId = Integer.parseInt(fId);
            double convertAmount = Double.parseDouble(amount);
            boolean Expense = false;
            boolean Income = false;

            if(type.equals("expense")) {
                Expense = true;
                Income = false;
            } else if(type.equals("income")) {
                Income = true;
                Expense = false;
            }
            updateFinanceModel update = new updateFinanceModel();
            isTrue = update.updateFinance(convertfId, description, convertAmount, Income, Expense);
            if(isTrue){
                response.sendRedirect(request.getContextPath() +"/viewBudget");

            } else {
                request.setAttribute("error","fail");
                response.sendRedirect(request.getContextPath() +"/updateFinance?fid="+fId);

            }

        }catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        }

    }
}
