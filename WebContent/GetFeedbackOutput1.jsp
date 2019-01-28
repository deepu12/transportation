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
                  <div class="str_box1">
                     <div class="b_bord1">
                      <center><table border="1">

                        <tbody>
                            <thead>
                                <h2>  Feedback details from different users are :</h2>
                                <td><b>User ID</b></td>
                <td><b>Feedback description</b></td>
                </thead>


                            <c:forEach items="${requestScope.viewfeedback}" var="viewdetails">
                             <tr>



                               <td> <c:out value="${viewdetails.idUser}"/></td>
                               <td><c:out value="${viewdetails.description}"/></td>
                                 <tr>
                        </c:forEach>



                        </tbody>
                    </table></center>
                     </div>
                  </div>
               </article>
               <%@include file="common/rightLink.jsp" %>
            </div>
         </div>
       </section>
   </div>
</div>
               <%@include file="common/footer.jsp" %>