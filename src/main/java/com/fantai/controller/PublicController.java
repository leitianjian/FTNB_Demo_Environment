package com.fantai.controller;

import com.fantai.dao.SensorInfoMapper;
import com.fantai.entity.SensorInfo;
import com.fantai.entity.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/public")
public class PublicController {

    @Resource
    private SensorInfoMapper sensorInfoMapper;

    @RequestMapping("/freshSensor.do")
    @ResponseBody
    public List<SensorInfo> freshSensor(HttpServletRequest request){
        UserInfo userInfo = (UserInfo)request.getSession().getAttribute("user");
        String ui_id = userInfo.getSy_ui_id();
        List<SensorInfo> list = sensorInfoMapper.findByUser(ui_id);
        return list;
    }

    @RequestMapping("/toIndex.do")
    public String toIndexU(Model model, HttpServletRequest request){
        model.addAttribute("module", "index");
        return "main/index";
    }

}
