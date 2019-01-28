<%--
    Document   : CityResidents
    Created on : 31 Oct, 2012, 3:43:24 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

                                <center>
                                    <h2>Vehicle Info Details</h2>
                                    <c:if test="${empty requestScope.viewvehicleinfo}">
                                        No Information



                                    </c:if>
 <table border="2">
<thead>
                   <c:if test="${!empty requestScope.viewvehicleinfo}">                              <tr>
                                                    <th>vehicleid</th>
                                                    <th>fromstation</th>
                                                    <th>tostation</th>
                                                    <th>duration(In HH:MM)</th>
                                                    <th>distance(In KM)</th>
                                                    <th>fare(In Rs/-)</th>
                                                    <th>halts</th>
                                                    <th>vehicletype</th>
                                                    <th>timings</th>
                                                </tr>
                                            </thead>
 <div id="quots"><p>"Here you can know timings by clicking on 'viewtimings'"</p></div>
</c:if>

                                    <c:forEach items="${requestScope.viewvehicleinfo}" var="viewdetails" >

                                       


                                            
                                            <tbody>

                                                <tr>
                                                    <td ><c:out value="${viewdetails.idVehicleInfo}"/></td>
                                                    <td><c:out value="${viewdetails.fromStation}"/></td>
                                                    <td><c:out value="${viewdetails.toStation}"/></td>
                                                    <td><c:out value="${viewdetails.duration}"/></td>
                                                    <td><c:out value="${viewdetails.distance}"/></td>

                                                    <td><c:out value="${viewdetails.fare}"/></td>
                                                    <td><c:out value="${viewdetails.halts}"/></td>
                                                    <td><c:out value="${viewdetails.vehicleType}"/></td>
                                                    <c:set var="vehicleId" scope="request" value="${viewdetails.idVehicleInfo}"/>
                                                    <c:set  var="vehicleType" scope="session" value="${viewdetails.vehicleType}"/>
                                                    <td class="red"> <html:link action="ViewTimingsAction2?com=${requestScope.vehicleId}">view timings</html:link></td>
                                                    </tr>
                                            </c:forEach>

                                        </tbody>

                                    </table>

                                   
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