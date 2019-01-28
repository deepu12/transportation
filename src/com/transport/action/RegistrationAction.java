/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.action;

import com.transport.actionform.RegistrationActionFormBean;
import com.transport.bean.RegistrationBean;
import com.transport.config.DBUtil;
import com.transport.dao.RegistrationDAO;
import com.transport.dao.RegistrationDAOImpl;
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
public class RegistrationAction extends org.apache.struts.action.Action {
    
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
        

        
        RegistrationActionFormBean raf=(RegistrationActionFormBean) form;
        RegistrationBean rb= new RegistrationBean();
        rb.setIdRole(raf.getIdRole());
        //System.out.println("role id from raf form "+raf.getIdRole());
        //System.out.println("role id is "+rb.getIdRole());
        //rb.setIdUser(raf.getIdUser());
         //System.out.println("user id from raf form "+raf.getIdUser());
        //System.out.println("user id is "+rb.getIdUser());
        rb.setName(raf.getName());
        rb.setUserName(raf.getUserName());
        rb.setPassword(raf.getPassword());
        rb.setContactNo(raf.getContactNo());
        rb.setArea(raf.getArea());
         //System.out.println("user contact no from raf form "+raf.getContactNo());
        //System.out.println("user contact num is "+rb.getContactNo());

        Connection con=DBUtil.getConnection();
           System.out.println(con);
        
         RegistrationDAO rd=new RegistrationDAOImpl(con);
         boolean b =rd.insert(rb);
         if(b){
            request.setAttribute("msg", "Registered Succefully");
            return mapping.findForward(SUCCESS);
         }else{
         return mapping.findForward(FAILURE);
         }
        
    }
}
