/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.action;

import com.transport.config.DBUtil;
import com.transport.dao.ViewTimingsDAO;
import com.transport.dao.ViewTimingsDAOImpl;
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
public class ViewTimingsAction1 extends org.apache.struts.action.Action {

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
        HttpSession hs = request.getSession();
        Connection con = DBUtil.getConnection();
        //int id = Integer.parseInt(request.getParameter("com"));
        String id = request.getParameter("com");
        Integer idUser = (Integer) hs.getAttribute("iduser");
        System.out.println("IDUSERRR IS:" + idUser);
        System.out.println("vehicle id IS :" + id);
        ViewTimingsDAO vtd = new ViewTimingsDAOImpl(con);
        List ls = vtd.select(id);

        request.setAttribute("view", ls);
        //ViewTimingsDAO vtd= new ViewTimingsDAOImpl(con);
        if (idUser != null) {
            hs.setAttribute("msg", " Click Here To Give Feedback");
            hs.setAttribute("msg1", " Click Here To Get Feedback From different Users");

            return mapping.findForward(SUCCESS);
        } else {
            return mapping.findForward(SUCCESS);
        }
    }
}
