<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>TemplateWorld - Solitude</title>
        <link href="style/styles.css" rel="stylesheet" type="text/css" />
        <link rel="icon" href="images/icon.ico" />
        <script type="text/javascript" src="iepngfix_tilebg.js"></script>
        <script type="text/javascript" src="iepngfix.js"></script>
    </head>

    <body>
        <div id="mainWrap">
            <div id="mainPanel">
                <%@include file="/common/menu.jsp" %>
                <div id="headBg"><h1>solitude</h1></div>
                <div id="loginPanel"><table>
                        <form name="LoginForm" action="LoginAction.do" method="post">
                            <h2>User Login</h2>
                            <tr>
                                <td>USER NAME</td>
                                <td><input type="text" name="userName" value="" /></td>
                            </tr>
                            <tr>
                                <td>PASSWORD</td>
                                <td><input type="password" name="password" value="" /></td>
                            </tr>
                            <div class="blank"></div>

                            <!--<input name="password" type="password" value="Password" onfocus="if(this.value=='Password')this.value=''" onblur="if(this.value=='')this.value='Password'"/>-->
                            <p>Not yet a Member? <a href="registration.jsp">Register Now</a></p>
                            <!--<a href="LoginAction.do" class="login">Login</a>-->

                            <tr><input type="submit" value="LOGIN" name="login" /></tr>
                        </form></table>
                </div>
                <div id="quots"><p>"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet consectetur adipisci velit..."</p></div>
                <div id="leftPanel">
                    <div class="about">
                        <h2>Somelines About Us</h2>
                        <h3>ltrices inh endrerit ac tempor idtellus uis quam uisque</h3>
                        <p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Nulla libero leo, suscipit acfaucibusnon.</span><br /> Etiam est. Etiam ac ipsum sed pede ultricies pretium. Nulla mi lacus, fringilla eu, pulvinar at, commodo eu, dolor. Nam porttitor viverra sapien. Pellentesque vitae augue et lorem laoreet .</p>
                        <div class="date">
                            <div class="left">Saturday, April 26, 2008&nbsp;&nbsp;|</div>
                            <div class="right"><a href="#">Read More</a></div>
                        </div>
                    </div>
                    <div class="services">
                        <h2>Our Spectrum of Services</h2>
                        <div class="pic"><a href="#">Cras turpis duis at sapien eget nulla vulputate. </a></div>
                        <p><span>Donec accumsan porta risus.</span> Vestibulum sollicitudinlibero ut semper commodo, purus enim sollicitudin nulla, dictum vehicula diam lacus at purus. In egestas. </p>
                        <h3>Services</h3>
                        <ul>
                            <li><a href="#">Nam congue quam non augue ivamus porttitor</a></li>
                            <li><a href="#" class="bottom">Jam aongue buam n augue famus</a></li>
                        </ul>
                        <p><span>Pellentesque dolor.</span> Nunc congue est in ante mattis ultrices. liquam erat volutpat. Nam congue quam non augue. </p>
                    </div>

                </div>

                <%@include file="/common/rightLink.jsp" %>


            </div>

        </div>
                <%@include file="/common/footer.jsp" %>
    </body>
</html>