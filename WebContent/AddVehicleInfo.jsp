<%-- 
    Document   : AddVehicleInfo
    Created on : 31 Oct, 2012, 10:48:14 AM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>





<script type="text/javascript">
        function validateForm(form)
        {
            
       
            var fname=form.idVehicleInfo.value;
            if (fname==null || fname=="")
            {
                alert("Enter vehicle no");
                return false;
            }
            
            
            
               
       var dropdownValue=document.getElementById("fromStation").value;
          
            if(dropdownValue==0){
                alert("Please select from station");
                return false;
            }
            var dropdownValue=document.getElementById("toStation").value;
          
            if(dropdownValue==0){
                alert("Please select to station");
                return false;
            }
            var dropdownValue=document.getElementById("vehicleType").value;
            if(dropdownValue==0){
                alert("Please select vehicle type");
                return false;
            }
            
             var lname=form.fare.value;
            if (lname==null || lname=="")
            {
                alert("fare must be filled out");
                return false;
            }
             var lname=form.duration.value;
            if (lname==null || lname=="")
            {
                alert("duration must be filled out");
                return false;
            }
             var lname=form.distance.value;
            if (lname==null || lname=="")
            {
                alert("distance must be filled out");
                return false;
            }
            
             var lname=form.halts.value;
            if (lname==null || lname=="")
            {
                alert("halts must be filled out");
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
                                <sql:query var="state" dataSource="${dataSource}" sql="select idarea,areaname from areas">
                                </sql:query>
                                <sql:query var="state1" dataSource="${dataSource}" sql="select idarea,areaname from areas">
                                </sql:query>
                                ${requestScope.vehicleadded}
                                <html:form  action="AddVehicleAction" method="POST" onsubmit="return validateForm(this)">

                                    <center><table border="1" cellpadding="1">
                                            <thead>
                                                <tr>
                                            <h2>Add Vehicle Info</h2>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Vehicle Number</td>
                                                    <td><html:text  property="idVehicleInfo" /></td>
                                                </tr>
                                                <tr>
                                                    <td>From Station</td>
                                                    <td><html:select property="fromStation" styleId="fromStation">
                                                            <html:option value=" ">---Select From Station---</html:option>
                                                            <c:forEach  items="${state.rowsByIndex}" var="state">
                                                                <html:option value="${state[0]}">${state[1]}</html:option>
                                                            </c:forEach>
                                                        </html:select></td>
                                                </tr>
                                                <tr>
                                                    <td>To Station</td>
                                                    <td><html:select property="toStation" styleId="toStation">
                                                            <html:option value=" ">---Select to Station---</html:option>
                                                            <c:forEach  items="${state1.rowsByIndex}" var="state1">
                                                                <html:option value="${state1[0]}">${state1[1]}</html:option>
                                                            </c:forEach>
                                                        </html:select></td>
                                                </tr>
                                                <tr>
                                                    <td>Vehicle Type</td>
                                                    <td><html:select property="vehicleType" styleId="vehicleType">
                                                            <html:option value="">----select vehicle type------</html:option>
                                                            <html:option value="BUS">BUS</html:option>
                                                            <html:option value="CAB">CAB</html:option>
                                                            <html:option value="AUTO">AUTO</html:option>
                                                        </html:select>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td>Fare</td>
                                                    <td><html:text property="fare" value="" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Duration</td>
                                                    <td><html:text property="duration" value="" /></td>
                                                </tr>
                                                <tr>
                                                    <td>Distance</td>
                                                    <td><html:text property="distance" value="" /></td>
                                                </tr>
                                                <tr>
                                                    <td>No.of Halts</td>
                                                    <td><html:text property="halts" value="" /></td>
                                                </tr>
                                            </tbody>

                                        </table><br> <html:submit  property="submit" value="Submit" /></center>

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



















