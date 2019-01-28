/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;


import com.transport.bean.AddVehicleBean;
import com.transport.bean.CityResidentsBean;
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
public class CityResidentsDAOImpl implements CityResidentsDAO{

    Connection con=null;
    PreparedStatement pst=null;
    List <AddVehicleBean>list=new ArrayList<AddVehicleBean>();
     public CityResidentsDAOImpl(Connection con) {
        this.con = con;

    }

    public List select(CityResidentsBean crb) {
        
          
        try{
             
            
 pst=con.prepareStatement("select * from vehicleinfo where fromstation=? and tostation=? and vehicletype=?");

            pst.setString(1, crb.getFromStation());
            pst.setString(2, crb.getToStation());
            pst.setString(3, crb.getVehicleType());
           
            //pst.setString(3, crb.getVehicleType());
            
            ResultSet rs=pst.executeQuery();
            
           
            while(rs.next()){
 

            AddVehicleBean avb=new AddVehicleBean();
          avb.setIdVehicleInfo(rs.getString("idvehicleinfo"));
          avb.setFromStation(rs.getString("fromstation"));
          avb.setToStation(rs.getString("tostation"));
          avb.setDuration(rs.getString("duration"));
          avb.setDistance(rs.getString("distance"));
          avb.setHalts(rs.getInt("halts"));
          avb.setFare(rs.getString("fare"));
           avb.setVehicleType(rs.getString("vehicletype"));
          list.add(avb);
          

            }




        }catch(Exception e){
           // e.printStackTrace();
            System.out.println(e);
            
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
