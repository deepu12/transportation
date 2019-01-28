/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.action;

import com.transport.actionform.LoginActionFormBean;
import com.transport.bean.LoginBean;
import com.transport.bean.RegistrationBean;
import com.transport.config.DBUtil;
import com.transport.dao.LoginDAO;
import com.transport.dao.LoginDAOImpl;
import java.sql.Connection;
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
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";

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
        HttpSession hs= request.getSession();
        Connection con = DBUtil.getConnection();
        LoginActionFormBean laf = (LoginActionFormBean) form;
        RegistrationBean rb = new RegistrationBean();
        rb.setUserName(laf.getUserName());
        rb.setPassword(laf.getPassword());
       // System.out.println(laf.getUserName());
        //System.out.println(laf.getPassword());
        //String username=lb.getUsername();
        //String password=lb.getPassword();

        LoginDAO ld = new LoginDAOImpl(con);
        RegistrationBean rb1 = ld.select(rb);
        hs.setAttribute("idrole", rb1.getIdRole());
        System.out.println("SESSION ID OF USER ID IS"+rb1.getIdUser());
        if (rb1 != null) {
            if (rb1.getIdRole() == 2) {
                hs.setAttribute("iduser", rb1.getIdUser());
                return mapping.findForward("cityempsview");
            } else if (rb1.getIdRole() == 3) {
                hs.setAttribute("iduser", rb1.getIdUser());
                return mapping.findForward("cityresidentsmenu");
            } else if(rb1.getIdRole() == 1){
                hs.setAttribute("iduser", rb1.getIdUser());
              return mapping.findForward("admin");
            }else
            {
                request.setAttribute("loginfail", "Username and Password is not matched");
            return mapping.findForward("failure");
            }
        } else {
            request.setAttribute("loginfail", "Username and Password is not matched");
            return mapping.findForward("failure");
        }
    }
}
