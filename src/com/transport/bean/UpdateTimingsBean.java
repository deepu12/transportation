/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.bean;

/**
 *
 * @author trainee
 */
public class UpdateTimingsBean {

     private String idVehicleInfo;

    private String departureTime;
    private String arrivalTime;

    public String getArrivalTime() {
        return arrivalTime;
    }

    public void setArrivalTime(String arrivalTime) {
        this.arrivalTime = arrivalTime;
    }

    public String getDepartureTime() {
        return departureTime;
    }

    public void setDepartureTime(String departureTime) {
        this.departureTime = departureTime;
    }

    public String getIdVehicleInfo() {
        return idVehicleInfo;
    }

    public void setIdVehicleInfo(String idVehicleInfo) {
        this.idVehicleInfo = idVehicleInfo;
    }

    

}
