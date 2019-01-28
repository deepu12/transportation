/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.bean.FeedbackBean;
import com.transport.bean.GetFeedbackBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author trainee
 */
public class GetFeedbackDAOImpl implements GetFeedbackDAO {
    
    Connection con=null;
    PreparedStatement pst=null;

    public GetFeedbackDAOImpl(Connection con){
        this.con=con;
    } 

    public List select(GetFeedbackBean gfb) {
             List list =new ArrayList();
        try{

           
            pst=con.prepareStatement("SELECT f.iduser,u.name,f.description,f.idfeedback FROM TransportationPortal.feedback f join users u on u.iduser=f.iduser where f.feedbackabout=? and f.idarea=?");
            pst.setString(1, gfb.getFeedbackAbout());
            pst.setInt(2,gfb.getArea());
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                 FeedbackBean fbb=new FeedbackBean();
                fbb.setIdUser(rs.getString(1));
                fbb.setUsername(rs.getString(2));
                fbb.setDescription(rs.getString(3));
                fbb.setFeedbackId(rs.getString(4));
                list.add(fbb);



            }

        }catch(Exception e){

                e.printStackTrace();

        }
finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        return list;

    }

    public List feedback(FeedbackBean fbb) {
          List list =new ArrayList();
        try{
            int userId=0;
     pst=con.prepareStatement("SELECT idarea FROM TransportationPortal.users where iduser=?");
       pst.setString(1,fbb.getIdUser());
       ResultSet rs=pst.executeQuery();
      while(rs.next())
      {
        userId=rs.getInt(1);  
      }
           
            pst=con.prepareStatement("SELECT f.iduser,u.name,f.description,f.idfeedback FROM TransportationPortal.feedback f join users u on u.iduser=f.iduser where f.idarea=? and f.isActive=0");
           pst.setInt(1,userId);
            ResultSet rs1=pst.executeQuery();
            while(rs1.next()){
                 FeedbackBean fbb1=new FeedbackBean();
                fbb1.setIdUser(rs1.getString(1));
                fbb1.setUsername(rs1.getString(2));
                fbb1.setDescription(rs1.getString(3));
                fbb1.setFeedbackId(rs1.getString(4));
                list.add(fbb1);



            }

        }catch(Exception e){

                e.printStackTrace();

        }
finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        return list;

    }

    public List reply(GetFeedbackBean gfb) {
         List list =new ArrayList();
        try{

           
            pst=con.prepareStatement("SELECT f.feedbackabout,f.description,f.idfeedback FROM TransportationPortal.feedback f join users u on u.iduser=f.iduser where f.idfeedback=?");
            pst.setInt(1, gfb.getFeedid());
          
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                 FeedbackBean fbb=new FeedbackBean();
              
                fbb.setUsername(rs.getString(1));
                fbb.setDescription(rs.getString(2));
                fbb.setFeedbackId(rs.getString(3));
                list.add(fbb);



            }

        }catch(Exception e){

                e.printStackTrace();

        }
finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        return list;

    }

    public List viewreply(GetFeedbackBean gfb) {
         List list =new ArrayList();
        try{

           
            pst=con.prepareStatement("SELECT f.feedbackabout,f.description,u.name,r.answer,um.name FROM TransportationPortal.feedback f join users u on u.iduser=f.iduser join response_master r on r.idfeedback=f.idfeedback join users um on um.iduser=r.postedby where f.idfeedback=?");
            pst.setInt(1, gfb.getFeedid());
          
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                 FeedbackBean fbb=new FeedbackBean();
              
                fbb.setFeedbackAbout(rs.getString(1));
                fbb.setDescription(rs.getString(2));
                fbb.setUsername(rs.getString(3));
                fbb.setAnswer(rs.getString(4));
                fbb.setRepliedby(rs.getString(5));
                list.add(fbb);



            }

        }catch(Exception e){

                e.printStackTrace();

        }
finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        return list;

    }






}
