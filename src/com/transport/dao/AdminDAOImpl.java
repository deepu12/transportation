/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.actionform.AdminActionForm;
import com.transport.bean.AdminBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author trainee
 */
public class AdminDAOImpl implements AdminDAO{

    Connection con=null;
    PreparedStatement pst=null;

    public AdminDAOImpl(Connection con) {
        this.con=con;
    }

    public boolean insert(AdminBean ab) {
       
        boolean flag=false;
        try{
            System.out.println("AREA NAME IS"+ab.getAreaName());
            pst=con.prepareStatement("insert into areas(idarea,areaname) values(?,?)");
            pst.setInt(1,0);
            pst.setString(2, ab.getAreaName());
           int exe= pst.executeUpdate();
           if(exe!=0){

           return true;
           }else{

           return flag;
           }

        }catch(Exception e){
        e.printStackTrace();
            return flag;
        }
finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        
    }


    }
