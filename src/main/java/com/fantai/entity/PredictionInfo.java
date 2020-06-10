package com.fantai.entity;

public class PredictionInfo {

  int pi_region;
  int pi_time_slot;
  double pi_count;

  public int getPi_region() {
    return pi_region;
  }

  public void setPi_region(int pi_region) {
    this.pi_region = pi_region;
  }

  public int getPi_time_slot() {
    return pi_time_slot;
  }

  public void setPi_time_slot(int pi_time_slot) {
    this.pi_time_slot = pi_time_slot;
  }

  public double getPi_count() {
    return pi_count;
  }

  public void setPi_count(double pi_count) {
    this.pi_count = pi_count;
  }
}
