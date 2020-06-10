package com.fantai.dao;

import com.fantai.annotation.MyBatisRepository;
import com.fantai.entity.PredictionInfo;

import java.util.List;

@MyBatisRepository
public interface PredictionInfoMapper {
  void add(PredictionInfo predictionInfo);
  List<PredictionInfo> getByTime(Integer time);
}
