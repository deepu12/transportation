<%--
    Document   : CityEmps
    Created on : 30 Oct, 2012, 5:28:12 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>



<script type="text/javascript">
    function validateForm(form)
    {
          
       
        var dropdownValue=document.getElementById("area").value;
          
        if(dropdownValue==0){
            alert("Please select area");
            return false;
        }
        var dropdownValue=document.getElementById("feedbackAbout").value;
        if(dropdownValue==0){
            alert("Please select feedbackAbout");
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
                        <%@include  file="setDatasource.jsp" %>
                        <sql:query var="state" dataSource="${dataSource}" sql="select idarea,areaname from areas">
                        </sql:query>
                        <html:form method="POST" action="GetFeedbackAction" onsubmit="return validateForm(this)">
                            <center>
                                <table border="0">
                                    <thead>

                                    </thead>
                                    <tbody>
                                        <tr><h3>View Feedbacks</h3></tr>

                                    <tr>
                                        <td>Select Area</td>
                                        <td><html:select property="area" styleId="area">
                                                <html:option value="0">---Select Area---</html:option>
                                                <c:forEach  items="${state.rowsByIndex}" var="state">
                                                    <html:option value="${state[0]}">${state[1]}</html:option>
                                                </c:forEach>
                                            </html:select></td>
                                    </tr>



                                    <tr>
                                        <td>Feedback About</td>
                                        <td><html:select property="feedbackAbout" styleId="feedbackAbout">
                                                <html:option value="0">---select feedback topic---</html:option>
                                                <html:option value="trafficflow">Traffic Flow</html:option>
                                                <html:option value="potholes">Pot Holes</html:option>
                                                <html:option value="obstruction">Obstruction</html:option>
                                            </html:select></td>
                                    </tr>


                                    </tbody>
                                </table><br><html:submit property="submit" value="Submit"/></center>
                            </html:form>

                    </article>
                    <%@include file="common/rightLink.jsp" %>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="common/footer.jsp" %>