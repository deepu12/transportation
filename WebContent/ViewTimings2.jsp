<%--
    Document   : CityResidents
    Created on : 31 Oct, 2012, 3:43:24 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">



<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
        <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



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

   <h2> ${requestScope.msg2}</h2>
            <center>
                <h2>Timing Details</h2>
                <table border="1">

                    <thead>
                        <tr>

                            <th>departure time(In HH:MM)</th>
                            <th>arrival time(In HH:MM)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${requestScope.view}" var="viewdetails" >
                            <tr>
                                <td><c:out value="${viewdetails.departureTime}"/></td>
                                <td><c:out value="${viewdetails.arrivalTime}"/></td>
                            </tr>
                        </c:forEach>


                    </tbody>


                </table>
                <c:choose>
                        <c:when test="${sessionScope.vehicleType=='CAB'}">
                           <h2>CABS ARE AVAILABLE AT ANY TIME</h2>
                        </c:when>

                        <c:when test="${sessionScope.vehicleType=='AUTO'}">
                            <h2>AUTOS ARE AVAILABLE AT ANY TIME</h2>
                        </c:when>

                    </c:choose>
                <br> <a href="Feedback1.jsp">${msg}</a><br><br>
                <a href="GetFeedback1.jsp">${msg1}</a>


            </center>

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