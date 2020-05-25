package com.fantai.util;

import java.sql.*;
import java.text.SimpleDateFormat;

public class DatabaseUtil {

    private static String dbDriver = "com.mysql.jdbc.Driver";
    private static String dbUrl = "jdbc:mysql://localhost:3306/fantainb?autoReconnect=true&amp;autoReconnectForPools=true";// 数据库地址
    private static String dbUser = "root";// 用户名
    private static String dbPass = "986753421"; // 用户密码
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
            conn = C3P0Util.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }

    public static Timestamp getHeartTimeByCode(String code) throws SQLException {
        if (connection == null || connection.isClosed())
            connection = getConnection();
        String sql = "select max(sc_hbr_time) from  sc_heartbeatrecord where sy_di_code = ?";
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setString(1, code);
        ResultSet resultSet = pst.executeQuery();
        if (resultSet.next()) {
            return resultSet.getTimestamp(1);
        }
        return null;
    }

    public static void updateDeviceState(byte codeId, String code, int state) throws SQLException {
        if (connection == null || connection.isClosed())
            connection = getConnection();
        String sql = "";
        switch (codeId) {
            case (byte) 0x0B: // 锁状态信息
                sql = "update sl_lockinfo set sl_li_online = ? where sy_di_code = ?";
                break;
            case (byte) 0x0F:  //农业信息
                sql = "update se_sensorinfo set se_si_online = ? where sy_di_code = ?";
                break;
            case (byte) 0x12:  //停车场信息
                sql = "update st_carinfo set st_ci_online = ? where sy_di_code = ?";
                break;
        }
        PreparedStatement pst =  connection.prepareStatement(sql);
        pst.setInt(1, state);
        pst.setString(2, code);
        pst.executeUpdate();
        System.out.println(code + ":数据库更改状态" + state);
    }

    public static int getDeivceHeartNumByCode(String code) throws SQLException {
        int heartNum = 10;
        if (connection == null || connection.isClosed())
            connection = getConnection();
        String sql = "select  sy_di_heartbeat_num  from sy_deviceinfo where sy_di_code = ?";
        PreparedStatement pst = connection.prepareStatement(sql);
        pst.setString(1, code);
        ResultSet resultSet = pst.executeQuery();
        if (resultSet.next())
            heartNum = resultSet.getInt(1);
        return heartNum;
    }


    public static int updateSensorValue(String code, byte[] src, boolean kind) throws SQLException {
//        2字节温度，2字节湿度，2字节数字气压；1byte电量
        if (connection == null || connection.isClosed())
            connection = getConnection();
        String tem = "", damp = "", press = "", timeValue = "", strId = "环境终端";
        double elect = 0.0;
        if (kind) {  //基本信息上传
            if (src.length > 6) {
                tem = String.format("%d.%d", src[1] & 0xFF, src[0] & 0xFF);
                damp = String.format("%d.%d", src[3] & 0xFF, src[2] & 0xFF);
                press = String.format("%d.%d", src[5] & 0xFF, src[4] & 0xFF);
                elect = DataFormat.getV(src[6]);
                SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
                timeValue = df.format(new java.util.Date());  //时间
            }
        } else {
            System.out.println("传感器pda1");
            if (src.length >= 39)
                System.out.println("传感器pda");
            if (src[0] == (byte) '*' && src[38] == (byte) '#') {
                byte[] time = new byte[6];
                System.arraycopy(src, 32, time, 0, 6);
                String strTime = DataFormat.bytes2HexString(time);
                timeValue = String.format("20%s-%s-%s %s:%s:%s", strTime.substring(0, 2), strTime.substring(2, 4),
                        strTime.substring(4, 6), strTime.substring(6, 8), strTime.substring(8, 10), strTime.substring(10, 12));  //截取时间数值
                elect = DataFormat.getV(src[22]);
                if (((src[24] >> 7) & 0x01) == 0x00)
                    tem = String.valueOf((src[25] & 0xFF) / 10.0);
                else
                    tem = "-" + String.valueOf((src[25] & 0xFF) / 10.0);
                double d_damp =  ((src[27] & 0xFF) + (src[26] & 0xFF) * 256) / 10.0;
                damp = String.valueOf(d_damp);  //湿度

                double d_press = ((src[29] & 0xFF) + (src[28] & 0xFF) * 256) / 10.0;
                press = String.valueOf(d_press);   //气压
                System.out.println("press:"+ press);
                byte[] id = new byte[8];
                System.arraycopy(src, 8, id, 0, 4);
                strId = "PDA:"+DataFormat.bytes2HexString(id);
                System.out.println("strId" + strId);
            }
        }
        if (!tem.equals("") && !damp.equals("") && !press.equals("") && !timeValue.equals("")) {
            String insertSql = "insert into se_historyrecord(se_hr_time,sy_di_code,se_hr_tem,se_hr_hum,se_hr_pressure,se_hr_electric,se_hr_cont_code) values(?,?,?,?,?,?,?)";
            PreparedStatement pstInser = connection.prepareStatement(insertSql);
            pstInser.setTimestamp(1, Timestamp.valueOf(timeValue));
            pstInser.setString(2, code);
            pstInser.setString(3, tem);
            pstInser.setString(4, damp);
            pstInser.setString(5, press);
            pstInser.setDouble(6, elect);
            pstInser.setString(7, strId);
            if (pstInser.executeUpdate() > 0) {
                String sql = "update se_sensorinfo set se_si_tem = ?," +
                        "se_si_hum=? ,se_si_pressure = ? ,se_si_electric = ?,se_si_time = ? where sy_di_code = ?";
                PreparedStatement pst = connection.prepareStatement(sql);
                pst.setString(1, tem);
                pst.setString(2, damp);
                pst.setString(3, press);
                pst.setDouble(4, elect);
                pst.setTimestamp(5, Timestamp.valueOf(timeValue));
                pst.setString(6, code);
                return pst.executeUpdate();
            }
        }
        return 0;
    }


}
