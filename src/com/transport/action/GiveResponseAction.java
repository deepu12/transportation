/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.action;

import com.transport.actionform.GetFeedbackActionForm;
import com.transport.bean.FeedbackBean;
import com.transport.bean.GetFeedbackBean;
import com.transport.config.DBUtil;
import com.transport.dao.GetFeedbackDAO;
import com.transport.dao.GetFeedbackDAOImpl;
import java.sql.Connection;
import java.util.ArrayList;
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
public class GiveResponseAction extends org.apache.struts.action.Action {

    /*
     * forward name="success" path=""
     */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";

    /**
     * This is the action called from the Struts framework.
     *
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
         HttpSession hs=request.getSession();
           String id = hs.getAttribute("iduser").toString();
       List ls = new ArrayList();
      
       FeedbackBean fbb=new FeedbackBean();
        Connection con = DBUtil.getConnection();
        fbb.setIdUser(id);
        GetFeedbackDAO feed = new GetFeedbackDAOImpl(con);
        List<FeedbackBean> list = feed.feedback(fbb);
        if (list != null) {
            //request.setAttribute("msg"," click here to give feedback");
            request.setAttribute("viewfeedback", list);
            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(FAILURE);
        }
    }
}

