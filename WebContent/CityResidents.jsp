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
<script type="text/javascript">
        function validateForm(form)
        {
          
       
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

        }
    </script>

<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>
<div class="block3">
    <div class="main">
        <section id="content">
            <div class="container_24">
                <div class="wrapper">
                    <article class="grid_16">

                        <%@include  file="setDatasource.jsp" %>
                        <sql:query var="state1" dataSource="${dataSource}" sql="select idarea,areaname from areas">
                        </sql:query>
                        <html:form  action="CityResidentsAction" method="POST" onsubmit="return validateForm(this)">
                            <center><table border="1">



                                    <thead>
                                        <tr>
                                    <h2>WELCOME TO CITY RESIDENTS</h2>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>From Station</td>
                                            <td><html:select property="fromStation" styleId="fromStation">
                                                    <html:option value=" ">---Select From Station---</html:option>
                                                    <c:forEach  items="${state1.rowsByIndex}" var="state">
                                                        <html:option value="${state[0]}">${state[1]}</html:option>
                                                    </c:forEach>
                                                </html:select></td>
                                        </tr>
                                        <tr>
                                            <td>To Station</td>
                                            <td><html:select property="toStation" styleId="toStation">
                                                    <html:option value=" ">---Select From Station---</html:option>
                                                    <c:forEach  items="${state1.rowsByIndex}" var="state1">
                                                        <html:option value="${state1[0]}">${state1[1]}</html:option>
                                                    </c:forEach>
                                                </html:select></td>
                                        </tr>
                                        <tr>
                                            <td>Vehicle Type</td>
                                            <td><html:select  property="vehicleType" styleId="vehicleType">
                                                    <html:option value="">---select vehicle type---</html:option>
                                                    <html:option value="BUS">BUS</html:option>
                                                    <html:option value="CAB">CAB</html:option>
                                                    <html:option value="AUTO">AUTO</html:option>
                                                </html:select></td>
                                        </tr>
                                    </tbody>
                                </table><br>
                                <html:submit value="submit" /></center>
                            </html:form>



                    </article>
                    <%@include file="common/rightLink.jsp" %>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="common/footer.jsp" %>