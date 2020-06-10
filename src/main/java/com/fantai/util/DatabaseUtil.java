package com.fantai.util;

import com.fantai.dao.PredictionInfoMapper;
import com.fantai.entity.LocationInfo;
import com.fantai.entity.PredictionInfo;
import org.apache.ibatis.jdbc.SQL;

import javax.annotation.Resource;
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

    @Resource
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

    public static void updatePrediction(String str) {
        try {
            if (connection == null || connection.isClosed()) {
                connection = getConnection();
            }

            System.out.println("insert values");
            String[] messages = str.split(";");
            for (String message : messages) {
                System.out.println(message);
                String[] res = message.split(",");
                int region = Integer.parseInt(res[0]);
                int time_slot = Integer.parseInt(res[1]);
                double count = Double.parseDouble(res[2]);

                String sql = "insert into predictioninfo (pi_region, pi_time_slot, pi_count) values (?, ?, ?) on duplicate key update pi_count=?";
                PreparedStatement pst =  connection.prepareStatement(sql);
                pst.setInt(1, region);
                pst.setInt(2, time_slot);
                pst.setDouble (3, count);
                pst.setDouble (4, count);
                pst.executeUpdate();

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static List<PredictionInfo> retrievePrediction(int time_slot) {
        try {
            if (connection == null || connection.isClosed()) {
                connection = getConnection();
            }
            List<PredictionInfo> predictionInfos = new LinkedList<PredictionInfo>();
            String sql = "select pi_region, pi_time_slot, pi_count from predictioninfo where  pi_time_slot = ?";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setInt(1, time_slot);

            ResultSet resultSet = pst.executeQuery();
            while (resultSet.next()) {
                int region = resultSet.getInt(1);
                double count = resultSet.getDouble(3);
                predictionInfos.add(new PredictionInfo(region, time_slot, count));
            }
            return predictionInfos;

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
