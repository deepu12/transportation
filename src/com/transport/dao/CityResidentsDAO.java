/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.bean.CityResidentsBean;
import java.util.List;

/**
 *
 * @author trainee
 */
public interface  CityResidentsDAO {

    public List select(CityResidentsBean rb);

}
