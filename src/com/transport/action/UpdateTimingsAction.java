/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.action;

import com.transport.actionform.UpdateTimingsActionForm;
import com.transport.bean.UpdateTimingsBean;
import com.transport.config.DBUtil;
import com.transport.dao.UpdateTimingsDAO;
import com.transport.dao.UpdateTimingsDAOImpl;
import java.sql.Connection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author trainee
 */
public class UpdateTimingsAction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String  FAILURE= "failure";
    
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

        UpdateTimingsActionForm utf= (UpdateTimingsActionForm) form;
        UpdateTimingsBean utb=new UpdateTimingsBean();
      Connection con=  DBUtil.getConnection();

        utb.setIdVehicleInfo(utf.getIdVehicleInfo());
        utb.setDepartureTime(utf.getDepartureTime());
        utb.setArrivalTime(utf.getArrivalTime());
         System.out.println("VEHICLE ID is: "+utf.getIdVehicleInfo());
         System.out.println("DEPARTURE TIME is: "+utf.getDepartureTime());
          System.out.println("arrival time is: "+utb.getArrivalTime());
        UpdateTimingsDAO utd=new UpdateTimingsDAOImpl(con);
        UpdateTimingsBean utb1=utd.insert(utb);
        if(utb1!=null){
            request.setAttribute("msg1", "Timings Updated Successfully");
        return mapping.findForward(SUCCESS);

        }else
        return mapping.findForward(FAILURE);
    }
}
