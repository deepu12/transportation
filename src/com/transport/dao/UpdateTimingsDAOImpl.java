/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.dao;

import com.transport.bean.UpdateTimingsBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author trainee
 */
public class UpdateTimingsDAOImpl implements UpdateTimingsDAO {

    Connection con = null;
    PreparedStatement pst = null;

    public UpdateTimingsDAOImpl(Connection con) {
        this.con = con;
    }

    public UpdateTimingsBean insert(UpdateTimingsBean utb) {

        try {

            pst=con.prepareStatement("insert into timings values(?,?,?,?)");
            pst.setInt(1, 0);
            pst.setString(4, utb.getIdVehicleInfo());
            pst.setString(2, utb.getDepartureTime());
            pst.setString(3, utb.getArrivalTime());
            System.out.println("arrival time is: "+utb.getDepartureTime());
            int exe = pst.executeUpdate();
            if (exe != 0) {
                return utb;
            } else {
                return utb = null;

            }
        } catch (Exception e) {

            System.out.println(e);
            return utb = null;
        }
        finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
    }
}
