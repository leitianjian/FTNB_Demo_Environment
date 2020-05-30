package com.fantai.controller;

import com.fantai.dao.UserInfoMapper;
import com.fantai.entity.LocationInfo;
import com.fantai.entity.UserInfo;
import com.fantai.util.DatabaseUtil;
import com.fantai.util.TCPThreadServerSocket;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by xiaoy_000 on 2017/9/7.
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    public final static int ID_ERROR = 1;
    public final static int PWD_ERROR = 2;
    public final static int ROOT_ERROR = 3;

    public final static int SUCCESS = 0;

    public static HashSet<LocationInfo> lastRetrieve = new HashSet<>();

    @Resource
    private UserInfoMapper userMapper;

    @RequestMapping("/toLogin1.do")
    public String toLogin1(){

        return null;
    }

    @RequestMapping("/toLogin.do")
    public String toLogin(HttpSession session){
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    ServerSocket ss = new ServerSocket(28888);
                    System.out.println("服务器已经启动。。。");
                    while (true) {
                        Socket s = ss.accept();
                        Thread t = new Thread(new TCPThreadServerSocket(s));
                        t.start();
                    }
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }).start();

        session.invalidate();
        return "main/login";
    }

    @RequestMapping("/login.do")
    @ResponseBody
    public int login(String sy_ui_id, String sy_ui_pwd, HttpSession session,HttpServletRequest request){
        UserInfo user = userMapper.findById(sy_ui_id);
        if(user == null){
            return ID_ERROR;
        }else if(!user.getSy_ui_pwd().equals(sy_ui_pwd)){
            return PWD_ERROR;
        }else{
            if(user.getSy_ui_role() == 2){
                session.setAttribute("user", user);
                session.setAttribute("name", user.getSy_ui_name());
                return SUCCESS;
            }else{
                return ROOT_ERROR;
            }
        }
    }

    @RequestMapping("/toIndex.do")
    public String toIndexU(Model model,HttpServletRequest request){
        model.addAttribute("module", "index");
        return "main/index";
    }

    @RequestMapping("/toUpdate.do")
    @ResponseBody
    public List<LocationInfo> toUpdate(HttpServletRequest request) {
        HashSet<LocationInfo> retrievedData = DatabaseUtil.retrieveLocation();
        if (retrievedData != null) {
            System.out.println(retrievedData.size());
        } else {
            System.out.println("null");
        }
        if (retrievedData != null) {
            HashSet<LocationInfo> temp = new HashSet<>(retrievedData);
            retrievedData.removeAll(lastRetrieve);
            System.out.println("filtered: " + retrievedData.size());
            lastRetrieve = temp;
            return new LinkedList<>(retrievedData);
        } else {
            return new LinkedList<>();
        }
//        model.addAttribute("module", "update");
    }

}
