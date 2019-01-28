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
public class GetFeedbackActionForm extends org.apache.struts.validator.ValidatorForm {
    
    private String feedbackAbout;
    
    private int area;

    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }
    
    
    
    
    
    

    public String getFeedbackAbout() {
        return feedbackAbout;
    }

    public void setFeedbackAbout(String feedbackAbout) {
        this.feedbackAbout = feedbackAbout;
    }

    
    /**
     *
     */
    public GetFeedbackActionForm() {
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
    }*/
}
