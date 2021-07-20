<%-- 
    Document   : adlogin
    Created on : 15 Feb, 2020, 3:20:40 PM
    Author     : dolly
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adlogin</title>
    </head>
    <body>
        <h6>print</h6>
        <%
            String usd1=request.getParameter("userid1");
            String pass1=request.getParameter("pwd1");
             
            %>
            <h4><%out.println(usd1+" "+pass1);%></h4>
        <%
            try
            {
                if(usd1!=null)
                {
                 Class.forName("oracle.jdbc.OracleDriver");
                  
                 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
                 
                 String s1="select * from admin1 where userid1=? and password1=?";
                 PreparedStatement psm=con.prepareStatement(s1);
                 psm.setString(1,usd1);
                 psm.setString(2,pass1);
                 ResultSet rs=psm.executeQuery();
                 
                 if(!rs.next())
                 {
                     response.sendRedirect("wrongad.html");
                 }
                 else
                 {
                   HttpSession session1= request.getSession(true);
                   session1.setAttribute("userid", usd1);
                     RequestDispatcher dispatcher= request.getRequestDispatcher("/adminportal.jsp");
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



