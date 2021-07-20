<%-- 
    Document   : custlist
    Created on : Mar 24, 2020, 1:56:32 PM
    Author     : mathu
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Customer List</title>
</head>
<body style="background-image: url(2010-1585299234785-2072.jpg) "> <a href="logout.jsp" style="color: yellow">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
            <br> <a href="empportal.jsp" style="color: yellow">Home</a>
</body>
<center>
    <h1  style="color: yellow">Customer List</h1>

<table border="5" align="center">
<tr>
    <td style="color: yellow">Customer Name</td>
<td style="color: yellow">Email</td>    
<td style="color: yellow">Address </td>
<td style="color: yellow">Contact</td>
<td style="color: yellow">Selected Car ID</td>
<td style="color: yellow">Date of Birth</td>

<%
try
{
Class.forName("oracle.jdbc.OracleDriver");

 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from customer order by rdate desc");
while(rs.next())
{
String F=rs.getString("fname"); 
String L=rs.getString("lname"); 
String E=rs.getString("email");
String A=rs.getString("address");
String CO=rs.getString("contact");
String D=rs.getString("dob");
String CA=rs.getString("car");
%>
<form name="CUSTOMER LIST" method="post" action="remcust.jsp">

<tr>
    <td><input type="text" name="name" value="<%out.println(F+" " +L);%>"></td>
    <td><input type="text" value="<%out.println(E);%>"></td>
<td><input type="text" value="<%out.println(A);%>"></td>
<td ><input type="text" value="<%out.println(CO);%>"></td><td ><input type="text" value="<%out.println(CA);%>"></td>
<td ><input type="text" value="<%out.println(D);%>"></td>


</tr>
 
</form>
        <%
}
%>
    </table>
    <a href="custreg.jsp" style="color: white">Add New Customer</a>
    <%
    rs.close();
    stmt.close();
    con.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }
%>
</center>

</html> 

