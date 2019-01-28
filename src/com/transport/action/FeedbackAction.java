/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.action;

import com.transport.actionform.FeedbackActionForm;
import com.transport.bean.FeedbackBean;
import com.transport.config.DBUtil;
import com.transport.dao.FeedbackDAO;
import com.transport.dao.FeedbackDAOImpl;
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
public class FeedbackAction extends org.apache.struts.action.Action {
    
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
            {
        Connection con=DBUtil.getConnection();
         HttpSession hs=request.getSession();
         FeedbackActionForm fba=(FeedbackActionForm) form;
        FeedbackBean fbb=new FeedbackBean();
        try{
       

        
        fbb.setDescription(fba.getDescription());
        fbb.setFeedbackAbout(fba.getFeedbackAbout());
        fbb.setArea(fba.getArea());
        String id = hs.getAttribute("iduser").toString();



            System.out.println("Session value========================Action"+id);
        fbb.setIdUser(id);
        System.out.println("ID USER======================="+fbb.getIdUser());
        System.out.println("feedback about======================="+fbb.getFeedbackAbout());
        FeedbackDAO fbd=new FeedbackDAOImpl(con);
            System.out.println("connection in action===================================="+con);
        boolean b=fbd.insert(fbb);
        System.out.println("falg======================="+b);
         if (b) {
             request.setAttribute("msg2", " feedback is successfully submitted");
                //System.out.println("falg======================="+b);
                return mapping.findForward(SUCCESS);
            } else {
                request.setAttribute("msg", " ----Try Again----");
                return mapping.findForward(FAILURE);
            }
        } catch (Exception e) {

            System.out.println(e);
            return mapping.findForward(FAILURE);
        }
    }
}
