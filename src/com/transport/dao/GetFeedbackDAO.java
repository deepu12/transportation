/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.transport.dao;

import com.transport.bean.FeedbackBean;
import com.transport.bean.GetFeedbackBean;
import java.util.List;

/**
 *
 * @author trainee
 */
public interface  GetFeedbackDAO {

    public  List select(GetFeedbackBean gfb);
      public List feedback(FeedbackBean fbb);
      public List reply(GetFeedbackBean gfb);
       public List viewreply(GetFeedbackBean gfb);
}
