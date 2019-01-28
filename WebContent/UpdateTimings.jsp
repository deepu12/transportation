<%--
    Document   : UpdateTimings
    Created on : 1 Nov, 2012, 1:56:51 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>


<script type="text/javascript">
        function validateForm(form)
        {
          
       
           var dropdownValue=document.getElementById("idVehicleInfo").value;
          
            if(dropdownValue==0){
                alert("Please select vehicle");
                return false;
            }
            
              var fname=form.departureTime.value;
            if (fname==null || fname=="")
            {
                alert("Enter departureTime");
                return false;
            }
            
            var lname=form.arrivalTime.value;
            if (lname==null || lname=="")
            {
                alert("arrivalTime must be filled out");
                return false;
            }
  }
    </script>






<div class="block3">
    <div class="main">
        <section id="content">
            <div class="container_24">
                <div class="wrapper">
                    <article class="grid_16">
                        <div class="str_box1">
                            <div class="b_bord1">
                                <%@include  file="setDatasource.jsp" %>
                                <sql:query var="vehicleId" dataSource="${dataSource}" sql="select idVehicleInfo from vehicleinfo">
                                </sql:query>
                                ${requestScope.msg1}
                                <html:form action="UpdateTimingsAction" method="POST" onsubmit="return validateForm(this)">
                                    <center><table border="1">
                                            <h2>Vehicle Timings </h2>
                                            <tbody>
                                                <tr>
                                                    <td>Vehicle Number</td>
                                                    <td><html:select property="idVehicleInfo" styleId="idVehicleInfo">
                                                            <html:option value="0">-----Select Vehicle Number-----</html:option>
                                                            <c:forEach  items="${vehicleId.rowsByIndex}" var="state">
                                                                <html:option value="${state[0]}">${state[0]}</html:option>
                                                            </c:forEach>
                                                        </html:select></td>
                                                </tr>
                                                <tr>
                                                    <td>Departure Time</td>
                                                    <td><html:text property="departureTime"/></td>
                                                </tr>
                                                <tr>
                                                    <td>Arrival Time</td>
                                                    <td><html:text property="arrivalTime"/></td>
                                                </tr>
                                            </tbody>
                                        </table><br><html:submit property="submit" value="Submit"/></center>
                                    </html:form>


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