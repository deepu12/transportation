/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.bean;

/**
 *
 * @author trainee
 */
public class CityResidentsBean {

    private String fromStation;
    private String toStation;
    private String vehicleType;
    private String areaName;
    private int idArea;

    public String getFromStation() {
        return fromStation;
    }

    public void setFromStation(String fromStation) {
        this.fromStation = fromStation;
    }

    public String getToStation() {
        return toStation;
    }

    public void setToStation(String toStation) {
        this.toStation = toStation;
    }

    public String getVehicleType() {
        return vehicleType;
    }

    public void setVehicleType(String vehicleType) {
        this.vehicleType = vehicleType;
    }

}
