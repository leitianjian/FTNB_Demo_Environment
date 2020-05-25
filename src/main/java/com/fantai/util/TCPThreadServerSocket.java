package com.fantai.util;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;

public class TCPThreadServerSocket implements Runnable {
    private Socket socket;
    private InputStream in;
    private OutputStream out;
    public TCPThreadServerSocket(Socket s) {
        this.socket = s;
    }

    DataMsg dataMsg = new DataMsg();

    public void run() {
        byte[] recData = null;
        try {
            //获取服务端输入的消息
            in = socket.getInputStream();
            //服务端返回的消息
            out = socket.getOutputStream();
            //用一个字节数字来存放消息，提高效率
            while(true) {
                int len = in.available();
                if (len > 0) {
                    recData = new byte[len];
                    in.read(recData);
                    String data = new String(recData);
                    //返回给客户端的消息
                    dataMsg.RecieveDataMsg(recData, recData.length, 0, socket, out);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            try {
                in.close();
                socket.close();
            } catch (IOException e1) {
                e1.printStackTrace();
            }
        } finally {

        }
    }

}
