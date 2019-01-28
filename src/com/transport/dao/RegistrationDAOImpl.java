/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.bean.RegistrationBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author trainee
 */
public class RegistrationDAOImpl implements  RegistrationDAO {

    private Connection con=null;
    PreparedStatement pst=null;

    public RegistrationDAOImpl(Connection con) {
        this.con=con;

    }
    
    public boolean insert(RegistrationBean rb){

        //String INSERT_QUERY = "INSERT INTO users(idrole,name,userame,password,iduser,contactno) VALUES(?,?,?,?,?,?)";
        boolean flag=false;
        try {

           // con= DBUtil.getConnection();
            pst = con.prepareStatement("insert into users values(?,?,?,?,?,?,?)");
            pst.setInt(6, rb.getIdRole());
            pst.setInt(1, 0);
            pst.setString(2, rb.getName());
            pst.setString(3, rb.getUserName());
            pst.setString(4, rb.getPassword());
            pst.setLong(5, rb.getContactNo());
            pst.setInt(7,rb.getArea());

            int i=pst.executeUpdate();
            if(i!=0){
                return true;
            }else{
                return flag;
            }

        } catch (Exception ex) {

            System.out.println("Exception in implementation class"+ex);
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
