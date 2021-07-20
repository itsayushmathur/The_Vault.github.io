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
    <body style="background-image: url(itl.cat_svt-wallpaper_1629942.png) "> <a href="empportal.jsp" style="color: white" >Home</a>
         <a href="logout.jsp" style="color: white">Logout</a>
     <%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %>
            
    </body>
    <center>
    <h1 style="color: white">Car Catalog</h1>

<table border="20" align="center">
<tr>
<td style="color: white">Car ID</td>
<td style="color: white">Company</td>
<td style="color: white">Type</td>
<td style="color: white">Model No.</td>
<TD style="color: white">PRICE</TD>
<td style="color: white">ARAI Mileage</td>
<td style="color: white">Fuel Type  </td>
<td style="color: white"> Engine Displacement (cc) </td>
<td style="color: white">Seating Capacity </td>
<td style="color: white">TransmissionType  </td>
<td style="color: white">Fuel Tank Capacity </td>
<td style="color: white"> Airbag </td>
<td style="color: white">Emission Norm Compliance </td>


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
    <td style="color: white"><%out.println(I);%></td>
    <td style="color: white"><%out.println(C); %></td>
<td style="color: white"><%out.println(T); %></td>
<td  style="color: white"><%out.println(M); %></td>
<td  style="color: white"><%out.println(P); %></td>
<td style="color: white" ><%out.println(am); %></td><td style="color: white" ><%out.println(ft); %></td><td  style="color: white"><%out.println(ed); %></td><td  style="color: white"><%out.println(sc); %></td>
<td style="color: white" ><%out.println(tt); %></td><td  style="color: white"><%out.println(ftc); %></td><td  style="color: white"><%out.println(a); %></td>
<td  style="color: white"><%out.println(enc); %></td>

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
<a href="custreg.jsp"  style="color: white">Click Here to Move to Registration</a>
</center>

</html> 


</html>
