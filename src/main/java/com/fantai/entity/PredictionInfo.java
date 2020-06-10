package com.fantai.entity;

public class PredictionInfo {

  private Integer pi_region;
  private Integer pi_time_slot;
  private Double pi_count;

  public PredictionInfo(int pi_region, int pi_time_slot, double pi_count) {
    this.pi_region = pi_region;
    this.pi_time_slot = pi_time_slot;
    this.pi_count = pi_count;
  }

  public Integer getPi_region() {
    return pi_region;
  }

  public void setPi_region(Integer pi_region) {
    this.pi_region = pi_region;
  }

  public Integer getPi_time_slot() {
    return pi_time_slot;
  }

  public void setPi_time_slot(Integer pi_time_slot) {
    this.pi_time_slot = pi_time_slot;
  }

  public Double getPi_count() {
    return pi_count;
  }

  public void setPi_count(Double pi_count) {
    this.pi_count = pi_count;
  }
}
