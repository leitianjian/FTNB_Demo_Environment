package com.fantai.util;

import com.fantai.entity.LocationInfo;
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
        if (connection == null || connection.isClosed()){
            connection = getConnection();
        }
        System.out.println("insert values");
        String[] res = message.split(",");
        int id = Integer.parseInt(res[0]);
        long time = Long.parseLong(res[1]);
        double latitude = Double.parseDouble(res[2]);
        double longitude = Double.parseDouble(res[3]);
        String sql = "insert into dev_location values (?, ?, ?, ?)";
        PreparedStatement stmt = connection.prepareStatement(sql);
        stmt.setInt(1, id);
        stmt.setTimestamp(2, new Timestamp(time));
        stmt.setDouble(3, latitude);
        stmt.setDouble(4, longitude);
        stmt.executeUpdate();
//        INSERT INTO `sy_userinfo` VALUES ('admin','管理员','admin',NULL,NULL,1,1)
    }

    public static HashSet<LocationInfo> retrievePrediction() {
        try {
            if (connection == null || connection.isClosed()) {
                connection = getConnection();
            }
            HashSet<LocationInfo> result = new HashSet<>();
            String sql = "select l.* from dev_location l order by l.time desc limit 10";
            PreparedStatement pst = connection.prepareStatement(sql);
            ResultSet resultSet = pst.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                long time = resultSet.getTimestamp(2).getTime();
                double latitude = resultSet.getDouble(3);
                double longitude = resultSet.getDouble(4);
                result.add(new LocationInfo(id, time, latitude, longitude));
            }
            return result;
        }catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }




}
