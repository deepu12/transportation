/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.action;

import com.transport.actionform.CityResidentsActionForm;
import com.transport.bean.AddVehicleBean;
import com.transport.bean.CityResidentsBean;
import com.transport.config.DBUtil;
import com.transport.dao.CityResidentsDAO;
import com.transport.dao.CityResidentsDAOImpl;
import java.sql.Connection;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author trainee
 */
public class CityResidentsAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
        private static final String FAILURE = "failure";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

            Connection con = DBUtil.getConnection();
       CityResidentsActionForm cra=(CityResidentsActionForm) form;
       CityResidentsBean crb=new CityResidentsBean();
       HttpSession hs=request.getSession();
       crb.setFromStation(cra.getFromStation());
       crb.setToStation(cra.getToStation());
       crb.setVehicleType(cra.getVehicleType());
       
       CityResidentsDAO crd=new CityResidentsDAOImpl(con);
       List <AddVehicleBean>list=crd.select(crb);
//       System.out.println("avb1 id testing is:"+avb1.getFromStation());
       if(list!=null){
       //request.setAttribute("msg"," click here to give feedback");
       request.setAttribute("viewvehicleinfo", list);
       return mapping.findForward(SUCCESS);
       }
       else{
       return mapping.findForward(FAILURE);
       }


        
    }
}
