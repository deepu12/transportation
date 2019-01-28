
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="html" uri="http://struts.apache.org/tags-html"%>


    <%@include file="common/header.jsp" %>
<%@include file="common/menu.jsp" %>
<div class="block3">
   <div class="main">
      <section id="content">
         <div class="container_24">
            <div class="wrapper">
               <article class="grid_16">
                
                    <script type="text/javascript">
        function validateForm(form)
        {
            
       
           
            var lname=form.userName.value;
            if (lname==null || lname=="")
            {
                alert("username must be filled out");
                return false;
            }
             var fname=form.password.value;
            if (fname==null || fname=="")
            {
                alert("Enter password");
                return false;
            }
            
            
        }
                        </script>

                         
               <h2> ${requestScope.msg}</h2>
        <html:form  action="LoginAction" method="POST" onsubmit="return validateForm(this)">
            <center><table>
                <h2>User Login</h2>
                <tr>
                    <td>USER NAME</td>
                    <td><html:text property="userName" value="" /></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td><html:password property="password" value="" /></td>
                </tr>
                </table>
                    <html:submit value="LOGIN" />

           
            <div id="quots"><p>"It include information about public transportation options, schedules, fares...."</p></div>
       </center>  </html:form>



                  

                
               </article>
             
            </div>
         </div>
       </section>
   </div>
</div>
               <%@include file="common/footer.jsp" %>