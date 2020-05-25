package com.fantai.dao;

import com.fantai.annotation.MyBatisRepository;
import com.fantai.entity.SensorInfo;

import java.util.List;

@MyBatisRepository
public interface SensorInfoMapper {

    List<SensorInfo> findByUser(String uid);

    SensorInfo findByCode(String code);

}
