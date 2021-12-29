package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Log;
import org.csu.mypetstore.persistence.Impl.LogDAOImpl;
import org.csu.mypetstore.persistence.LogDAO;

import java.util.List;

public class LogService {
    Log log;
    private LogDAO logDAO;

    public LogService(){
        log = new Log();
        logDAO = new LogDAOImpl();
    }

    public String logInfo(Object ...s){
        return log.logInfomation(s);
    }

    public void insertLogInfo(String username, String logInfo){
        logDAO.insertLog(username, logInfo);
    }

    public List<Log> getLog(String username, String password){
        return logDAO.getLogByUsername(username, password);
    }
}
