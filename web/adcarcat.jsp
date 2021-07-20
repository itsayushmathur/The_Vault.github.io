<%-- 
    Document   : carcat
    Created on : 19 Mar, 2020, 1:54:01 PM
    Author     : dolly
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Car Catalog</title>
    </head>
    <body> <a href="logout.jsp">Logout</a><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %> <a href="carlist.jsp" >Back</a>
       
    </body>
    <center>
    <h1>Car Details</h1>

<table border="2" align="center">
<tr>
<td>Car ID</td>
<td>Company</td>
<td>Type</td>
<td>Model No.</td>
<TD>PRICE</TD>
<td>ARAI Mileage</td>
<td>Fuel Type  </td>
<td> Engine Displacement (cc) </td>
<td>Seating Capacity </td>
<td>TransmissionType  </td><td>Fuel Tank Capacity </td><td> Airbag </td><td>Emission Norm Compliance </td>


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
String am=rs.getString("AM");
String ft=rs.getString("FT");String ed=rs.getString("ED");String sc=rs.getString("SC");
String tt=rs.getString("TT");String ftc=rs.getString("FTC");String a=rs.getString("A");
String enc=rs.getString("ENC");

%>


<tr>
    <td><%out.println(I);%></td>
    <td><%out.println(C); %></td>
<td><%out.println(T); %></td>
<td ><%out.println(M); %></td>
<td ><%out.println(P); %></td>
<td ><%out.println(am); %></td><td ><%out.println(ft); %></td><td ><%out.println(ed); %></td><td ><%out.println(sc); %></td>
<td ><%out.println(tt); %></td><td ><%out.println(ftc); %></td><td ><%out.println(a); %></td>
<td ><%out.println(enc); %></td>

</tr>
 

        <%
}
%>
    </table>
   
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


</html>
