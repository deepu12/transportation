

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



<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>
<div class="block3">
    <div class="main">
        <section id="content">
            <div class="container_24">
                <div class="wrapper">
                    <article class="grid_16">
<h2> ${requestScope.saved}</h2>
                        <center><table border="5">

                                <tbody>
                                <thead>
                                <h2>  Feedback details from different users are :</h2>
                                <td><b> User Name</b></td>
                                <td><b> <center>description</center></b></td>  
                                </thead>


                                <c:forEach items="${requestScope.viewfeedback}" var="viewdetails">
                                    <tr>


                                    <input type="hidden" name="userid" value="${viewdetails.idUser}" size="1"/>
                                    <td><c:out value="${viewdetails.username}"/></td>
                                    <td><c:out value="${viewdetails.description}"/></td>
                                    <td><input type="hidden" name="userid" value="${viewdetails.feedbackId}" size="1"/></td>
                                    
                                      <td><a href="GiveFeedbackReply.do?feedbackId=${viewdetails.feedbackId}" class="red">Click here to Give Reply</a></td>
                                  
                                    
                                    </c:forEach>



                                    </tbody>
                            </table></center>

                    </article>
                    <%@include file="common/rightLink.jsp" %>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="common/footer.jsp" %>