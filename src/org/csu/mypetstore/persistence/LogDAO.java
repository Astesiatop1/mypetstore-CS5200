package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Log;

import java.util.List;

public interface LogDAO {
    void insertLog(String username, String logInfo);
    List<Log> getLogByUsername(String username, String password);
}
