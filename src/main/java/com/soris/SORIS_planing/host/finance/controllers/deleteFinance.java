package com.soris.SORIS_planing.host.finance.controllers;

import com.soris.SORIS_planing.host.finance.models.deleteFinanceModel;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "deleteFinance", value = "/deleteFinance")
public class deleteFinance extends HttpServlet {


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String fid = request.getParameter("fid");
        boolean isTrue;

        isTrue = deleteFinanceModel.deleteFinance(fid);

        if(isTrue == true) {
            RequestDispatcher dis = request.getRequestDispatcher("");
            dis.forward(request, response);
        } else {



            RequestDispatcher dis2 = request.getRequestDispatcher("/index.jsp");
            dis2.forward(request, response);
        }
    }
}
