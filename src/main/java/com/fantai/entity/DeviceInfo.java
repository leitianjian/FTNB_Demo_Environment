package com.fantai.entity;

import java.sql.Timestamp;

public class DeviceInfo {

    private Integer sy_di_id;
    private String sy_di_code;
    private String sy_di_identify;
    private Integer sy_di_type;
    private Integer sy_di_status;
    private Timestamp sy_di_reg_time;
    private String sy_ui_id;
    private Timestamp sy_di_con_time;
    private Integer sy_di_con_num;
    private Integer sy_di_con_type;
    private String sy_di_ip;
    private String sy_di_port;
    private Double sy_di_gps_num;
    private String sy_di_gps_value;
    private String sy_di_gps_other;
    private Timestamp sy_di_gps_time;

    public Integer getSy_di_id() {
        return sy_di_id;
    }
    public void setSy_di_id(Integer sy_di_id) {
        this.sy_di_id = sy_di_id;
    }

    public String getSy_di_code() {
        return sy_di_code;
    }
    public void setSy_di_code(String sy_di_code) {
        this.sy_di_code = sy_di_code;
    }

    public String getSy_di_identify() {
        return sy_di_identify;
    }
    public void setSy_di_identify(String sy_di_identify) {
        this.sy_di_identify = sy_di_identify;
    }

    public Integer getSy_di_type() {
        return sy_di_type;
    }
    public void setSy_di_type(Integer sy_di_type) {
        this.sy_di_type = sy_di_type;
    }

    public Integer getSy_di_status() {
        return sy_di_status;
    }
    public void setSy_di_status(Integer sy_di_status) {
        this.sy_di_status = sy_di_status;
    }

    public Timestamp getSy_di_reg_time() {
        return sy_di_reg_time;
    }
    public void setSy_di_reg_time(Timestamp sy_di_reg_time) {
        this.sy_di_reg_time = sy_di_reg_time;
    }

    public String getSy_ui_id() {
        return sy_ui_id;
    }
    public void setSy_ui_id(String sy_ui_id) {
        this.sy_ui_id = sy_ui_id;
    }

    public Timestamp getSy_di_con_time() {
        return sy_di_con_time;
    }
    public void setSy_di_con_time(Timestamp sy_di_con_time) {
        this.sy_di_con_time = sy_di_con_time;
    }

    public Integer getSy_di_con_num() {
        return sy_di_con_num;
    }
    public void setSy_di_con_num(Integer sy_di_con_num) {
        this.sy_di_con_num = sy_di_con_num;
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

    public String getSy_di_gps_value() {
        return sy_di_gps_value;
    }
    public void setSy_di_gps_value(String sy_di_gps_value) {
        this.sy_di_gps_value = sy_di_gps_value;
    }

    public String getSy_di_gps_other() {
        return sy_di_gps_other;
    }
    public void setSy_di_gps_other(String sy_di_gps_other) {
        this.sy_di_gps_other = sy_di_gps_other;
    }

    public Timestamp getSy_di_gps_time() {
        return sy_di_gps_time;
    }
    public void setSy_di_gps_time(Timestamp sy_di_gps_time) {
        this.sy_di_gps_time = sy_di_gps_time;
    }

    private String sy_ui_name;
    private Integer sy_si_id;
    private String sy_si_name;

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

    private Integer sy_di_signal;
    private Integer sy_di_gps_satellite;
    private Integer sy_di_heartbeat_num;

    public Integer getSy_di_signal() {
        return sy_di_signal;
    }
    public void setSy_di_signal(Integer sy_di_signal) {
        this.sy_di_signal = sy_di_signal;
    }

    public Integer getSy_di_gps_satellite() {
        return sy_di_gps_satellite;
    }
    public void setSy_di_gps_satellite(Integer sy_di_gps_satellite) {
        this.sy_di_gps_satellite = sy_di_gps_satellite;
    }

    public Integer getSy_di_heartbeat_num() {
        return sy_di_heartbeat_num;
    }
    public void setSy_di_heartbeat_num(Integer sy_di_heartbeat_num) {
        this.sy_di_heartbeat_num = sy_di_heartbeat_num;
    }

    private String sy_di_nfc;

    public String getSy_di_nfc() {
        return sy_di_nfc;
    }
    public void setSy_di_nfc(String sy_di_nfc) {
        this.sy_di_nfc = sy_di_nfc;
    }

}
