package org.csu.mypetstore.persistence.Impl;

import org.csu.mypetstore.domain.Log;
import org.csu.mypetstore.persistence.DBUtil;
import org.csu.mypetstore.persistence.LogDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.function.DoubleBinaryOperator;

public class LogDAOImpl implements LogDAO {

    private static final String insertLogString = "insert into log (logUserId, logInfo) VALUES (?, ?)";
    private static final String getlogListByUsername="SELECT LOGINFO FROM LOG WHERE LOGUSERID = ?";

    @Override
    public void insertLog(String username, String logInfo) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(insertLogString);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, logInfo);

            preparedStatement.executeUpdate();
            DBUtil.closePreparedStatent(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    public List<Log> getLogByUsername(String username, String password) {
        List<Log> logList = new ArrayList<Log>();
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(getlogListByUsername);
            pStatement.setString(1,username);
            ResultSet resultSet = pStatement.executeQuery();


            while(resultSet.next()){
                Log log = new Log();
                log.setLog(resultSet.getString(1));

                logList.add(log);

            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatent(pStatement);
            DBUtil.closeConnection(connection);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return logList;
    }
}
