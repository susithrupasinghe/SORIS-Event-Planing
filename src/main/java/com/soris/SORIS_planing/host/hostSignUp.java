package com.soris.SORIS_planing.host;
import com.soris.SORIS_planing.dbUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "hostSignUp", value = "/hostSignUp")
public class hostSignUp extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try{
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");



            Connection con = dbUtil.initializeDatabase();
            if(checkEmailExists(con,email)){
                request.setAttribute("emailexist", "1");
                RequestDispatcher rd=request.getRequestDispatcher("/index.jsp");
                rd.forward(request,response);
            }
            else {
                PreparedStatement st = con.prepareStatement("INSERT INTO host (fname,lname,email,password) values(?, ?, ?, ?)");
                st.setString(1,fname);
                st.setString(2,lname);
                st.setString(3,email);
                st.setString(4,pass);
                st.execute();
                st.close();
                con.close();

                RequestDispatcher rd=request.getRequestDispatcher("/dashboard-saas.jsp");
                rd.forward(request,response);

            }



        }
        catch (Exception ex){
            System.out.println(ex.toString());
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();
            out.println(ex);

        }

    }

    private boolean checkEmailExists(Connection con,String email){
        try{

            String query = String.format("SELECT COUNT(*) as rowcount FROM host WHERE email='%s'", email);
            Statement st = con.createStatement();
            ResultSet res = st.executeQuery(query);
            res.next();


            if(res.getInt("rowcount") > 0){
                return true;
            }
            else{
                return false;
            }
        }
        catch (Exception ex){

            return false;
        }




    }
}
