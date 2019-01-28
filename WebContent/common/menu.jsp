<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="block1">
   <div class="main">
      <header>
         <h1><a class="logo" href="index.html">Transportation&nbsp;Portal</a></h1>
         <nav>
             <ul class="sf-menu">
             <c:choose>
        <c:when test="${sessionScope.idrole==null}">


               <li><a href="Home1.jsp">Home</a></li>
               <li><a href="Login.jsp">Login</a></li>
               <li><a href="CityResidents.jsp">Visitor</a></li>
               <li><a href="registration.jsp">Register</a></li>
               <li class="l_item"><a href="contactUs.jsp">Contacts</a></li>

             </c:when>

                 <c:when test="${sessionScope.idrole==1}">
                    <li><a href="logout.jsp">Logout</a></li>
   <li><div class="blank"></div></li>
   <li><a href="#">About&nbsp;Us</a></li>
   <li><div class="blank"></div></li>
   <li><a href="#">Conact&nbsp;Us</a></li>


                 </c:when>
        <c:when test="${sessionScope.idrole==2}">

                    <li><a href="logout.jsp"><span><b>Logout</b></span></a></li>
   <li><div class="blank"></div></li>
   <li><a href="#">About&nbsp;Us</a></li>
   <li><div class="blank"></div></li>
   <li><a href="contactUs.jsp">Conact&nbsp;Us</a></li>



                 </c:when>
        <c:when test="${sessionScope.idrole==3}">

                    <li><a href="logout.jsp"><span><b>Logout</b></span></a></li>
   <li><div class="blank"></div></li>
   <li><a href="#"><span><b>About&nbsp;Us</b></span></a></li>
   <li><div class="blank"></div></li>
   <li><a href="contactUs.jsp"><span><b>Conact&nbsp;Us</b></span></a></li>

                 </c:when>
 </c:choose>
         </ul>





         </nav>
         <div class="clear"></div>
     </header>
   </div>
</div>