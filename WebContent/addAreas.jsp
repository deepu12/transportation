<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="html" uri="http://struts.apache.org/tags-html"%>


<%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>

<script type="text/javascript">
        function validateForm(form)
        {
            
       
            var fname=form.areaName.value;
            if (fname==null || fname=="")
            {
                alert("Enter area name");
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

                        <h2> ${requestScope.area}</h2>
                        <html:form action="AdminAction" method="POST" onsubmit="return validateForm(this)">

                            <center> <table border="1">

                                    <tbody>
                                        <tr><h3>Add Areas</h3></tr>

                                    <tr>
                                        <td>Area </td>
                                        <td><html:text property="areaName" value=""/></td>
                                    </tr>

                                    </tbody>

                                </table>
                            </center>  <br/>
                            <center> <html:submit value="Submit" /></center>

                        </html:form>
                    </article>

                    <%@include file="common/rightLink.jsp" %>
                </div>
            </div>
        </section>
    </div>
</div>
<%@include file="common/footer.jsp" %>