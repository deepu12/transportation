/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.dao;

import com.transport.bean.AddVehicleBean;
import com.transport.bean.SaveReply;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author trainee
 */
public class AddVehicleDAOImpl implements AddVehicleDAO {

    private Connection con = null;
    PreparedStatement pst = null;
    PreparedStatement pst1 = null;

    public AddVehicleDAOImpl(Connection con) {
        this.con = con;

    }

    public AddVehicleDAOImpl() {
        throw new UnsupportedOperationException("Not yet implemented");
    }

    public boolean insert(AddVehicleBean avb) {
        boolean flag = false;
        try {

            // con= DBUtil.getConnection();
            pst = con.prepareStatement("insert into vehicleinfo values(?,?,?,?,?,?,?,?,?)");
            pst.setString(1, avb.getIdVehicleInfo());
            pst.setString(2, avb.getFromStation());
            pst.setString(3, avb.getToStation());
            pst.setString(4, avb.getFare());
            pst.setString(5, avb.getDuration());
            pst.setString(6, avb.getDistance());
            pst.setString(7, avb.getIdUser());
            pst.setInt(8, avb.getHalts());
            pst.setString(9, avb.getVehicleType());

            int i = pst.executeUpdate();
            if (i != 0) {

                flag = true;

            }

        } catch (Exception ex) {

            System.out.println("Exception in implementation class" + ex);
            return flag;
        }
        
        finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        
        
        
        
        

        return flag;
    }

    public boolean saveReply(SaveReply sr) {
        boolean flag = false;
        try {
             con.setAutoCommit(false);
            // con= DBUtil.getConnection();
            pst = con.prepareStatement("insert into response_master values(?,?,?,?)");
            pst.setInt(1, 0);
            pst.setInt(2, sr.getFeedbackid());
            pst.setString(3, sr.getUserid());
            pst.setString(4, sr.getAnswer());


            int i = pst.executeUpdate();
         
           
            if (i != 0) {
          
            pst1 = con.prepareStatement("update feedback set isActive='1' where idfeedback=?");
            pst1.setInt(1, sr.getFeedbackid());
            pst1.executeUpdate();
               con.setAutoCommit(true);
            flag = true;

            }


        } catch (Exception ex) {

            ex.printStackTrace();
            return flag;
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        

        return flag;
    }
}
