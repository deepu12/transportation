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
public class SaveReplyActionForm extends org.apache.struts.action.ActionForm {
    
    private String answer;
    private int feedbackid;

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public int getFeedbackid() {
        return feedbackid;
    }

    public void setFeedbackid(int feedbackid) {
        this.feedbackid = feedbackid;
    }

    /**
     * @return
     */
   

    /**
     * @param string
     */
    

    /**
     * @return
     */
   

    /**
     *
     */
    public SaveReplyActionForm() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * This is the action called from the Struts framework.
     *
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
       
        return errors;
    }
}
