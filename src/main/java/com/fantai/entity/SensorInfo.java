package com.fantai.entity;

import java.sql.Timestamp;

public class SensorInfo {

    private Integer se_si_id;
    private String sy_di_code;
    private Double se_si_tem;
    private Double se_si_hum;
    private Double se_si_pressure;
    private String se_si_imei;
    private String se_si_sim;
    private Integer se_si_online;
    private Double se_si_electric;
    private Timestamp se_si_time;

    public Integer getSe_si_id() {
        return se_si_id;
    }
    public void setSe_si_id(Integer se_si_id) {
        this.se_si_id = se_si_id;
    }

    public String getSy_di_code() {
        return sy_di_code;
    }
    public void setSy_di_code(String sy_di_code) {
        this.sy_di_code = sy_di_code;
    }

    public Double getSe_si_tem() {
        return se_si_tem;
    }
    public void setSe_si_tem(Double se_si_tem) {
        this.se_si_tem = se_si_tem;
    }

    public Double getSe_si_hum() {
        return se_si_hum;
    }
    public void setSe_si_hum(Double se_si_hum) {
        this.se_si_hum = se_si_hum;
    }

    public Double getSe_si_pressure() {
        return se_si_pressure;
    }
    public void setSe_si_pressure(Double se_si_pressure) {
        this.se_si_pressure = se_si_pressure;
    }

    public String getSe_si_imei() {
        return se_si_imei;
    }
    public void setSe_si_imei(String se_si_imei) {
        this.se_si_imei = se_si_imei;
    }

    public String getSe_si_sim() {
        return se_si_sim;
    }
    public void setSe_si_sim(String se_si_sim) {
        this.se_si_sim = se_si_sim;
    }

    public Integer getSe_si_online() {
        return se_si_online;
    }
    public void setSe_si_online(Integer se_si_online) {
        this.se_si_online = se_si_online;
    }

    public Double getSe_si_electric() {
        return se_si_electric;
    }
    public void setSe_si_electric(Double se_si_electric) {
        this.se_si_electric = se_si_electric;
    }

    public Timestamp getSe_si_time() {
        return se_si_time;
    }
    public void setSe_si_time(Timestamp se_si_time) {
        this.se_si_time = se_si_time;
    }

    private String sy_ui_id;
    private String sy_ui_name;
    private Integer sy_si_id;
    private String sy_si_name;

    public String getSy_ui_id() {
        return sy_ui_id;
    }
    public void setSy_ui_id(String sy_ui_id) {
        this.sy_ui_id = sy_ui_id;
    }

    public String getSy_ui_name() {
        return sy_ui_name;
    }
    public void setSy_ui_name(String sy_ui_name) {
        this.sy_ui_name = sy_ui_name;
    }

    public Integer getSy_si_id() {
        return sy_si_id;
    }
    public void setSy_si_id(Integer sy_si_id) {
        this.sy_si_id = sy_si_id;
    }

    public String getSy_si_name() {
        return sy_si_name;
    }
    public void setSy_si_name(String sy_si_name) {
        this.sy_si_name = sy_si_name;
    }

    private Timestamp sy_di_reg_time;
    private Timestamp sy_di_con_time;
    private Integer sy_di_con_type;
    private String sy_di_ip;
    private String sy_di_port;
    private Double sy_di_gps_num;

    public Timestamp getSy_di_reg_time() {
        return sy_di_reg_time;
    }
    public void setSy_di_reg_time(Timestamp sy_di_reg_time) {
        this.sy_di_reg_time = sy_di_reg_time;
    }

    public Timestamp getSy_di_con_time() {
        return sy_di_con_time;
    }
    public void setSy_di_con_time(Timestamp sy_di_con_time) {
        this.sy_di_con_time = sy_di_con_time;
    }

    public Integer getSy_di_con_type() {
        return sy_di_con_type;
    }
    public void setSy_di_con_type(Integer sy_di_con_type) {
        this.sy_di_con_type = sy_di_con_type;
    }

    public String getSy_di_ip() {
        return sy_di_ip;
    }
    public void setSy_di_ip(String sy_di_ip) {
        this.sy_di_ip = sy_di_ip;
    }

    public String getSy_di_port() {
        return sy_di_port;
    }
    public void setSy_di_port(String sy_di_port) {
        this.sy_di_port = sy_di_port;
    }

    public Double getSy_di_gps_num() {
        return sy_di_gps_num;
    }
    public void setSy_di_gps_num(Double sy_di_gps_num) {
        this.sy_di_gps_num = sy_di_gps_num;
    }

    private Double se_si_up_time;

    public Double getSe_si_up_time() {
        return se_si_up_time;
    }
    public void setSe_si_up_time(Double se_si_up_time) {
        this.se_si_up_time = se_si_up_time;
    }

    private Integer sy_di_heartbeat_num;

    public Integer getSy_di_heartbeat_num() {
        return sy_di_heartbeat_num;
    }
    public void setSy_di_heartbeat_num(Integer sy_di_heartbeat_num) {
        this.sy_di_heartbeat_num = sy_di_heartbeat_num;
    }

}
