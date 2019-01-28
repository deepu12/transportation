/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.bean.UpdateTimingsBean;
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
public class ViewTimingsDAOImpl implements ViewTimingsDAO{

    Connection con=null;
    PreparedStatement pst=null;
    List list=new ArrayList();
    
    public ViewTimingsDAOImpl(Connection con){
    this.con=con;
    }

    public List select(String id) {
            System.out.println("ID IS:"+id);

        try{
System.out.println("is issssssss222222222222");
           pst= con.prepareStatement("select * from timings where idVehicleInfo=?");
            System.out.println("is issssssss333333333333");
                  pst.setString(1, id);
                    System.out.println("is issssssss");
                  System.out.println("is issssssss"+id);
                  ResultSet rs=pst.executeQuery();
                  while(rs.next()){
                  UpdateTimingsBean utb=new UpdateTimingsBean();
                  utb.setDepartureTime(rs.getString("departuretime"));
                  utb.setArrivalTime(rs.getString("arrivaltime"));
                      System.out.println("DEPARTURE TIME IS:"+utb.getDepartureTime());
                      System.out.println("ARRIVAL TIME IS:"+utb.getArrivalTime());
                  list.add(utb);
                 
                  }

        }catch(Exception e){

            System.out.println(e);
        }finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        return list;


    }


}
