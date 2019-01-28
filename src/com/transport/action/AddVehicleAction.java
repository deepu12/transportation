/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.transport.action;

import com.transport.actionform.AddVehicleActionForm;
import com.transport.bean.AddVehicleBean;
import com.transport.config.DBUtil;
import com.transport.dao.AddVehicleDAO;
import com.transport.dao.AddVehicleDAOImpl;
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
public class AddVehicleAction extends org.apache.struts.action.Action {

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
        try {

            Connection con = DBUtil.getConnection();
            HttpSession hs = request.getSession();
            String id = hs.getAttribute("iduser").toString();
            System.out.println("session id of userid is:" + id);
            AddVehicleActionForm avf = (AddVehicleActionForm) form;
            AddVehicleBean avb = new AddVehicleBean();

            avb.setIdVehicleInfo(avf.getIdVehicleInfo());
            avb.setFromStation(avf.getFromStation());
            avb.setToStation(avf.getToStation());
            avb.setDuration(avf.getDuration());
            avb.setDistance(avf.getDistance());
            avb.setHalts(avf.getHalts());
            avb.setFare(avf.getFare());
            avb.setVehicleType(avf.getVehicleType());
            avb.setIdArea(avf.getIdArea());
            avb.setAreaName(avf.getAreaName());
            avb.setIdUser(id);

            AddVehicleDAO avd = new AddVehicleDAOImpl(con);
            boolean b = avd.insert(avb);
            if (b) {
                request.setAttribute("vehicleadded", "Vehicle has been added successfully");
                //System.out.println("falg======================="+b);
                return mapping.findForward(SUCCESS);
            } else {
                request.setAttribute("msg", "enter different bus no");
                return mapping.findForward(FAILURE);
            }
        } catch (Exception e) {

            System.out.println(e);
            return mapping.findForward(FAILURE);
        }

    }
}
