package com.fantai.dao;

import com.fantai.annotation.MyBatisRepository;
import com.fantai.entity.UserInfo;

import java.util.List;

@MyBatisRepository
public interface UserInfoMapper {

    UserInfo findById(String id);

    List<UserInfo> findByThing();

}
