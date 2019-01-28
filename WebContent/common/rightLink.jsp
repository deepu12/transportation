<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${sessionScope.idrole==1}">
          <h3>Activities</h3>
        <li><a href="employeeReg.jsp">Employee Registration</a></li>
       <li><a href="addAreas.jsp">Add Areas</a></li>
         <li><a href="GetFeedback1.jsp">Get Feedback</a></li>
        
    </c:when>
    <c:when test="${sessionScope.idrole==2}">
        <article class="grid_7 prefix_1">

            <ul class="list2 b_bord1">
                <h3>Activities</h3>
                <li><a href="employeeReg.jsp">Employee Registration</a></li>
                <li><a href="addAreas.jsp">Add Area</a></li>
                <li><a href="GetFeedback1.jsp">Get Feedback</a></li>
                

            </c:when>
            <c:when test="${sessionScope.idrole==3}">
                <article class="grid_7 prefix_1">

                    <ul class="list2 b_bord1">
                        <h3>Activities</h3>
                         <li><a href="AddVehicleInfo.jsp">Add Vehicle Info</a></li>
                        <li><a href="UpdateTimings.jsp">Add Timing</a></li>
                        <li><a href="GetFeedback1.jsp">Get Feedback</a></li>
                        
                       
                        <li><a href="Feedback1.jsp">Give Response</a></li>


                    </c:when>
                </c:choose>
            </ul>

        </article>