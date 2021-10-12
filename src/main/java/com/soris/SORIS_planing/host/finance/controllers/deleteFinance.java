package com.soris.SORIS_planing.host.finance.controllers;

import com.soris.SORIS_planing.host.finance.models.deleteFinanceModel;
import com.soris.SORIS_planing.sp.Service.models.serviceModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "deleteFinance", value = "/deleteFinance")
public class deleteFinance extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);

        try{
            if (session.getAttribute("userid") != null && session.getAttribute("role") == "host") {
                String fid = request.getParameter("fid");

                boolean isTrue;
                deleteFinanceModel del = new deleteFinanceModel();
                isTrue = del.deleteFinance(fid);

            if (isTrue == true) {
                response.sendRedirect(request.getContextPath() +"/viewBudget");
            }
            else {
                request.setAttribute("error","Delete process failed");
                response.sendRedirect(request.getContextPath() +"/viewBudget");
            }
            } else {
                RequestDispatcher dis2 = request.getRequestDispatcher(request.getContextPath() + "/auth/host-user-signin.jsp");
                dis2.forward(request, response);
            }
        }
        catch (Exception ex)
        {

        }



        }
//    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
