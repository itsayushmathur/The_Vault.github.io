<%-- 
    Document   : addcar
    Created on : Mar 23, 2020, 2:51:50 PM
    Author     : mathu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
   <body style="background-image: url(brandon-murphy-audi17b.jpg) ">  <a href="logout.jsp" style="color: white">LOGOUT</a> <br><%
            HttpSession session1= request.getSession(false);
            if(session1.getAttribute("userid")==null)
            {
                response.sendRedirect("index.html");
            }
            
            %> <a href="adminportal.jsp" style="color: white">HOME</a>
     <center>
      
<h1 style="color: white">New Car Entry Form</h1>
        <form action="addcardb.jsp" method="post">
			<table style="with: 100%">
                           
				<tr>
					<td style="color: white">Car Company</td>
                                        <td><select name="company">
                                        <%
Class.forName("oracle.jdbc.OracleDriver");

 Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ayush","ayush");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("select * from company1 order by Company");
while(rs.next())
{
    String I=rs.getString("company"); 
%>
					
                                             <option value="<%out.print(I);%>"><%out.print(I);%></option>
                                             <%}%>  </select></td>
				</tr>
                            
				 <tr>
					<td style="color: white">Type</td>
					<td><select name="category">
                                             <option value="Hacthback">Hatchback</option>
                                                 <option value="SUV">SUV</option>
                                                 <option value="Sports">Sports</option>
                                                  <option value="Sedan">Sedan</option>
                                            </select></td>
				</tr>
				<tr>
					<td style="color: white">Model</td>
					<td><input type="text" name="model" required/></td>
				</tr>
					
				
				<tr>
					<td style="color: white">ID</td>
					<td><input type="text" name="ID" required/></td>
				</tr>
                                <tr>
					<td style="color: white">PRICE</td>
                                        <td><input type="text" name="PRICE" required /></td>
				</tr>
                        <tr>
					<td style="color: white">ARAI Mileage</td>
					<td><input type="text" name="AM" required/></td>
				</tr>
                                <tr>
					<td style="color: white">Fuel Type </td>
					<td><input type="text" name="FT" required/></td>
				</tr>
                                <tr>
					<td style="color: white">Engine Displacement (cc) </td>
					<td><input type="text" name="ED" required/></td>
				</tr>
                                <tr>
					<td style="color: white">Seating Capacity </td>
					<td><input type="text" name="SC" required/></td>
				</tr>
                                <tr>
					<td style="color: white">TransmissionType </td>
					<td><input type="text" name="TT" required/></td>
				</tr>
                                <tr>
					<td style="color: white">Fuel Tank Capacity </td>
					<td><input type="text" name="FTC" required/></td>
				</tr>
                               
                                <tr>
					<td style="color: white">Airbag </td>
					<td><input type="number" name="A" required/></td>
				</tr>
                                <tr>
					<td style="color: white">Emission Norm Compliance</td>
					<td><input type="text" name="ENC" required/></td>
				</tr>
                                
                       </table>
			<input type="submit" value="ADD DATA" /></form> </center>
</body>
</html>
