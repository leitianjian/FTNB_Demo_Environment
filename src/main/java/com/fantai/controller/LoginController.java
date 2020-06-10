package com.fantai.controller;

import com.fantai.dao.UserInfoMapper;
import com.fantai.entity.LocationInfo;
import com.fantai.entity.PredictionInfo;
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
    public static int time_slot = 0;

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
        }else if(!user.getUi_pwd().equals(sy_ui_pwd)){
            return PWD_ERROR;
        }else{
            session.setAttribute("user", user);
            session.setAttribute("name", user.getUi_name());
            return SUCCESS;
        }
    }


    @RequestMapping("/SetTime.do")
    @ResponseBody
    public void setTime(String time, HttpSession session,HttpServletRequest request){
        System.out.println("DEBUG:" + time);
        time_slot = Integer.parseInt(time);
    }


    @RequestMapping("/toIndex.do")
    public String toIndexU(Model model,HttpServletRequest request){
        model.addAttribute("module", "index");
        return "main/index";
    }

    @RequestMapping("/toUpdate.do")
    @ResponseBody
    public List<PredictionInfo> toUpdate(HttpServletRequest request) {
        System.out.println("DEBUG:" + "ToUpdate");
        List<PredictionInfo> retrievedData = DatabaseUtil.retrievePrediction(time_slot);
        if (retrievedData == null) {
            return null;
        }
        int len = retrievedData.size();
        for (int i=0;i<len; ++i) {
            PredictionInfo info = retrievedData.get(i);
            info.setPi_count(Math.log(info.getPi_count()*3000 + 2));
        }
        return retrievedData;
    }

}
