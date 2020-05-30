package com.fantai.entity;

public class LocationInfo {
    public final int id;
    public final long time;
    public final double latitude;
    public final double longitude;

    public LocationInfo(int id, long time, double latitude, double longitude) {
        this.id = id;
        this.time = time;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof LocationInfo){
            return this.id == ((LocationInfo) obj).id &&
                    this.time == ((LocationInfo) obj).time;
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.id  + new Long(this.time).hashCode();
    }

    @Override
    public String toString() {
        return this.id + " " + this.time + " " + this.latitude + " " + this.longitude;
    }
}
