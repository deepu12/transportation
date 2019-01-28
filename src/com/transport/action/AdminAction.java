/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.action;

import com.transport.actionform.AdminActionForm;
import com.transport.bean.AdminBean;
import com.transport.config.DBUtil;
import com.transport.dao.AdminDAO;
import com.transport.dao.AdminDAOImpl;
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
public class AdminAction extends org.apache.struts.action.Action {
    
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
        Connection con=DBUtil.getConnection();
        AdminActionForm aaf= (AdminActionForm) form;
        System.out.println("AREA NAME FROM FORM BEAN IS"+aaf.getAreaName());
        AdminBean ab=new AdminBean();
        ab.setAreaName(aaf.getAreaName());
        AdminDAO ad=new AdminDAOImpl(con);
       boolean b= ad.insert(ab);
       if(b){
        request.setAttribute("area","Area was succesfully inserted");
        return mapping.findForward(SUCCESS);
       }else{
        return mapping.findForward(FAILURE);
       }
        
       
    }
}
