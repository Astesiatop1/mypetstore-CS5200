package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Log;
import org.csu.mypetstore.service.LogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ViewHistoryServlet", value = "/ViewHistoryServlet")
public class ViewHistoryServlet extends HttpServlet {
    private static final String VIEW_HISTORY="/WEB-INF/jsp/log/log.jsp";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session=request.getSession();
        Account account = (Account)session.getAttribute("account");
        LogService service = new LogService();System.out.println("ok");
        List<Log> logList= service.getLog(account.getUsername(), account.getPassword());
        session.setAttribute("logList",logList);
        System.out.println(logList);

        request.getRequestDispatcher(VIEW_HISTORY).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
