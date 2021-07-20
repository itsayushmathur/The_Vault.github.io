<%-- 
    Document   : empportal
    Created on : 19 Mar, 2020, 1:03:14 PM
    Author     : dolly
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url(black-and-gray-dslr-camera-2317408.jpg) "> <a href="logout.jsp" style="color: white">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
       
        <table style="width:125%">
            
            <br><br><br><br><br><br>
  <tr>
    <th><a href="custreg.jsp"><h1 style="color: white">Customer Registration</h1> </a></th></tr>
  <th><a href="custlist.jsp"><h1 style="color: white">Customer List</h1> </a></th></tr>
     <tr><th><a href="carcat.jsp"><h1 style="color: white">Car Catalog</h1> </a><br></th>

        </tr>
    </body>
</html>
