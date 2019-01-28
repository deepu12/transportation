/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.dao;

import com.transport.bean.LoginBean;
import com.transport.bean.RegistrationBean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author trainee
 */
public class LoginDAOImpl implements LoginDAO {

    private Connection con = null;
    PreparedStatement pst = null;

    public LoginDAOImpl(Connection con) {
        this.con = con;

    }

    public RegistrationBean select(RegistrationBean rb) {

        //pst=con.prepareStatement("select idrole from ")

        try {

            //String sql = "select idrole from users where username=? and password=?";
            pst=con.prepareStatement("select * from users where username=? and password=?");
            pst.setString(1, rb.getUserName());
            pst.setString(2, rb.getPassword());
            System.out.println(rb.getUserName());
            System.out.println(rb.getPassword());
            ResultSet rs=pst.executeQuery();
            while(rs.next()){
                
          rb.setIdRole(rs.getInt("idrole"));
          rb.setIdUser(rs.getInt("iduser"));
          System.out.println("role id isiiiiiiiiii"+rs.getInt("idrole"));
        

            }

        } catch (Exception e) {
            System.out.println("Exception in login implementation "+e);

            return rb = null;
        }
        finally{
            try {
                con.close();
            } catch (SQLException ex) {
                
            }
        }
        return rb;

    }
}
