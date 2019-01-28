<%--
    Document   : CityEmps
    Created on : 30 Oct, 2012, 5:28:12 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="images/icon.ico" />
        <link href="style/styles.css" rel="stylesheet" type="text/css" />
        <title>get feedback2</title>
    </head>
    <body>
         <%@include file="/common/header.jsp" %>
        <%@include file="/common/menu.jsp" %>
         <%-- <%@include file="/common/SideView.jsp" %> --%>
         <html:javascript formName="GetFeedbackActionForm"/>
        <div id="mainPanel">
            <html:form method="POST" action="GetFeedbackAction" onsubmit="return validateGetFeedbackActionForm(this);">
                <center><table border="0">
                        <thead>
                            <tr>
                        <h2> Feel Free To GET Feedback</h2>
                        </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Feedback About</td>
                                <td><html:select property="feedbackAbout">
                                         <html:option value="">---select feedback topic---</html:option>
                                        <html:option value="trafficflow">Traffic Flow</html:option>
                                        <html:option value="potholes">Pot Holes</html:option>
                                        <html:option value="obstruction">Obstruction</html:option>
                                    </html:select></td>
                            </tr>


                        </tbody>
                    </table><br><html:submit property="submit" value="Submit"/></center>
                </html:form>
                </div>
         <%@include file="/common/footer.jsp" %>
                </body>
</html:html>