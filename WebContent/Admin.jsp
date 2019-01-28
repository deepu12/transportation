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
                  <div class="str_box1">
                     <div class="b_bord1">
                       

                <center> <table border="1">
                        <h2>
                            welcome 
                        </h2>
                        <h2> ${requestScope.msg}</h2>

                    </table>
                </center>  <br/>
                <center> 
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