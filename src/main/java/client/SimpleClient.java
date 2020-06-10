package client;

import com.fantai.util.DatabaseUtil;

import java.io.*;
import java.net.Socket;
import java.nio.charset.StandardCharsets;
import java.sql.SQLException;

public class SimpleClient{
    public static final String targetIP = "127.0.0.1";
    public static int targetPort = 28889;

    public static void main(String[] args) {
        try {

            FileReader fr = new FileReader("E:\\Projects\\Advanced Experiment\\FTNB_Demo_Environment\\src\\main\\java\\client\\predict.csv");
            BufferedReader bf = new BufferedReader(fr);
            String str;
            str = bf.readLine();
            while ((str = bf.readLine()) != null) {
                System.out.println(str);
                DatabaseUtil.updatePrediction(str);
            }
            bf.close();
            fr.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

//
//        try {
//            Socket socket = new Socket(targetIP, targetPort);
//            OutputStream outputStream = socket.getOutputStream();
//            FileReader fr = new FileReader("E:\\Projects\\Advanced Experiment\\FTNB_Demo_Environment\\src\\main\\java\\client\\predict.csv");
//            BufferedReader bf = new BufferedReader(fr);
//            String str;
//            str = bf.readLine();
//            while ((str = bf.readLine()) != null) {
//                System.out.println(str);
//                outputStream.write((str+";").getBytes(StandardCharsets.UTF_8));
//                outputStream.flush();
////                Thread.sleep(1000);
//            }
//            bf.close();
//            fr.close();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
    }

}
