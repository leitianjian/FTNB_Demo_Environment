package com.fantai.controller;

import com.fantai.dao.UserInfoMapper;
import com.fantai.entity.UserInfo;
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

    @Resource
    private UserInfoMapper userMapper;

    @RequestMapping("/toLogin1.do")
    public String toLogin1(){
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
        return null;
    }

    @RequestMapping("/toLogin.do")
    public String toLogin(HttpSession session){
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

}
