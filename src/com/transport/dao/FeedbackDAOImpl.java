/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.dao;

import com.transport.bean.FeedbackBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author trainee
 */
public class FeedbackDAOImpl implements FeedbackDAO {

   private Connection con = null;
   private PreparedStatement pst = null;

    public FeedbackDAOImpl(Connection con) {
        this.con = con;
    }

    public boolean insert(FeedbackBean fbb) {

        boolean flag = false;
        System.out.println("ID USER=================hello======"+fbb.getIdUser());
        System.out.println("description"+fbb.getDescription());
        System.out.println("description"+fbb.getFeedbackAbout());
        try {
            System.out.println("connection=========="+con);
            pst = con.prepareStatement("insert into feedback values(?,?,?,?)");
           pst.setInt(1,0);
            pst.setString(2, fbb.getIdUser());
           
            pst.setString(3, fbb.getDescription());
            pst.setString(4, fbb.getFeedbackAbout());
//            pst.setInt(5, fbb.getArea());
//            pst.setInt(6,0);
            int exe = pst.executeUpdate();
            System.out.println("exe======================="+exe);
            if (exe != 0) {
                flag = true;
            }

        } catch (Exception e) {
           e.printStackTrace();
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
}
