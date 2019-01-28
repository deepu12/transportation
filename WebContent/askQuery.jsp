<html xmlns="http://www.w3.org/1999/xhtml">
    <%@taglib prefix="html" uri="http://struts.apache.org/tags-html" %>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>E-Resource Technology</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="http://fonts.googleapis.com/css?family=Arvo" rel="stylesheet" type="text/css" />
        <link href="style/style.css" rel="stylesheet" type="text/css" media="screen" />
        <%@taglib prefix="html" uri="http://struts.apache.org/tags-html" %>

        <%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
        <script src="js/jquery-1.3.2.js" type="text/javascript"></script>

        <script src="js/jquery-1.3.2.js" type="text/javascript"></script>

        <script type="text/javascript">
            window.history.forward();
            function noBack() {  window.history.forward(); }
        </script>


        <script type="text/javascript">

            function callMe(professor_Id,cate)
            {

                var xmlhttp;

                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {

                        document.getElementById(professor_Id).innerHTML=xmlhttp.responseText;
                    }
                }

                xmlhttp.open("POST","getProfessors.jsp?collegeId="+cate.value,true);
                xmlhttp.send();

            }
        </script>








    </head>
    <body onload=" noBack();" onunload="">
        <div id="wrapper">

            <%@include file="common/header.jsp" %>
            <div id="page">
                <div id="page-bgtop">
                    <div id="page-bgbtm">
                        <div id="content">
                            <%@include  file="setDatasource.jsp" %>
                            <sql:query var="state" dataSource="${dataSource}" sql="select college_Id,college_Name from College">
                            </sql:query>

                            <html:html>
                                <html:form action="askQuery">
                                    <h3>Ask Query</h3>
                                    <table>

                                        <tr>
                                            <td>Query</td>
                                            <td><html:textarea property="query" value="">
                                                </html:textarea></td>
                                        </tr>


                                        <tr>
                                            <td> Colleges name:<em class="mandatory">*</em></td>


                                        </tr>
                                        <tr>
                                            <td>   <html:select property="collegeId" onchange="callMe('professor_Id',this)" >
                                                    <html:option value=" ">---Select college---</html:option>
                                                    <c:forEach  items="${state.rowsByIndex}" var="state">
                                                        <html:option value="${state[0]}">${state[1]}</html:option>
                                                    </c:forEach>
                                                </html:select>
                                            </td>
                                        </tr>


                                        <tr>

                                            <td> Professors name:<em class="mandatory">*</em></td>

                                            <td>
                                                <html:select property="professor_Id" styleId="professor_Id" multiple="true">
                                                    <html:option value="">---Select professor---</html:option>
                                                </html:select>
                                            </td>


                                        </tr>

                                        <tr>
                                                    <td align="center" colspan="2"><html:submit property="submit" value="submit"/>
                                                        <html:reset property="reset" value="Clear"/></td>

                                                </tr>









                                    </table>


                                </html:form>


                            </html:html>
                        </div>

                        <!-- end #content -->
                  <%--     <%@include file="common/studentSideView.jsp" %>
					--%>
                        <div style="clear: both;">&nbsp;</div>
                    </div>
                </div>
            </div>

            <%@include file="common/footer.jsp" %>
        </div>

    </body>
</html>





