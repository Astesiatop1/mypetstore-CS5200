package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UsernameExistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username =request.getParameter("username");
        AccountService accountService = new AccountService();
        Account result = accountService.getAccount(username);

        response.setContentType("text/plain");
        PrintWriter out=response.getWriter();

        if(username.length()!=0){
            if(result==null)
            {
                //用户名不存在，可用
                out.print("Not Exist");
            }
            else {
                //用户名存在，不可用
                out.print("Exist");
            }
        }else{
            out.print("null");
        }

        out.flush();
        out.close();

    }
}
