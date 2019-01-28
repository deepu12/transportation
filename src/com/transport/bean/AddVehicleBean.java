/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.bean;

import org.apache.tomcat.jni.Time;

/**
 *
 * @author trainee
 */
public class AddVehicleBean {


    private String idVehicleInfo;

    private String fromStation ;
    private String toStation ;
    private String distance ;
    private String duration ;
    private int halts;
    private String fare ;
    private String idUser;
    private String vehicleType;
    private int idArea;
    private String areaName;

    public String getAreaName() {
        return areaName;
    }

    public void setAreaName(String areaName) {
        this.areaName = areaName;
    }

    public int getIdArea() {
        return idArea;
    }

    public void setIdArea(int idArea) {
        this.idArea = idArea;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

    public String getFare() {
        return fare;
    }

    public void setFare(String fare) {
        this.fare = fare;
    }

    public String getFromStation() {
        return fromStation;
    }

    public void setFromStation(String fromStation) {
        this.fromStation = fromStation;
    }

    public int getHalts() {
        return halts;
    }

    public void setHalts(int halts) {
        this.halts = halts;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getIdVehicleInfo() {
        return idVehicleInfo;
    }

    public void setIdVehicleInfo(String idVehicleInfo) {
        this.idVehicleInfo = idVehicleInfo;
    }

    public String getToStation() {
        return toStation;
    }

    public void setToStation(String toStation) {
        this.toStation = toStation;
    }


}
