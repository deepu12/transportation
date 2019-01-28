<%--
    Document   : CityEmps
    Created on : 30 Oct, 2012, 5:28:12 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
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
       
            var fname=form.description.value;
            
            if (fname==null || fname=="")
            {
                alert("Enter description");
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
                        <div class="str_box1">
                            <div class="b_bord1">
                                <h2> ${requestScope.msg2}</h2>
                                <html:form method="POST" action="FeedbackAction" onsubmit="return validateForm(this)">
                                    <%@include  file="setDatasource.jsp" %>
                                    <sql:query var="state" dataSource="${dataSource}" sql="select idarea,areaname from areas">
                                    </sql:query>
                                    <center><table border="1">
                                            <thead>
                                                <tr>
                                            <h2> Feel Free To Give Feedback</h2>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr> 
                                                    <td>Area</td> <td>
                                                        <html:select property="area" styleId="area">
                                                            <html:option value="0">Select Area</html:option>
                                                            <c:forEach  items="${state.rowsByIndex}" var="state">
                                                                <html:option value="${state[0]}">${state[1]}</html:option>
                                                            </c:forEach>
                                                        </html:select></td>
                                                </tr> 
                                                <tr>
                                                    <td>Feedback About</td>
                                                    <td><html:select property="feedbackAbout" styleId="feedbackAbout">
                                                            <html:option value="0">...Select Topic...</html:option>
                                                            <html:option value="trafficflow">TraficFlow</html:option>
                                                            <html:option value="potholes">PotHoles</html:option>
                                                            <html:option value="obstruction">Obstruction</html:option>
                                                        </html:select></td>
                                                </tr>
                                                <tr>
                                                    <td>Description</td>
                                                    <td><textarea name="description" rows="5" cols="20">
                                                        </textarea></td>
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