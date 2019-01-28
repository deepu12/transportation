<%-- 
    Document   : failure
    Created on : 31 Oct, 2012, 1:24:04 PM
    Author     : trainee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>failure</title>
        <link href="style/styles.css" rel="stylesheet" type="text/css" />
        <link rel="icon" href="images/icon.ico" />
        <script type="text/javascript" src="iepngfix_tilebg.js"></script>
        <script type="text/javascript" src="iepngfix.js"></script>

    </head>
    <body>
          <%@include file="/common/menu.jsp" %>
        <div id="leftPanel">
                    <div class="about">
                       <h2>your action is failed<br>${requestScope.loginfail}</h2>
                       
${msg}
                    </div>
        </div>
    </body>
</html>
