/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.actionform;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author trainee
 */
public class UpdateTimingsActionForm extends org.apache.struts.validator.ValidatorForm {
    
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



    /**
     * @return
     */
    
    /**
     *
     */
    public UpdateTimingsActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    /**public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (getName() == null || getName().length() < 1) {
            errors.add("name", new ActionMessage("error.name.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        return errors;
    } */
}
