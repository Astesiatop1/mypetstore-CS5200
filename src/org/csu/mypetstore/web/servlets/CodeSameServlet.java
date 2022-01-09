package org.csu.mypetstore.web.servlets;


import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class CodeSameServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String password =request.getParameter("password");
        String repeatedPassword=request.getParameter("repeatedPassword");

        response.setContentType("text/plain");
        PrintWriter out1=response.getWriter();

        if(repeatedPassword.length()!=0){
            if(password.equals(repeatedPassword))
            {
                //密码一致，可用
                out1.print("ok");
            }
            else {
                //密码不一致，不可用
                out1.print("wrong");
            }
        }

        out1.flush();
        out1.close();

    }
}
