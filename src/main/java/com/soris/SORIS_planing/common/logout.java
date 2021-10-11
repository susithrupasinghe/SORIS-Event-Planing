package com.soris.SORIS_planing.common;

import com.mysql.cj.Session;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "logout", value = "/logout")
public class logout extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String type = request.getParameter("redirect");
            HttpSession session =request.getSession(false);
            session.invalidate();


            if(type.equals("admin")){
                response.setIntHeader("Refresh", 1);
                response.sendRedirect(request.getContextPath() + "/auth/admin-signin.jsp");
            }
            else if(type.equals("host")){
                response.setIntHeader("Refresh", 1);
                response.sendRedirect(request.getContextPath() + "/auth/host-user-signin.jsp");
            }
            else if(type.equals("sp")){
                response.setIntHeader("Refresh", 1);
                response.sendRedirect(request.getContextPath() + "/auth/service-provider-signin.jsp");
            }
        }
        catch (Exception ex){
            System.out.println(ex);
        }


    }


}
