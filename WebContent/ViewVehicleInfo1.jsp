<%--
    Document   : CityResidents
    Created on : 31 Oct, 2012, 3:43:24 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

        <title>viewvehicleinfo1</title>
        <link href="style/styles.css" rel="stylesheet" type="text/css" />
        <link rel="icon" href="images/icon.ico" />
        <script type="text/javascript" src="iepngfix_tilebg.js"></script>
        <script type="text/javascript" src="iepngfix.js"></script>

    </head>
    <body>
     <%@include file="/common/header.jsp" %>
       <c:if test="${sessionScope.iduser!=null}">


           <%@include file="/common/menu.jsp" %>
       </c:if>
      <%--  <%@include file="/common/SideView.jsp" %> --%>

        <div id="mainPanel">


            <center>
                <h2>Vehicle Info Details</h2>
                    <table border="1">


                    <thead>
                        <tr>
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
                    <tbody>


                        <c:forEach items="${requestScope.viewvehicleinfo}" var="viewdetails" >
                            <tr>
                                <td><c:out value="${viewdetails.idVehicleInfo}"/></td>
                                <td><c:out value="${viewdetails.fromStation}"/></td>
                                <td><c:out value="${viewdetails.toStation}"/></td>
                                <td><c:out value="${viewdetails.duration}"/></td>
                                <td><c:out value="${viewdetails.distance}"/></td>

                                <td><c:out value="${viewdetails.fare}"/></td>
                                <td><c:out value="${viewdetails.halts}"/></td>
                                <td><c:out value="${viewdetails.vehicleType}"/></td>
                                <c:set var="vehicleId" scope="request" value="${viewdetails.idVehicleInfo}"/>
                                <c:set  var="vehicleType" scope="session" value="${viewdetails.vehicleType}"/>
                            <td> <html:link action="ViewTimingsAction1?com=${requestScope.vehicleId}">view timings</html:link></td>
                              </tr>
                        </c:forEach>

                    </tbody>

                    </table>

                
                </center>

        </div>

         <c:if test="${sessionScope.iduser!=null}">


           <%@include file="/common/footer.jsp %>
       </c:if>


    </body>
</html:html>
