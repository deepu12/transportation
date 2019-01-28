/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.bean;

import javax.print.DocFlavor.STRING;

/**
 *
 * @author trainee
 */
public class FeedbackBean {

    private String description;
  private String feedbackId;
    private String feedbackAbout;
    private String idUser;
    private String username;
    private String repliedby;
    private String answer;
   private int area;

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getRepliedby() {
        return repliedby;
    }

    public void setRepliedby(String repliedby) {
        this.repliedby = repliedby;
    }

   
   
   
   
   
   
   
   
   
   
   
    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }
    
    
    
    

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    
    
    

    public String getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(String feedbackId) {
        this.feedbackId = feedbackId;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }
    

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFeedbackAbout() {
        return feedbackAbout;
    }

    public void setFeedbackAbout(String feedbackAbout) {
        this.feedbackAbout = feedbackAbout;
    }



}
