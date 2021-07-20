<%-- 
    Document   : carlist
    Created on : 19 Mar, 2020, 1:53:43 PM
    Author     : dolly
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Car List</title>
</head>
<body style="background-image: url(jaguar-vision-gran-turismo-coupe-concept_100721451.jpg) "> <a href="logout.jsp" style="color: white ; allign: right">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
            <br> <a href="adminportal.jsp" style="color: white">Home</a>
</body>
<center>
    <h1>Car Stock List</h1>

<table border="2" align="center">
<tr>
    <td style="color: white">Car ID</td>
<td style="color: white">Company</td>
<td style="color: white">Type</td>
<td style="color: white">Model No.</td>
<td style="color: white">Price</td>
<td style="color: white">VIEW ALL</td>
<td style="color: white">ACTION</td>
</tr>
<%
try
{
Class.forName("oracle.jdbc.OracleDriver");

 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from carlist order by Company");
while(rs.next())
{
    String I=rs.getString("ID"); 
String C=rs.getString("COMPANY"); 
String T=rs.getString("TYPE");
String M=rs.getString("MODEL");
String P=rs.getString("PRICE");
%><form name="Carlist" method="post" action="adcarcat.jsp">


<tr>
    <td><input type="text" name="ID" value="<%out.println(I);%>"></td>
    <td><input type="text"value="<%out.println(C);%>"></td>
<td><input type="text"value="<%out.println(T);%>"></td>
<td ><input type="text"value="<%out.println(M);%>"></td>
<td ><input type="text"value="<%out.println(P);%>"></td> <td><input type="submit" value=" More Details"></td>

<form name="Carlist" method="post" action="remcar.jsp">
   <td><input type="submit" value="Remove Entry"></td>
</form>
</tr>
 
</form>
        <%
}
%>
    </table>
    <a href="addcar.jsp" style="color: white">Add New Car</a>
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

