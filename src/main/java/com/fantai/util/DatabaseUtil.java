package com.fantai.util;

import com.fantai.dao.PredictionInfoMapper;
import com.fantai.entity.LocationInfo;
import com.fantai.entity.PredictionInfo;
import org.apache.ibatis.jdbc.SQL;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

public class DatabaseUtil {

    private static String dbDriver = "com.mysql.jdbc.Driver";
    private static String dbUrl = "jdbc:mysql://localhost:3306/order_prediction?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC";// 数据库地址
    private static String dbUser = "root";// 用户名
    private static String dbPass = "123123"; // 用户密码
    static Connection connection = null;
    static PredictionInfoMapper predictionInfoMapper;
    public static void closeConnection() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static void updatePrediction(String message) throws SQLException {
        System.out.println("insert values");
        String[] res = message.split(",");
        int region = Integer.parseInt(res[0]);
        int time_slot = Integer.parseInt(res[1]);
        double count = Integer.parseInt(res[2]);
        PredictionInfo predictionInfo = new PredictionInfo();
        predictionInfo.setPi_region(region);
        predictionInfo.setPi_time_slot(time_slot);
        predictionInfo.setPi_count(count);
        predictionInfoMapper.add(predictionInfo);
    }

    public static List<PredictionInfo> retrievePrediction() {
        return predictionInfoMapper.getByTime(1);
    }




}
