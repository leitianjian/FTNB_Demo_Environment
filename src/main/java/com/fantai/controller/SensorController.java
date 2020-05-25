package com.fantai.controller;

import com.fantai.dao.SensorInfoMapper;
import com.fantai.entity.SensorInfo;
import com.fantai.entity.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by xiaoy_000 on 2017/9/12.
 */
@Controller
@RequestMapping("/sensor")
public class SensorController {

    @Resource
    private SensorInfoMapper sensorInfoMapper;

    @RequestMapping("/findByThing.do")
    public String findByThing(Model model, HttpServletRequest request){
        UserInfo u = (UserInfo)request.getSession().getAttribute("user");
        if(u.getSy_ui_role() == 2){
            List<SensorInfo> list = sensorInfoMapper.findByUser(u.getSy_ui_id());
            model.addAttribute("module", "sensor_list");
            model.addAttribute("sensorinfos", list);
            return "sensor/findByUser";
        }
        return null;
    }

}
