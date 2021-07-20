<%-- 
    Document   : logout
    Created on : Mar 24, 2020, 6:08:30 PM
    Author     : mathu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
       HttpSession session1= request.getSession(false);
                   session1.setAttribute("userid", null);
                   session1.invalidate();
                   response.sendRedirect("index.html");
        %>
    </body>
</html>
