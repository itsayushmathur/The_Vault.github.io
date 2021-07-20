<%-- 
    Document   : emplogin
    Created on : 15 Feb, 2020, 3:21:36 PM
    Author     : dolly
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String usd2=request.getParameter("userid2");
            
            String pass2=request.getParameter("pwd2");
            
            try
            {
                if(usd2!=null)
                {
                 Class.forName("oracle.jdbc.OracleDriver");
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
                 String s1="select * from employee1 where userid1=? and password1=?";
                 PreparedStatement psm=con.prepareStatement(s1);
                 psm.setString(1,usd2);
                 psm.setString(2,pass2);
                 ResultSet rs=psm.executeQuery();
                 if(!rs.next())
                 {
                     response.sendRedirect("wrongemp.html");
                 }
                 else
                 {HttpSession session1= request.getSession(true);
                   session1.setAttribute("userid", usd2);
                     RequestDispatcher dispatcher= request.getRequestDispatcher("/empportal.jsp");
                     dispatcher.forward(request, response);
                 }
                }
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            %>
    </body>
</html>
