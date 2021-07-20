<%-- 
    Document   : adminportal
    Created on : 19 Mar, 2020, 1:38:28 PM
    Author     : dolly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(13660.jpg) ">
        <a href="logout.jsp" style="color: white">Logout</a>
        
        
        <%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("Admin.jsp");
            }
            
            %>
        <table style="width:100%" align="center">
            
            
  <tr>
    <th><a href="emplist.jsp"><h1 style="color: red">Employee List</h1> </a></th></tr>
     <tr><th><a href="carlist.jsp"><h1 style="color: red">Car List</h1> </a><br></th>

        </tr>
    </body>
</html>
