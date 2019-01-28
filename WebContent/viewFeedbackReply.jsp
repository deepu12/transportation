

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
                        <form action="saveReply.do" method="post">
                            <center><table border="5">

                                    <tbody>
                                    <thead>
<c:if test="${empty requestScope.viewfeedback}">
                                     No REsponse



                                    </c:if>

               
                                        <c:forEach items="${requestScope.viewfeedback}" var="viewdetails">
                                            <tr>
                                                <td class="red">Topic Name</td> <td><c:out value="${viewdetails.feedbackAbout}"/></td></tr>
                                            <tr> <h2><td class="red">Feedback</h2></td> <td><c:out value="${viewdetails.description}"/></td></tr>
                                        <tr>
                                                <td class="red">Posted By</td> <td><c:out value="${viewdetails.username}"/></td></tr>
                                            <tr> <h2><td class="red">Response</h2></td> <td><c:out value="${viewdetails.answer}"/></td></tr>
                                           <tr>
                                                <td class="red">Replied By</td> <td><c:out value="${viewdetails.repliedby}"/></td></tr>
                                             </c:forEach>



                                    </tbody>
                                </table></center>
                        </form>
                    </article>
                    <%@include file="common/rightLink.jsp" %>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="common/footer.jsp" %>