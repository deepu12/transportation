/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.bean.AddVehicleBean;
import com.transport.bean.SaveReply;

/**
 *
 * @author trainee
 */
public interface  AddVehicleDAO {

    public boolean insert(AddVehicleBean avb);
 public boolean saveReply(SaveReply sr);
}
