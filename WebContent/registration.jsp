<%-- 
    Document   : registration
    Created on : 29 Oct, 2012, 8:09:01 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="html" uri="http://struts.apache.org/tags-html"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>


<script type="text/javascript">
        function validateForm(form)
        {
            
       
            var fname=form.name.value;
            if (fname==null || fname=="")
            {
                alert("Enter first name");
                return false;
            }
            
            var lname=form.userName.value;
            if (lname==null || lname=="")
            {
                alert("username must be filled out");
                return false;
            }
             var lname=form.password.value;
            if (lname==null || lname=="")
            {
                alert("password must be filled out");
                return false;
            }
             var pno=form.contactNo.value;
               if (pno==null || pno=="")
            {
                alert("phone  no must be filled out");
                return false;
            }
            
               
            var pattern = /^\d{10}$/;
            var pattern1 = /^\d{6}$/;
            if (pattern.test(pno)) {
          
            
            } 
            else{
                alert("enter valid no");
                return false;
            }  
            
           
            
            
             var dropdownValue=document.getElementById("idRole").value;
            if(dropdownValue==0){
                alert("Please select role");
                return false;
            }
            var dropdownValue=document.getElementById("area").value;
            if(dropdownValue==0){
                alert("Please select area");
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

                        <html:form action="RegistrationAction" method="POST" onsubmit="return validateForm(this)">

                            <%@include  file="setDatasource.jsp" %>
                            <sql:query var="state" dataSource="${dataSource}" sql="select idarea,areaname from areas">
                            </sql:query>



                            <center> <table border="1">
                                    <h2>
                                        welcome to registration
                                    </h2>
                                    <tbody>


                                        <tr>
                                            <td>NAME </td>
                                            <td><html:text  property="name" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>USERNAME</td>
                                            <td><html:text property="userName" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>PASSWORD</td>
                                            <td><html:password property="password" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>CONTACTNO</td>
                                            <td><html:text property="contactNo" value="" /></td>
                                        </tr>
                                        <tr>
                                            <td>ROLLNAME</td>
                                            <td><html:select property="idRole">
                                                    <option value="1">admin</option>
													<option value="2">cityemployee</option>
                                                    <html:option value="3">city Residents</html:option>

                                                </html:select></td>
                                        </tr>
                                        <tr>  <td>Area</td> <td><html:select property="area">
                                                    <html:option value=" ">Select Area</html:option>
                                                    <c:forEach  items="${state.rowsByIndex}" var="state">
                                                        <html:option value="${state[0]}">${state[1]}</html:option>
                                                    </c:forEach>
                                                </html:select></td></tr>
                                    </tbody>

                                </table> </center>  <br/><center> <input type="submit" value="submit" /></center>

                        </html:form>



                    </article>
                    <%@include file="common/rightLink.jsp" %>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="common/footer.jsp" %>