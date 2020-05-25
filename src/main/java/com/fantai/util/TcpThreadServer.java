package com.fantai.util;

import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;

public class TcpThreadServer {
    private static final int PORT = 6666;

    public void start() throws Exception{
        ServerSocket ss = new ServerSocket(PORT);
        while (true) {
            Socket s = ss.accept();
            Thread t = new Thread(new TCPThreadServerSocket(s));
            t.start();
        }
    }

    public static void main(String[] args) {
        int count = 1;
        try {
            /**
             * 创建一个ServerSocket对象，并给它制定一个端口号，
             * 通过这个端口号来监听客户端的连接，服务端接受客户端连接的请求是
             * 不间断地接受的，所以服务端的编程一般都永无休止的运行
             */
            ServerSocket ss = new ServerSocket(PORT);
            System.out.println("服务器已经启动。。。");
            while (true) {
                /**
                 * 在服务端调用accept()方法接受客户端的连接对象，accept()方法是
                 * 一个阻塞式的方法，一直傻傻地等待着是否有客户端申请连接
                 */

                Socket s = ss.accept();
                System.out.println("第" + count + "个连接,IP地址是："
                        + s.getInetAddress());
                count++;
                /**
                 * 服务端使用多线程方便多客户端的连接
                 * 这里将服务端的socket传给内部类，方便每个客户端都创建一个线程
                 */
                Thread t = new Thread(new TCPThreadServerSocket(s));
                t.start();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
